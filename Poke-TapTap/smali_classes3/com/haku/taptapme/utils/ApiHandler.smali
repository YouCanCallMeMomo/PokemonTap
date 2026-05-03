.class public Lcom/haku/taptapme/utils/ApiHandler;
.super Ljava/lang/Object;
.source "ApiHandler.java"


# static fields
.field private static BASE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "https://00bfc8c729f5d4d529a412b12c58ddd2.solusisiber.com"

    sput-object v0, Lcom/haku/taptapme/utils/ApiHandler;->BASE_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInventory(Ljava/lang/String;)Ljava/util/List;
    .locals 21
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/haku/taptapme/models/Pokemon;",
            ">;"
        }
    .end annotation

    .line 77
    move-object/from16 v1, p0

    const-string v2, "ApiHandler"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 79
    .local v3, "pokemonList":Ljava/util/List;, "Ljava/util/List<Lcom/haku/taptapme/models/Pokemon;>;"
    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/haku/taptapme/utils/ApiHandler;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/inventory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 80
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 81
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const-string v0, "GET"

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 82
    const-string v0, "Accept"

    const-string v6, "application/json"

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz v1, :cond_0

    .line 86
    const-string v0, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bearer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    move v6, v0

    .line 90
    .local v6, "responseCode":I
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_4

    .line 91
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v7, v0

    .line 92
    .local v7, "br":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 94
    .local v8, "response":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v9, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 99
    .local v10, "jsonResponse":Lorg/json/JSONObject;
    const-string v0, "data"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v11, v0

    .line 101
    .local v11, "dataArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_3

    .line 102
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v13, v0

    .line 103
    .local v13, "pokeObj":Lorg/json/JSONObject;
    const-string v0, "types"

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v14, v0

    .line 104
    .local v14, "typesArray":Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/haku/taptapme/enums/Element;

    move-object/from16 v17, v0

    .line 106
    .local v17, "elements":[Lcom/haku/taptapme/enums/Element;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "j":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v15, v0, :cond_2

    .line 108
    :try_start_1
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/haku/taptapme/enums/Element;->valueOf(Ljava/lang/String;)Lcom/haku/taptapme/enums/Element;

    move-result-object v0

    aput-object v0, v17, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    goto :goto_3

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const/16 v16, 0x0

    :try_start_2
    aput-object v16, v17, v15

    .line 106
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 114
    .end local v15    # "j":I
    :cond_2
    new-instance v15, Lcom/haku/taptapme/models/Pokemon;

    const-string v0, "name"

    .line 115
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "height"

    .line 117
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const-string v0, "weight"

    .line 118
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const-string v0, "image_url"

    .line 119
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v15 .. v20}, Lcom/haku/taptapme/models/Pokemon;-><init>(Ljava/lang/String;[Lcom/haku/taptapme/enums/Element;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    .line 114
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    nop

    .end local v13    # "pokeObj":Lorg/json/JSONObject;
    .end local v14    # "typesArray":Lorg/json/JSONArray;
    .end local v17    # "elements":[Lcom/haku/taptapme/enums/Element;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v8    # "response":Ljava/lang/StringBuilder;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "jsonResponse":Lorg/json/JSONObject;
    .end local v11    # "dataArray":Lorg/json/JSONArray;
    .end local v12    # "i":I
    :cond_3
    goto :goto_4

    .line 122
    :cond_4
    const/16 v0, 0x191

    if-ne v6, v0, :cond_5

    .line 123
    const-string v0, "Unauthorized: Invalid or expired token."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 122
    :cond_5
    :goto_4
    nop

    .line 127
    .end local v4    # "url":Ljava/net/URL;
    .end local v5    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "responseCode":I
    :goto_5
    goto :goto_6

    .line 125
    :catch_1
    move-exception v0

    .line 126
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inventory fetch error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-object v3
.end method

.method public static login(Ljava/lang/String;Ljava/lang/String;)Lcom/haku/taptapme/models/User;
    .locals 22
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 27
    const-string v0, "utf-8"

    const-string v1, "email"

    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/haku/taptapme/utils/ApiHandler;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/login"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 29
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 30
    const-string v4, "Content-Type"

    const-string v5, "application/json; utf-8"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 34
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 35
    .local v4, "jsonInput":Lorg/json/JSONObject;
    move-object/from16 v5, p0

    :try_start_1
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v6, "password"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v7, p1

    :try_start_2
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 39
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 40
    .local v8, "input":[B
    array-length v9, v8

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    .end local v8    # "input":[B
    if-eqz v6, :cond_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 43
    .end local v6    # "os":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 44
    .local v6, "responseCode":I
    const/16 v8, 0xc8

    if-ne v6, v8, :cond_2

    .line 45
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v8, "br":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "response":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 49
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v9, "jsonResponse":Lorg/json/JSONObject;
    const-string v11, "data"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 54
    .local v11, "data":Lorg/json/JSONObject;
    const-string v12, "user"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 55
    .local v12, "userObj":Lorg/json/JSONObject;
    const-string v13, "authorization"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 57
    .local v13, "authObj":Lorg/json/JSONObject;
    new-instance v14, Lcom/haku/taptapme/models/User;

    const-string v15, "id"

    .line 58
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v0

    .end local v0    # "response":Ljava/lang/StringBuilder;
    .local v21, "response":Ljava/lang/StringBuilder;
    const-string v0, "full_name"

    .line 59
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 60
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v0, "avatar_url"

    .line 61
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v0, "license"

    .line 62
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "access_token"

    .line 63
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v14 .. v20}, Lcom/haku/taptapme/models/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    return-object v14

    .line 68
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "jsonInput":Lorg/json/JSONObject;
    .end local v6    # "responseCode":I
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v9    # "jsonResponse":Lorg/json/JSONObject;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "data":Lorg/json/JSONObject;
    .end local v12    # "userObj":Lorg/json/JSONObject;
    .end local v13    # "authObj":Lorg/json/JSONObject;
    .end local v21    # "response":Ljava/lang/StringBuilder;
    :cond_2
    goto :goto_4

    .line 38
    .restart local v2    # "url":Ljava/net/URL;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "jsonInput":Lorg/json/JSONObject;
    .local v6, "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_3

    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "email":Ljava/lang/String;
    .end local p1    # "password":Ljava/lang/String;
    :cond_3
    :goto_1
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 66
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "jsonInput":Lorg/json/JSONObject;
    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local p0    # "email":Ljava/lang/String;
    .restart local p1    # "password":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    :goto_2
    move-object/from16 v7, p1

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method
