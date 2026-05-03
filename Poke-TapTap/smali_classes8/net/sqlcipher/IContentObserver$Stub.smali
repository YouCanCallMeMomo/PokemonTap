.class public abstract Lnet/sqlcipher/IContentObserver$Stub;
.super Landroid/os/Binder;
.source "IContentObserver.java"

# interfaces
.implements Lnet/sqlcipher/IContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sqlcipher/IContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sqlcipher/IContentObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "net.sqlcipher.IContentObserver"

.field static final TRANSACTION_onChange:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "net.sqlcipher.IContentObserver"

    invoke-virtual {p0, p0, v0}, Lnet/sqlcipher/IContentObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/sqlcipher/IContentObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "net.sqlcipher.IContentObserver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lnet/sqlcipher/IContentObserver;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lnet/sqlcipher/IContentObserver;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lnet/sqlcipher/IContentObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lnet/sqlcipher/IContentObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lnet/sqlcipher/IContentObserver;
    .locals 1

    .line 131
    sget-object v0, Lnet/sqlcipher/IContentObserver$Stub$Proxy;->sDefaultImpl:Lnet/sqlcipher/IContentObserver;

    return-object v0
.end method

.method public static setDefaultImpl(Lnet/sqlcipher/IContentObserver;)Z
    .locals 2
    .param p0, "impl"    # Lnet/sqlcipher/IContentObserver;

    .line 121
    sget-object v0, Lnet/sqlcipher/IContentObserver$Stub$Proxy;->sDefaultImpl:Lnet/sqlcipher/IContentObserver;

    if-nez v0, :cond_1

    .line 124
    if-eqz p0, :cond_0

    .line 125
    sput-object p0, Lnet/sqlcipher/IContentObserver$Stub$Proxy;->sDefaultImpl:Lnet/sqlcipher/IContentObserver;

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "net.sqlcipher.IContentObserver"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 66
    :sswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v2}, Lnet/sqlcipher/IContentObserver$Stub;->onChange(Z)V

    .line 70
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
