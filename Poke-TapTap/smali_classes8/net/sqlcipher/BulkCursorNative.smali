.class public abstract Lnet/sqlcipher/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Lnet/sqlcipher/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Lnet/sqlcipher/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnet/sqlcipher/IBulkCursor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "android.content.IBulkCursor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/IBulkCursor;

    .line 51
    .local v0, "in":Lnet/sqlcipher/IBulkCursor;
    if-eqz v0, :cond_1

    .line 52
    return-object v0

    .line 55
    :cond_1
    new-instance v1, Lnet/sqlcipher/BulkCursorProxy;

    invoke-direct {v1, p0}, Lnet/sqlcipher/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 186
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    const-string v1, "android.content.IBulkCursor"

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 179
    goto/16 :goto_1

    .line 105
    :pswitch_0
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->close()V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    return v2

    .line 168
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 170
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lnet/sqlcipher/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 171
    .local v1, "returnExtras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 173
    return v2

    .line 160
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "returnExtras":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 162
    .restart local v0    # "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 164
    return v2

    .line 152
    .end local v0    # "extras":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getWantsAllOnMoveCalls()Z

    move-result v1

    .line 154
    .local v1, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return v2

    .line 144
    .end local v1    # "result":Z
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lnet/sqlcipher/BulkCursorNative;->onMove(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    return v2

    .line 112
    .end local v0    # "position":I
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    nop

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnet/sqlcipher/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Lnet/sqlcipher/IContentObserver;

    move-result-object v0

    .line 115
    .local v0, "observer":Lnet/sqlcipher/IContentObserver;
    sget-object v1, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sqlcipher/CursorWindow;

    .line 116
    .local v1, "window":Lnet/sqlcipher/CursorWindow;
    invoke-virtual {p0, v0, v1}, Lnet/sqlcipher/BulkCursorNative;->requery(Lnet/sqlcipher/IContentObserver;Lnet/sqlcipher/CursorWindow;)I

    move-result v3

    .line 117
    .local v3, "count":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 120
    return v2

    .line 98
    .end local v0    # "observer":Lnet/sqlcipher/IContentObserver;
    .end local v1    # "window":Lnet/sqlcipher/CursorWindow;
    .end local v3    # "count":I
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->deactivate()V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v2

    .line 135
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lnet/sqlcipher/BulkCursorNative;->deleteRow(I)Z

    move-result v3

    .line 138
    .local v3, "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-ne v3, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v2

    .line 124
    .end local v1    # "position":I
    .end local v3    # "result":Z
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 128
    .local v1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {p0, v1}, Lnet/sqlcipher/BulkCursorNative;->updateRows(Ljava/util/Map;)Z

    move-result v3

    .line 129
    .restart local v3    # "result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-ne v3, v2, :cond_2

    move v0, v2

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v2

    .line 86
    .end local v1    # "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3    # "result":Z
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "columnNames":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    array-length v1, v0

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    array-length v1, v0

    .line 91
    .local v1, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 92
    aget-object v4, v0, v3

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "i":I
    :cond_3
    return v2

    .line 78
    .end local v0    # "columnNames":[Ljava/lang/String;
    .end local v1    # "length":I
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lnet/sqlcipher/BulkCursorNative;->count()I

    move-result v0

    .line 80
    .local v0, "count":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v2

    .line 64
    .end local v0    # "count":I
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "startPos":I
    invoke-virtual {p0, v1}, Lnet/sqlcipher/BulkCursorNative;->getWindow(I)Lnet/sqlcipher/CursorWindow;

    move-result-object v3

    .line 67
    .local v3, "window":Lnet/sqlcipher/CursorWindow;
    if-nez v3, :cond_4

    .line 68
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v2

    .line 71
    :cond_4
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    invoke-virtual {v3, p3, v0}, Lnet/sqlcipher/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v2

    .line 176
    .end local v1    # "startPos":I
    .end local v3    # "window":Lnet/sqlcipher/CursorWindow;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3, v0}, Lnet/sqlcipher/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 178
    return v2

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
