# Laporan Penetration Testing
## Aplikasi: Poke TapTap (com.haku.taptapme)
**Tanggal:** 3 Mei 2026  
**Tester:** Abdul Manan  
**Tools:** JADX, Burp Suite, ADB, Apktool, Apksigner

---

## 1. Ringkasan Eksekutif

Penetration testing dilakukan terhadap aplikasi Android **Poke TapTap** yang dikembangkan oleh `com.haku.taptapme`. Pengujian meliputi static analysis, dynamic analysis, dan bypass mekanisme keamanan. Ditemukan **7 vulnerability** yang berhasil dieksploitasi, mulai dari hardcoded keys, SSL pinning yang lemah, hingga client-side privilege check yang mudah dibypass.

---

## 2. Metodologi

1. **Static Analysis** — Decompile APK menggunakan JADX untuk menganalisis source code
2. **Dynamic Analysis** — Intercept traffic menggunakan Burp Suite + ADB
3. **APK Patching** — Modifikasi Smali code menggunakan Apktool
4. **Runtime Testing** — Install APK yang sudah dipatch ke device via ADB

---

## 3. Temuan Vulnerability

### 3.1 Anti-Tampering Detection yang Lemah
**Severity:** High  
**File:** `com/haku/taptapme/utils/SecurityUtils.java`

Aplikasi menggunakan 3 mekanisme deteksi:
- `checkSystemState()` — deteksi root
- `verifyRuntimeEnvironment()` — deteksi Frida/Xposed
- `performDataValidation()` — native library validation

**Bukti:**
```java
if (SecurityUtils.checkSystemState()) {
    Toast.makeText(this, "System error: 0x01", 1).show();
    finish();
}
```

**Cara Bypass (Smali Patching):**

File: `smali_classes3/com/haku/taptapme/utils/SecurityUtils.smali`

```smali
# checkSystemState() → return false
.method public static checkSystemState()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

# verifyRuntimeEnvironment() → return false
.method public static verifyRuntimeEnvironment()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

# performDataValidation() → hapus "native", return true
.method public static performDataValidation(Landroid/content/Context;)Z
    .locals 1
    const/4 v0, 0x1
    return v0
.end method
```

---

### 3.2 SSL Certificate Pinning yang Mudah Dibypass
**Severity:** High  
**File:** `res/xml/network_security_config.xml`

Aplikasi mengimplementasi SSL pinning via Network Security Config dengan hardcoded certificate hash.

**Bukti:**
```xml
<network-security-config>
    <domain-config>
        <domain includeSubdomains="true">00bfc8c729f5d4d529a412b12c58ddd2.solusisiber.com</domain>
        <pin-set>
            <pin digest="SHA-256">JykS1uMRi52OlQeSpesSm5QXZJRe6ezsQKw5sPX3xAY=</pin>
            <pin digest="SHA-256">47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=</pin>
        </pin-set>
    </domain-config>
</network-security-config>
```

**Cara Bypass:**

Hapus blok `<pin-set>` dari file XML:

```xml
<network-security-config>
    <domain-config>
        <domain includeSubdomains="true">00bfc8c729f5d4d529a412b12c58ddd2.solusisiber.com</domain>
        <trust-anchors>
            <certificates src="system" />
            <certificates src="user" />
        </trust-anchors>
    </domain-config>
</network-security-config>
```

---

### 3.3 Client-Side License Validation
**Severity:** Critical  
**File:** `com/haku/taptapme/models/User.java`

License check dilakukan sepenuhnya di sisi client — server hanya mengembalikan string `"trial"` yang kemudian di-map ke `License.LEVEL_0` oleh aplikasi.

**Bukti:**
```java
setType_license(type_license.equalsIgnoreCase("trial") ? License.LEVEL_0 : License.LEVEL_1);
```

**Cara Bypass (Smali Patching):**

File: `smali_classes7/com/haku/taptapme/models/User.smali`

```smali
# Sebelum:
if-eqz v0, :cond_0
sget-object v0, ...License;->LEVEL_0:...License;
goto :goto_0
:cond_0
sget-object v0, ...License;->LEVEL_1:...License;

# Sesudah (hardcode LEVEL_1 di semua path):
if-nez v0, :cond_0
sget-object v0, ...License;->LEVEL_1:...License;
goto :goto_0
:cond_0
sget-object v0, ...License;->LEVEL_1:...License;
```

**Dampak:** Guest user mendapatkan akses Pro Trainer (Unlimited) tanpa membayar.

---

### 3.4 Client-Side Privilege Check
**Severity:** High  
**File:** `com/haku/taptapme/utils/SecurityUtils.java`

Method `verifyPrivilegeLevel()` adalah native method yang digunakan untuk memblokir akses ke Trainer Shop. Implementasi native dapat di-bypass dengan mengganti method dengan implementasi Java yang selalu return `true`.

**Bukti:**
```java
if (this.currentUser != null && !SecurityUtils.verifyPrivilegeLevel(this.currentUser)) {
    Toast.makeText(this, "Module Restriction: LEVEL_1 access required.", 1).show();
}
```

