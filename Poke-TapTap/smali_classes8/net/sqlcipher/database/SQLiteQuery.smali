.class public Lnet/sqlcipher/database/SQLiteQuery;
.super Lnet/sqlcipher/database/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mBindArgs:[Ljava/lang/String;

.field private mObjectBindArgs:[Ljava/lang/Object;

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offsetIndex"    # I
    .param p4, "bindArgs"    # [Ljava/lang/Object;

    .line 55
    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    .line 56
    iput p3, p0, Lnet/sqlcipher/database/SQLiteQuery;->mOffsetIndex:I

    .line 57
    iput-object p4, p0, Lnet/sqlcipher/database/SQLiteQuery;->mObjectBindArgs:[Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mObjectBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mObjectBindArgs:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    .local v0, "length":I
    :goto_0
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "offsetIndex"    # I
    .param p4, "bindArgs"    # [Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Ljava/lang/String;)V

    .line 50
    iput p3, p0, Lnet/sqlcipher/database/SQLiteQuery;->mOffsetIndex:I

    .line 51
    iput-object p4, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(Lnet/sqlcipher/CursorWindow;IIIII)I
.end method


# virtual methods
.method public bindArguments([Ljava/lang/Object;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;

    .line 196
    if-eqz p1, :cond_8

    array-length v0, p1

    if-lez v0, :cond_8

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_8

    .line 198
    aget-object v1, p1, v0

    .line 199
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 200
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lnet/sqlcipher/database/SQLiteQuery;->bindNull(I)V

    goto/16 :goto_2

    .line 201
    :cond_0
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 202
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->bindDouble(ID)V

    goto/16 :goto_2

    .line 203
    :cond_1
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 204
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 205
    .local v2, "number":F
    add-int/lit8 v3, v0, 0x1

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lnet/sqlcipher/database/SQLiteQuery;->bindDouble(ID)V

    .line 206
    .end local v2    # "number":F
    goto :goto_2

    :cond_2
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 207
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->bindLong(IJ)V

    goto :goto_2

    .line 208
    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    .line 209
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 210
    .local v2, "number":I
    add-int/lit8 v3, v0, 0x1

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lnet/sqlcipher/database/SQLiteQuery;->bindLong(IJ)V

    .line 211
    .end local v2    # "number":I
    goto :goto_2

    :cond_4
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    .line 212
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_5
    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {p0, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteQuery;->bindLong(IJ)V

    goto :goto_2

    .line 213
    :cond_6
    instance-of v2, v1, [B

    if-eqz v2, :cond_7

    .line 214
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Lnet/sqlcipher/database/SQLiteQuery;->bindBlob(I[B)V

    goto :goto_2

    .line 216
    :cond_7
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lnet/sqlcipher/database/SQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 197
    .end local v1    # "value":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method public bindDouble(ID)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 185
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 186
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteProgram;->bindDouble(ID)V

    .line 187
    :cond_0
    return-void
.end method

.method public bindLong(IJ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 179
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lnet/sqlcipher/database/SQLiteProgram;->bindLong(IJ)V

    .line 181
    :cond_0
    return-void
.end method

.method public bindNull(I)V
    .locals 3
    .param p1, "index"    # I

    .line 173
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 174
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sqlcipher/database/SQLiteProgram;->bindNull(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 192
    iget-boolean v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lnet/sqlcipher/database/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method

.method columnCountLocked()I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->acquireReference()V

    .line 116
    :try_start_0
    invoke-direct {p0}, Lnet/sqlcipher/database/SQLiteQuery;->native_column_count()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 116
    return v0

    .line 118
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 119
    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 130
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->acquireReference()V

    .line 132
    :try_start_0
    invoke-direct {p0, p1}, Lnet/sqlcipher/database/SQLiteQuery;->native_column_name(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 132
    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 135
    throw v0
.end method

.method fillWindow(Lnet/sqlcipher/CursorWindow;II)I
    .locals 10
    .param p1, "window"    # Lnet/sqlcipher/CursorWindow;
    .param p2, "maxRead"    # I
    .param p3, "lastPos"    # I

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 72
    .local v1, "timeStart":J
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->lock()V

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 76
    :try_start_1
    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 80
    nop

    .line 81
    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->getStartPosition()I

    move-result v5

    .line 82
    invoke-virtual {p1}, Lnet/sqlcipher/CursorWindow;->getRequiredPosition()I

    move-result v6

    iget v7, p0, Lnet/sqlcipher/database/SQLiteQuery;->mOffsetIndex:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    move-object v3, p0

    move-object v4, p1

    move v8, p2

    move v9, p3

    .end local p1    # "window":Lnet/sqlcipher/CursorWindow;
    .end local p2    # "maxRead":I
    .end local p3    # "lastPos":I
    .local v4, "window":Lnet/sqlcipher/CursorWindow;
    .local v8, "maxRead":I
    .local v9, "lastPos":I
    :try_start_2
    invoke-direct/range {v3 .. v9}, Lnet/sqlcipher/database/SQLiteQuery;->native_fill_window(Lnet/sqlcipher/CursorWindow;IIIII)I

    move-result p1

    .line 87
    .local p1, "numRows":I
    sget-boolean p2, Lnet/sqlcipher/database/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz p2, :cond_0

    .line 88
    const-string p2, "Cursor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fillWindow(): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, v3, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lnet/sqlcipher/database/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :cond_0
    nop

    .line 98
    :try_start_3
    invoke-virtual {v4}, Lnet/sqlcipher/CursorWindow;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 102
    iget-object p2, v3, Lnet/sqlcipher/database/SQLiteQuery;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 90
    return p1

    .line 94
    .end local p1    # "numRows":I
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 98
    .end local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .end local v8    # "maxRead":I
    .end local v9    # "lastPos":I
    .local p1, "window":Lnet/sqlcipher/CursorWindow;
    .restart local p2    # "maxRead":I
    .restart local p3    # "lastPos":I
    :catchall_0
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    move v9, p3

    move-object p1, v0

    .end local p1    # "window":Lnet/sqlcipher/CursorWindow;
    .end local p2    # "maxRead":I
    .end local p3    # "lastPos":I
    .restart local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .restart local v8    # "maxRead":I
    .restart local v9    # "lastPos":I
    goto :goto_1

    .line 94
    .end local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .end local v8    # "maxRead":I
    .end local v9    # "lastPos":I
    .restart local p1    # "window":Lnet/sqlcipher/CursorWindow;
    .restart local p2    # "maxRead":I
    .restart local p3    # "lastPos":I
    :catch_2
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    move v9, p3

    move-object p1, v0

    .line 95
    .end local p2    # "maxRead":I
    .end local p3    # "lastPos":I
    .restart local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .restart local v8    # "maxRead":I
    .restart local v9    # "lastPos":I
    .local p1, "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    :goto_0
    :try_start_4
    iget-object p2, v3, Lnet/sqlcipher/database/SQLiteQuery;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->onCorruption()V

    .line 96
    nop

    .end local v1    # "timeStart":J
    .end local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .end local v8    # "maxRead":I
    .end local v9    # "lastPos":I
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    .end local p1    # "e":Lnet/sqlcipher/database/SQLiteDatabaseCorruptException;
    .restart local v1    # "timeStart":J
    .restart local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .restart local v8    # "maxRead":I
    .restart local v9    # "lastPos":I
    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_1
    :try_start_5
    invoke-virtual {v4}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 99
    nop

    .end local v1    # "timeStart":J
    .end local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .end local v8    # "maxRead":I
    .end local v9    # "lastPos":I
    throw p1

    .line 91
    .restart local v1    # "timeStart":J
    .local p1, "window":Lnet/sqlcipher/CursorWindow;
    .restart local p2    # "maxRead":I
    .restart local p3    # "lastPos":I
    :catch_3
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    move v9, p3

    move-object p1, v0

    .line 93
    .end local p2    # "maxRead":I
    .end local p3    # "lastPos":I
    .restart local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .restart local v8    # "maxRead":I
    .restart local v9    # "lastPos":I
    .local p1, "e":Ljava/lang/IllegalStateException;
    :goto_2
    nop

    .line 98
    invoke-virtual {v4}, Lnet/sqlcipher/CursorWindow;->releaseReference()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 101
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 102
    iget-object p2, v3, Lnet/sqlcipher/database/SQLiteQuery;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 93
    const/4 p2, 0x0

    return p2

    .line 101
    .end local p1    # "e":Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .end local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .end local v8    # "maxRead":I
    .end local v9    # "lastPos":I
    .local p1, "window":Lnet/sqlcipher/CursorWindow;
    .restart local p2    # "maxRead":I
    .restart local p3    # "lastPos":I
    :catchall_3
    move-exception v0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    move v9, p3

    move-object p1, v0

    .end local p1    # "window":Lnet/sqlcipher/CursorWindow;
    .end local p2    # "maxRead":I
    .end local p3    # "lastPos":I
    .restart local v4    # "window":Lnet/sqlcipher/CursorWindow;
    .restart local v8    # "maxRead":I
    .restart local v9    # "lastPos":I
    :goto_3
    invoke-virtual {p0}, Lnet/sqlcipher/database/SQLiteQuery;->releaseReference()V

    .line 102
    iget-object p2, v3, Lnet/sqlcipher/database/SQLiteQuery;->mDatabase:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {p2}, Lnet/sqlcipher/database/SQLiteDatabase;->unlock()V

    .line 103
    throw p1
.end method

.method requery()V
    .locals 5

    .line 147
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 148
    iget-object v0, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    array-length v0, v0

    .line 150
    .local v0, "len":I
    :try_start_0
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteQuery;->mObjectBindArgs:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteQuery;->mObjectBindArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lnet/sqlcipher/database/SQLiteQuery;->bindArguments([Ljava/lang/Object;)V

    goto :goto_1

    .line 153
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 154
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-super {p0, v2, v3}, Lnet/sqlcipher/database/SQLiteProgram;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catch Lnet/sqlcipher/database/SQLiteMisuseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_1
    :goto_1
    goto :goto_3

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Lnet/sqlcipher/database/SQLiteMisuseException;
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSql "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "errMsg":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const-string v4, " "

    if-ge v3, v0, :cond_2

    .line 160
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v4, p0, Lnet/sqlcipher/database/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 163
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .local v3, "leakProgram":Ljava/lang/IllegalStateException;
    throw v3

    .line 169
    .end local v0    # "len":I
    .end local v1    # "e":Lnet/sqlcipher/database/SQLiteMisuseException;
    .end local v2    # "errMsg":Ljava/lang/StringBuilder;
    .end local v3    # "leakProgram":Ljava/lang/IllegalStateException;
    :cond_3
    :goto_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sqlcipher/database/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
