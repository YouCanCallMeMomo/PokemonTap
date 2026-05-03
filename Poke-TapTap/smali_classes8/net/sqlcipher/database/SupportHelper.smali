.class public Lnet/sqlcipher/database/SupportHelper;
.super Ljava/lang/Object;
.source "SupportHelper.java"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# instance fields
.field private final clearPassphrase:Z

.field private passphrase:[B

.field private standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;[BLnet/sqlcipher/database/SQLiteDatabaseHook;Z)V
    .locals 9
    .param p1, "configuration"    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    .param p2, "passphrase"    # [B
    .param p3, "hook"    # Lnet/sqlcipher/database/SQLiteDatabaseHook;
    .param p4, "clearPassphrase"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    invoke-static {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    .line 33
    iput-boolean p4, p0, Lnet/sqlcipher/database/SupportHelper;->clearPassphrase:Z

    .line 35
    new-instance v1, Lnet/sqlcipher/database/SupportHelper$1;

    iget-object v3, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v4, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget-object v0, p1, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    iget v6, v0, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->version:I

    const/4 v5, 0x0

    move-object v2, p0

    move-object v8, p1

    move-object v7, p3

    .end local p1    # "configuration":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    .end local p3    # "hook":Lnet/sqlcipher/database/SQLiteDatabaseHook;
    .local v7, "hook":Lnet/sqlcipher/database/SQLiteDatabaseHook;
    .local v8, "configuration":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    invoke-direct/range {v1 .. v8}, Lnet/sqlcipher/database/SupportHelper$1;-><init>(Lnet/sqlcipher/database/SupportHelper;Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;ILnet/sqlcipher/database/SQLiteDatabaseHook;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)V

    iput-object v1, v2, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    .line 67
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 116
    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->close()V

    .line 117
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lnet/sqlcipher/database/SupportHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 8

    .line 83
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    iget-object v2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteOpenHelper;->getWritableDatabase([B)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v1, "result":Lnet/sqlcipher/database/SQLiteDatabase;
    nop

    .line 101
    iget-boolean v2, p0, Lnet/sqlcipher/database/SupportHelper;->clearPassphrase:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    if-eqz v2, :cond_0

    .line 102
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 103
    iget-object v3, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    aput-byte v0, v3, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 84
    .end local v1    # "result":Lnet/sqlcipher/database/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Lnet/sqlcipher/database/SQLiteException;
    iget-object v2, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    if-eqz v2, :cond_3

    .line 86
    const/4 v2, 0x1

    .line 87
    .local v2, "isCleared":Z
    iget-object v3, p0, Lnet/sqlcipher/database/SupportHelper;->passphrase:[B

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-byte v6, v3, v5

    .line 88
    .local v6, "b":B
    if-eqz v2, :cond_1

    if-nez v6, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    move v7, v0

    :goto_2
    move v2, v7

    .line 87
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 90
    :cond_2
    if-eqz v2, :cond_3

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "The passphrase appears to be cleared. This happens by default the first time you use the factory to open a database, so we can remove the cleartext passphrase from memory. If you close the database yourself, please use a fresh SupportFactory to reopen it. If something else (e.g., Room) closed the database, and you cannot control that, use SupportFactory boolean constructor option to opt out of the automatic password clearing step. See the project README for more information."

    invoke-direct {v0, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 99
    .end local v2    # "isCleared":Z
    :cond_3
    throw v1
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 76
    iget-object v0, p0, Lnet/sqlcipher/database/SupportHelper;->standardHelper:Lnet/sqlcipher/database/SQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lnet/sqlcipher/database/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 77
    return-void
.end method
