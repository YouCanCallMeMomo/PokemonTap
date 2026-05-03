.class public Lcom/haku/taptapme/utils/DatabaseHelper;
.super Lnet/sqlcipher/database/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final COL_FLAG:Ljava/lang/String; = "has_tap_reducer"

.field private static final COL_ID:Ljava/lang/String; = "id"

.field private static final COL_METRIC:Ljava/lang/String; = "points"

.field private static final COL_NAME:Ljava/lang/String; = "name"

.field private static final COL_VAL1:Ljava/lang/String; = "types"

.field private static final COL_VAL2:Ljava/lang/String; = "height"

.field private static final COL_VAL3:Ljava/lang/String; = "weight"

.field private static final COL_VAL4:Ljava/lang/String; = "image_url"

.field private static final DATABASE_NAME:Ljava/lang/String; = "TrainerInventory.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final DB_KEY:Ljava/lang/String; = "HakuPreciousTrainerSecretKey123"

.field private static final TABLE_A:Ljava/lang/String; = "inventory"

.field private static final TABLE_B:Ljava/lang/String; = "trainer_stats"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "TrainerInventory.db"

    invoke-direct {p0, p1, v2, v0, v1}, Lnet/sqlcipher/database/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)V

    .line 40
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public applyMetricReduction(I)Z
    .locals 4
    .param p1, "cost"    # I

    .line 72
    invoke-virtual {p0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getAccountMetric()I

    move-result v0

    .line 73
    .local v0, "current":I
    if-lt v0, p1, :cond_0

    .line 74
    const-string v1, "HakuPreciousTrainerSecretKey123"

    invoke-virtual {p0, v1}, Lcom/haku/taptapme/utils/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    .line 75
    .local v1, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE trainer_stats SET points = points - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const/4 v2, 0x1

    return v2

    .line 78
    .end local v1    # "db":Lnet/sqlcipher/database/SQLiteDatabase;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getAccountMetric()I
    .locals 4

    .line 58
    const-string v0, "HakuPreciousTrainerSecretKey123"

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v1, "SELECT points FROM trainer_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 60
    .local v1, "cursor":Lnet/sqlcipher/Cursor;
    const/4 v2, 0x0

    .line 61
    .local v2, "val":I
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v2

    .line 62
    :cond_0
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->close()V

    .line 63
    return v2
.end method

.method public isModifierEnabled()Z
    .locals 6

    .line 82
    const-string v0, "HakuPreciousTrainerSecretKey123"

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 83
    .local v0, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    const-string v1, "SELECT has_tap_reducer FROM trainer_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v1

    .line 84
    .local v1, "cursor":Lnet/sqlcipher/Cursor;
    const/4 v2, 0x0

    .line 85
    .local v2, "active":Z
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lnet/sqlcipher/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move v3, v5

    :cond_0
    move v2, v3

    .line 86
    :cond_1
    invoke-interface {v1}, Lnet/sqlcipher/Cursor;->close()V

    .line 87
    return v2
.end method

.method public onCreate(Lnet/sqlcipher/database/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;

    .line 45
    const-string v0, "CREATE TABLE inventory (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, types TEXT, height REAL, weight REAL, image_url TEXT)"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "CREATE TABLE trainer_stats (points INTEGER DEFAULT 0, has_tap_reducer INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "INSERT INTO trainer_stats (points, has_tap_reducer) VALUES (0, 0)"

    invoke-virtual {p1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onUpgrade(Lnet/sqlcipher/database/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Lnet/sqlcipher/database/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 53
    return-void
.end method

.method public registerObject(Lcom/haku/taptapme/models/Pokemon;)Z
    .locals 9
    .param p1, "p"    # Lcom/haku/taptapme/models/Pokemon;

    .line 98
    const-string v0, "HakuPreciousTrainerSecretKey123"

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getElements()[Lcom/haku/taptapme/enums/Element;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 103
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getElements()[Lcom/haku/taptapme/enums/Element;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getElements()[Lcom/haku/taptapme/enums/Element;

    move-result-object v5

    aget-object v5, v5, v3

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getElements()[Lcom/haku/taptapme/enums/Element;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/haku/taptapme/enums/Element;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getElements()[Lcom/haku/taptapme/enums/Element;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_0

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v3    # "i":I
    :cond_1
    const-string v3, "types"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v3, "height"

    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getHeight()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 112
    const-string v3, "weight"

    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getWeight()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 113
    const-string v3, "image_url"

    invoke-virtual {p1}, Lcom/haku/taptapme/models/Pokemon;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v3, "inventory"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public retrieveAllObjects()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haku/taptapme/models/Pokemon;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 119
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/haku/taptapme/models/Pokemon;>;"
    const-string v0, "HakuPreciousTrainerSecretKey123"

    move-object/from16 v2, p0

    invoke-virtual {v2, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getReadableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v3

    .line 120
    .local v3, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    const/4 v4, 0x0

    .line 122
    .local v4, "c":Lnet/sqlcipher/Cursor;
    :try_start_0
    const-string v0, "SELECT * FROM inventory"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lnet/sqlcipher/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 123
    invoke-interface {v4}, Lnet/sqlcipher/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    :cond_0
    const-string v0, "name"

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 126
    .local v6, "n":Ljava/lang/String;
    const-string v0, "types"

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 127
    .local v11, "v1":Ljava/lang/String;
    const-string v0, "height"

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getDouble(I)D

    move-result-wide v7

    move-wide v12, v7

    .line 128
    .local v12, "v2":D
    const-string v0, "weight"

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getDouble(I)D

    move-result-wide v7

    move-wide v14, v7

    .line 129
    .local v14, "v3":D
    const-string v0, "image_url"

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Lnet/sqlcipher/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 130
    .local v10, "v4":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 131
    .local v5, "types":[Ljava/lang/String;
    array-length v0, v5

    new-array v7, v0, [Lcom/haku/taptapme/enums/Element;

    .line 132
    .local v7, "el":[Lcom/haku/taptapme/enums/Element;
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_0
    array-length v0, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v8, v0, :cond_2

    .line 133
    :try_start_1
    aget-object v0, v5, v8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    aget-object v0, v5, v8

    invoke-static {v0}, Lcom/haku/taptapme/enums/Element;->valueOf(Ljava/lang/String;)Lcom/haku/taptapme/enums/Element;

    move-result-object v0

    aput-object v0, v7, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 132
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 135
    .end local v8    # "i":I
    :cond_2
    move-object v8, v5

    .end local v5    # "types":[Ljava/lang/String;
    .local v8, "types":[Ljava/lang/String;
    :try_start_2
    new-instance v5, Lcom/haku/taptapme/models/Pokemon;

    move-object v9, v8

    .end local v8    # "types":[Ljava/lang/String;
    .local v9, "types":[Ljava/lang/String;
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v16, v9

    .end local v9    # "types":[Ljava/lang/String;
    .local v16, "types":[Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-direct/range {v5 .. v10}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    nop

    .end local v6    # "n":Ljava/lang/String;
    .end local v7    # "el":[Lcom/haku/taptapme/enums/Element;
    .end local v10    # "v4":Ljava/lang/String;
    .end local v11    # "v1":Ljava/lang/String;
    .end local v12    # "v2":D
    .end local v14    # "v3":D
    .end local v16    # "types":[Ljava/lang/String;
    invoke-interface {v4}, Lnet/sqlcipher/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_0

    .line 138
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lnet/sqlcipher/Cursor;->close()V

    .line 139
    :cond_4
    return-object v1

    .line 138
    :catchall_0
    move-exception v0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Lnet/sqlcipher/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public setModifierStatus(Z)V
    .locals 3
    .param p1, "state"    # Z

    .line 91
    const-string v0, "HakuPreciousTrainerSecretKey123"

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 92
    .local v0, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE trainer_stats SET has_tap_reducer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public syncMetricUpdate(I)V
    .locals 3
    .param p1, "delta"    # I

    .line 67
    const-string v0, "HakuPreciousTrainerSecretKey123"

    invoke-virtual {p0, v0}, Lcom/haku/taptapme/utils/DatabaseHelper;->getWritableDatabase(Ljava/lang/String;)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v0

    .line 68
    .local v0, "db":Lnet/sqlcipher/database/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE trainer_stats SET points = points + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    return-void
.end method
