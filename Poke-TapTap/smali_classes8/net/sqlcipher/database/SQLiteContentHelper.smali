.class public Lnet/sqlcipher/database/SQLiteContentHelper;
.super Ljava/lang/Object;
.source "SQLiteContentHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlobColumnAsAssetFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 12
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 50
    const/4 v1, 0x0

    .line 53
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteContentHelper;->simpleQueryForBlobMemoryFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v0

    move-object v2, v0

    .line 54
    .local v2, "file":Landroid/os/MemoryFile;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v3, v0

    .line 59
    .local v3, "c":Ljava/lang/Class;
    :try_start_1
    const-string v0, "getParcelFileDescriptor"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 61
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v4

    .line 64
    .end local v0    # "m":Ljava/lang/reflect/Method;
    move-object v7, v1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "SQLiteContentHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteCursor.java: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v1

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v7, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    :try_start_3
    new-instance v6, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v10, v0

    const-wide/16 v8, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 66
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    return-object v6

    .line 67
    .end local v2    # "file":Landroid/os/MemoryFile;
    .end local v3    # "c":Ljava/lang/Class;
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_1

    .line 55
    .end local v7    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "file":Landroid/os/MemoryFile;
    :cond_0
    :try_start_4
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v3, "No results."

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "db":Lnet/sqlcipher/database/SQLiteDatabase;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "selectionArgs":[Ljava/lang/String;
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 67
    .end local v2    # "file":Landroid/os/MemoryFile;
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "db":Lnet/sqlcipher/database/SQLiteDatabase;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "selectionArgs":[Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static simpleQueryForBlobMemoryFile(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/MemoryFile;
    .locals 6
    .param p0, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    .line 85
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 86
    return-object v1

    .line 89
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 90
    nop

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    return-object v1

    .line 92
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    .local v3, "bytes":[B
    if-nez v3, :cond_2

    .line 94
    nop

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 94
    return-object v1

    .line 96
    :cond_2
    :try_start_2
    new-instance v4, Landroid/os/MemoryFile;

    array-length v5, v3

    invoke-direct {v4, v1, v5}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    .line 97
    .local v4, "file":Landroid/os/MemoryFile;
    array-length v1, v3

    invoke-virtual {v4, v3, v2, v2, v1}, Landroid/os/MemoryFile;->writeBytes([BIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    nop

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 100
    return-object v4

    .line 102
    .end local v3    # "bytes":[B
    .end local v4    # "file":Landroid/os/MemoryFile;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 103
    throw v1
.end method