**Cara Bypass (Smali Patching):**

```smali
# Hapus "native", tambahkan implementasi yang return true
.method public static verifyPrivilegeLevel(Lcom/haku/taptapme/models/User;)Z
    .locals 1
    const/4 v0, 0x1
    return v0
.end method
```

---

### 3.5 Trial Timer Bypass
**Severity:** Medium  
**File:** `com/haku/taptapme/utils/TimerService.java`

Aplikasi membatasi guest user dengan timer 5 menit yang ketika habis akan membunuh proses aplikasi via `Process.killProcess()`.

**Bukti:**
```java
this.countDownTimer = new AnonymousClass1(300000L, 1000L, shape).start();
// 300000ms = 5 menit

public void onFinish() {
    // ...
    Process.killProcess(Process.myPid());
}
```

**Cara Bypass (Smali Patching):**

File: `smali_classes3/com/haku/taptapme/utils/TimerService$1.smali`

```smali
# Kosongkan onFinish() agar killProcess tidak dipanggil
.method public onFinish()V
    .locals 0
    return-void
.end method
```

---

### 3.6 Hardcoded Database Encryption Key
**Severity:** High  
**File:** `com/haku/taptapme/utils/DatabaseHelper.java`

Kunci enkripsi database SQLCipher ter-hardcode di dalam source code.

**Bukti:**
```java
private static final String DB_KEY = "HakuPreciousTrainerSecretKey123";
```

**Dampak:** Siapapun yang melakukan reverse engineering dapat mendekripsi database lokal aplikasi dan mengakses seluruh data yang tersimpan.

---

### 3.7 Hardcoded Guest Credentials
**Severity:** Medium  
**File:** `com/haku/taptapme/MainActivity.java`

Kredensial akun guest ter-hardcode di dalam source code.

**Bukti:**
```java
final User user = ApiHandler.login("guest@taptapme.com", "guests_password");
```

**Dampak:** Siapapun dapat login sebagai guest tanpa perlu registrasi.

---

## 4. Langkah-langkah Eksploitasi

### Step 1 — Static Analysis dengan JADX
```bash
# Extract APK
unzip Poke-TapTap.apk -o apk_extracted

# Buka JADX GUI untuk analisis source code
jadx-gui Poke-TapTap.apk
```

### Step 2 — Decompile APK dengan Apktool
```bash
apktool d Poke-TapTap.apk -o pokemon_decoded
```

### Step 3 — Edit Smali Files
File yang dimodifikasi:
| File | Perubahan |
|------|-----------|
| `SecurityUtils.smali` | Bypass root detection, frida detection, native validation, privilege check |
| `User.smali` | Hardcode license ke LEVEL_1 |
| `TimerService$1.smali` | Kosongkan onFinish() |
| `network_security_config.xml` | Hapus pin-set SSL pinning |

### Step 4 — Rebuild & Sign APK
```bash
# Rebuild
apktool b pokemon_decoded -o pokemon_patched.apk

# Generate keystore
keytool -genkey -v -keystore my.keystore -alias mykey -keyalg RSA -keysize 2048 -validity 10000

# Sign APK
apksigner sign --ks my.keystore --out pokemon_signed.apk pokemon_patched.apk
```

### Step 5 — Install ke Device
```bash
adb uninstall com.haku.taptapme
adb install pokemon_signed.apk
```

---

## 5. Hasil Eksploitasi

| Bypass | Status |
|--------|--------|
| Root Detection | ✅ Berhasil |
| Frida Detection | ✅ Berhasil |
| Native Validation | ✅ Berhasil |
| SSL Pinning | ✅ Berhasil |
| Timer 5 Menit | ✅ Berhasil |
| License Trial → Pro | ✅ Berhasil |
| Privilege Level Shop | ✅ Berhasil |

---

## 6. Rekomendasi Perbaikan

| Vulnerability | Rekomendasi |
|---------------|-------------|
| Anti-Tampering Lemah | Gunakan implementasi yang lebih kuat seperti DexGuard atau ProGuard dengan obfuscation |
| SSL Pinning Mudah Bypass | Implementasi SSL pinning di native layer (C/C++) bukan di XML |
| Client-Side License Check | Validasi license dilakukan sepenuhnya di server, bukan client |
| Client-Side Privilege Check | Validasi privilege di server setiap request API |
| Timer di Client | Implementasi timer/session management di server-side |
| Hardcoded DB Key | Gunakan Android Keystore System untuk menyimpan encryption key |
| Hardcoded Credentials | Hapus hardcoded credentials, gunakan mekanisme anonymous auth yang proper |

---

## 7. Kesimpulan

Aplikasi Poke TapTap memiliki kelemahan keamanan yang signifikan terutama karena terlalu mengandalkan **client-side security**. Semua mekanisme proteksi (license check, privilege check, timer) dapat dibypass karena logika validasi berada di sisi client yang dapat dimodifikasi oleh attacker. Rekomendasi utama adalah memindahkan semua validasi keamanan ke **server-side** dan mengimplementasikan proteksi yang lebih kuat di level native/binary.
