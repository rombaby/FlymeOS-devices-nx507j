.class public Lcom/mokee/helper/service/UpdateCheckService;
.super Landroid/app/IntentService;
.source "UpdateCheckService.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/IntentService;",
        "Lcom/android/volley/Response$ErrorListener;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private flag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const-string v0, "UpdateCheckService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private getAvailableUpdates(I)V
    .locals 13
    .param p1, "flag"    # I

    .prologue
    const/16 v12, 0x1388

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 243
    const/4 v9, 0x0

    .line 244
    .local v9, "updateServerUri":Ljava/net/URI;
    packed-switch p1, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 246
    :pswitch_0
    const-string v3, "downloader"

    invoke-virtual {p0, v3, v5}, Lcom/mokee/helper/service/UpdateCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_ota_check"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 247
    .local v8, "isOTA":Z
    if-nez v8, :cond_0

    .line 248
    const v3, 0x7f0a0002

    invoke-virtual {p0, v3}, Lcom/mokee/helper/service/UpdateCheckService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    .line 252
    :goto_1
    new-instance v0, Lcom/mokee/helper/requests/UpdatesRequest;

    invoke-virtual {v9}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mokee/helper/requests/UpdatesRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 255
    .local v0, "updateRequest":Lcom/mokee/helper/requests/UpdatesRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v1, v12, v11, v10}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/mokee/helper/requests/UpdatesRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 258
    const-string v1, "UpdateCheckService"

    invoke-virtual {v0, v1}, Lcom/mokee/helper/requests/UpdatesRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 259
    invoke-virtual {p0}, Lcom/mokee/helper/service/UpdateCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v1}, Lcom/mokee/helper/MoKeeApplication;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 250
    .end local v0    # "updateRequest":Lcom/mokee/helper/requests/UpdatesRequest;
    :cond_0
    const v3, 0x7f0a0003

    invoke-virtual {p0, v3}, Lcom/mokee/helper/service/UpdateCheckService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    goto :goto_1

    .line 262
    .end local v8    # "isOTA":Z
    :pswitch_1
    const v3, 0x7f0a0004

    invoke-virtual {p0, v3}, Lcom/mokee/helper/service/UpdateCheckService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    .line 263
    new-instance v2, Lcom/mokee/helper/requests/ExtrasRequest;

    invoke-virtual {v9}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/mokee/helper/utils/Utils;->getUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move v3, v1

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/mokee/helper/requests/ExtrasRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 266
    .local v2, "extrasRequest":Lcom/mokee/helper/requests/ExtrasRequest;
    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v1, v12, v11, v10}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, v1}, Lcom/mokee/helper/requests/ExtrasRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 269
    const-string v1, "UpdateCheckService"

    invoke-virtual {v2, v1}, Lcom/mokee/helper/requests/ExtrasRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 270
    invoke-virtual {p0}, Lcom/mokee/helper/service/UpdateCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v1}, Lcom/mokee/helper/MoKeeApplication;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseExtrasJSON(Lorg/json/JSONObject;)Lcom/mokee/helper/misc/ItemInfo;
    .locals 3
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v1, Lcom/mokee/helper/misc/ItemInfo$Builder;

    invoke-direct {v1}, Lcom/mokee/helper/misc/ItemInfo$Builder;-><init>()V

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setFileSize(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "download"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setMD5Sum(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "changelog"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setChangelog(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setDescription(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "checkflag"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setCheckflag(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo$Builder;->build()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v0

    .line 377
    .local v0, "mii":Lcom/mokee/helper/misc/ItemInfo;
    return-object v0
.end method

.method private parseExtrasJSONObject(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mokee/helper/misc/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 338
    .local v8, "updates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    const/4 v9, 0x2

    :try_start_0
    new-array v6, v9, [Lorg/json/JSONArray;

    .line 340
    .local v6, "jsonArrays":[Lorg/json/JSONArray;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 341
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "gms"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 342
    const/4 v9, 0x0

    const-string v10, "gms"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    aput-object v10, v6, v9

    .line 344
    :cond_0
    const-string v9, "application"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 345
    const/4 v9, 0x1

    const-string v10, "application"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    aput-object v10, v6, v9

    .line 347
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v6

    if-ge v1, v9, :cond_4

    .line 348
    aget-object v5, v6, v1

    .line 349
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_5

    .line 350
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 351
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 350
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 355
    .local v3, "item":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/mokee/helper/service/UpdateCheckService;->parseExtrasJSON(Lorg/json/JSONObject;)Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v2

    .line 356
    .local v2, "info":Lcom/mokee/helper/misc/ItemInfo;
    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 362
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/mokee/helper/misc/ItemInfo;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "j":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "jsonArrays":[Lorg/json/JSONArray;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "UpdateCheckService"

    const-string v10, "Error in JSON result"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_4
    return-object v8

    .line 347
    .restart local v1    # "i":I
    .restart local v5    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "jsonArrays":[Lorg/json/JSONArray;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseUpdatesJSON(Lorg/json/JSONObject;)Lcom/mokee/helper/misc/ItemInfo;
    .locals 3
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v1, Lcom/mokee/helper/misc/ItemInfo$Builder;

    invoke-direct {v1}, Lcom/mokee/helper/misc/ItemInfo$Builder;-><init>()V

    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setFileName(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setFileSize(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "rom"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setDownloadUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "md5"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setMD5Sum(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    const-string v2, "log"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mokee/helper/misc/ItemInfo$Builder;->setChangelog(Ljava/lang/String;)Lcom/mokee/helper/misc/ItemInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mokee/helper/misc/ItemInfo$Builder;->build()Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v0

    .line 332
    .local v0, "mii":Lcom/mokee/helper/misc/ItemInfo;
    return-object v0
.end method

.method private parseUpdatesJSONObject(Ljava/lang/String;I)Ljava/util/LinkedList;
    .locals 16
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "updateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mokee/helper/misc/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 286
    .local v12, "updates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    const-string v13, "downloader"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/mokee/helper/service/UpdateCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "pref_ota_check"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 288
    .local v4, "isOTA":Z
    const/4 v13, 0x2

    :try_start_0
    new-array v8, v13, [Lorg/json/JSONArray;

    .line 290
    .local v8, "jsonArrays":[Lorg/json/JSONArray;
    if-nez v4, :cond_3

    const/4 v13, 0x4

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 291
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 292
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string v13, "RELEASE"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 293
    const/4 v13, 0x0

    const-string v14, "RELEASE"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    aput-object v14, v8, v13

    .line 295
    :cond_0
    const-string v13, "NIGHTLY"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 296
    const/4 v13, 0x1

    const-string v14, "NIGHTLY"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    aput-object v14, v8, v13

    .line 304
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v13, v8

    if-ge v2, v13, :cond_4

    .line 305
    aget-object v7, v8, v2

    .line 306
    .local v7, "jsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_6

    .line 307
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_6

    .line 308
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 307
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 299
    .end local v2    # "i":I
    .end local v6    # "j":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_3
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 300
    .local v11, "updateList":Lorg/json/JSONArray;
    const/4 v13, 0x0

    aput-object v11, v8, v13

    .line 301
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 302
    .local v10, "length":I
    const-string v13, "UpdateCheckService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Got update JSON data with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " entries"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    .end local v8    # "jsonArrays":[Lorg/json/JSONArray;
    .end local v10    # "length":I
    .end local v11    # "updateList":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Lorg/json/JSONException;
    const-string v13, "UpdateCheckService"

    const-string v14, "Error in JSON result"

    invoke-static {v13, v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 322
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4
    return-object v12

    .line 311
    .restart local v2    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    .restart local v8    # "jsonArrays":[Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 312
    .local v5, "item":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mokee/helper/service/UpdateCheckService;->parseUpdatesJSON(Lorg/json/JSONObject;)Lcom/mokee/helper/misc/ItemInfo;

    move-result-object v3

    .line 313
    .local v3, "info":Lcom/mokee/helper/misc/ItemInfo;
    if-eqz v3, :cond_2

    .line 314
    invoke-virtual {v12, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 304
    .end local v3    # "info":Lcom/mokee/helper/misc/ItemInfo;
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private recordAvailableUpdates(Ljava/util/LinkedList;Landroid/content/Intent;)V
    .locals 29
    .param p2, "finishedIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mokee/helper/misc/ItemInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "availableUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    const/4 v15, 0x0

    .local v15, "lastUpdateCheckPref":Ljava/lang/String;
    const/16 v22, 0x0

    .line 118
    .local v22, "updateListUpdatedPref":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v24, v0

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 119
    const-string v15, "pref_last_update_check"

    .line 120
    const-string v22, "update_list_updated"

    .line 125
    :cond_0
    :goto_0
    if-nez p1, :cond_2

    .line 126
    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/service/UpdateCheckService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 236
    :goto_1
    return-void

    .line 121
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v24, v0

    const/16 v25, 0x401

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 122
    const-string v15, "pref_last_extras_check"

    .line 123
    const-string v22, "extras_list_updated"

    goto :goto_0

    .line 131
    :cond_2
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 132
    .local v9, "d":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v24, v0

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 133
    const-string v24, "downloader"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/service/UpdateCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v15, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    const-string v25, "boot_check_completed"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    :cond_3
    :goto_2
    const-string v24, "real_update_count"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 142
    .local v17, "realUpdateCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/service/UpdateCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/mokee/helper/MoKeeApplication;

    .line 145
    .local v5, "app":Lcom/mokee/helper/MoKeeApplication;
    const-string v24, "UpdateCheckService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "The update check successfully completed at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " and found "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " updates ("

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " newer than installed)"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz v17, :cond_a

    invoke-virtual {v5}, Lcom/mokee/helper/MoKeeApplication;->isMainActivityActive()Z

    move-result v24

    if-nez v24, :cond_a

    .line 152
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.mokee.mkupdater.action.MOKEE_CENTER"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v12, "i":Landroid/content/Intent;
    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v24, "download_flag"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const/16 v24, 0x0

    const/high16 v25, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 158
    .local v7, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/service/UpdateCheckService;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 159
    .local v19, "res":Landroid/content/res/Resources;
    const/high16 v24, 0x7f0d0000

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v17

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 163
    .local v20, "text":Ljava/lang/String;
    new-instance v24, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/service/UpdateCheckService;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x106005c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getColor(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    const v25, 0x7f020077

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    const v25, 0x7f0a0060

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    const v25, 0x7f0a0061

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 171
    .local v6, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 172
    .local v18, "realUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v24, v0

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 175
    const-string v24, "downloader"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/service/UpdateCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "pref_ota_check"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_4

    .line 176
    new-instance v24, Lcom/mokee/helper/service/UpdateCheckService$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mokee/helper/service/UpdateCheckService$1;-><init>(Lcom/mokee/helper/service/UpdateCheckService;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    :cond_4
    new-instance v24, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v14

    .line 193
    .local v14, "inbox":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const/4 v4, 0x0

    .local v4, "added":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v8

    .line 195
    .local v8, "count":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/mokee/helper/misc/ItemInfo;

    .line 196
    .local v21, "ui":Lcom/mokee/helper/misc/ItemInfo;
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v4, v0, :cond_5

    .line 197
    invoke-virtual/range {v21 .. v21}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 136
    .end local v4    # "added":I
    .end local v5    # "app":Lcom/mokee/helper/MoKeeApplication;
    .end local v6    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "count":I
    .end local v12    # "i":Landroid/content/Intent;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "inbox":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v17    # "realUpdateCount":I
    .end local v18    # "realUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "text":Ljava/lang/String;
    .end local v21    # "ui":Lcom/mokee/helper/misc/ItemInfo;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v24, v0

    const/16 v25, 0x401

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 137
    const-string v24, "downloader"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/service/UpdateCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-interface {v0, v15, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2

    .line 201
    .restart local v4    # "added":I
    .restart local v5    # "app":Lcom/mokee/helper/MoKeeApplication;
    .restart local v6    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v7    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "count":I
    .restart local v12    # "i":Landroid/content/Intent;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "inbox":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .restart local v17    # "realUpdateCount":I
    .restart local v18    # "realUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "text":Ljava/lang/String;
    :cond_7
    if-eq v4, v8, :cond_8

    .line 202
    const v24, 0x7f0d0001

    sub-int v25, v8, v4

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sub-int v28, v8, v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 204
    :cond_8
    invoke-virtual {v6, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 205
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v8, v0, :cond_9

    .line 208
    new-instance v12, Landroid/content/Intent;

    .end local v12    # "i":Landroid/content/Intent;
    const-class v24, Lcom/mokee/helper/receiver/DownloadReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .restart local v12    # "i":Landroid/content/Intent;
    const-string v24, "com.mokee.mkupdater.action.DOWNLOAD_START"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v24, "download_flag"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v25, "update_info"

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/Parcelable;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    const/16 v24, 0x0

    const/high16 v25, 0x48000000    # 131072.0f

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 216
    .local v10, "downloadIntent":Landroid/app/PendingIntent;
    const v24, 0x7f0200d7

    const v25, 0x7f0a0063

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 220
    new-instance v11, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 222
    .local v11, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    new-instance v24, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v25, 0x7f020038

    const v26, 0x7f0a0063

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v10}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual/range {v24 .. v24}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v23

    .line 226
    .local v23, "wearAction":Landroid/support/v4/app/NotificationCompat$Action;
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 227
    invoke-virtual {v6, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 231
    .end local v10    # "downloadIntent":Landroid/app/PendingIntent;
    .end local v11    # "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v23    # "wearAction":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_9
    const-string v24, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/mokee/helper/service/UpdateCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 232
    .local v16, "nm":Landroid/app/NotificationManager;
    const v24, 0x7f0a0061

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 234
    .end local v4    # "added":I
    .end local v6    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "count":I
    .end local v12    # "i":Landroid/content/Intent;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "inbox":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v16    # "nm":Landroid/app/NotificationManager;
    .end local v18    # "realUpdates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "text":Ljava/lang/String;
    :cond_a
    const-string v24, "download_flag"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    move/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    sget-object v24, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/mokee/helper/service/UpdateCheckService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 5
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v4, 0x0

    .line 382
    const-string v1, "Error: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mokee.mkupdater.action.UPDATE_CHECK_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mokee/helper/service/UpdateCheckService;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-static {p0}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "UpdateCheckService"

    const-string v1, "Could not check for updates. Not connected to the network."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "download_flag"

    const/16 v1, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    .line 112
    iget v0, p0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    invoke-direct {p0, v0}, Lcom/mokee/helper/service/UpdateCheckService;->getAvailableUpdates(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mokee/helper/service/UpdateCheckService;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 390
    const-string v3, "downloader"

    invoke-virtual {p0, v3, v5}, Lcom/mokee/helper/service/UpdateCheckService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_update_types"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 391
    .local v1, "updateType":I
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.mokee.mkupdater.action.UPDATE_CHECK_FINISHED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 393
    .local v2, "updates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/mokee/helper/misc/ItemInfo;>;"
    iget v3, p0, Lcom/mokee/helper/service/UpdateCheckService;->flag:I

    packed-switch v3, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/mokee/helper/service/UpdateCheckService;->parseUpdatesJSONObject(Ljava/lang/String;I)Ljava/util/LinkedList;

    move-result-object v2

    .line 396
    const-string v3, "download_flag"

    const/16 v4, 0x400

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v3, "update_count"

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v3, "real_update_count"

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v3, "new_update_count"

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    invoke-direct {p0, v2, v0}, Lcom/mokee/helper/service/UpdateCheckService;->recordAvailableUpdates(Ljava/util/LinkedList;Landroid/content/Intent;)V

    .line 401
    const-string v3, "mkupdater.state"

    invoke-static {p0, v2, v3}, Lcom/mokee/helper/misc/State;->saveMKState(Landroid/content/Context;Ljava/util/LinkedList;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mokee/helper/service/UpdateCheckService;->parseExtrasJSONObject(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    .line 405
    const-string v3, "download_flag"

    const/16 v4, 0x401

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v3, "update_count"

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-string v3, "real_update_count"

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v3, "new_update_count"

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    invoke-direct {p0, v2, v0}, Lcom/mokee/helper/service/UpdateCheckService;->recordAvailableUpdates(Ljava/util/LinkedList;Landroid/content/Intent;)V

    .line 410
    const-string v3, "mkextras.state"

    invoke-static {p0, v2, v3}, Lcom/mokee/helper/misc/State;->saveMKState(Landroid/content/Context;Ljava/util/LinkedList;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mokee.mkupdater.action.CANCEL_CHECK"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/mokee/helper/service/UpdateCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mokee/helper/MoKeeApplication;

    invoke-virtual {v0}, Lcom/mokee/helper/MoKeeApplication;->getQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const-string v1, "UpdateCheckService"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 98
    const/4 v0, 0x2

    .line 101
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
