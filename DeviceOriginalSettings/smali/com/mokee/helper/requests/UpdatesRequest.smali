.class public Lcom/mokee/helper/requests/UpdatesRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "UpdatesRequest.java"


# instance fields
.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 0
    .param p1, "method"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p5, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p4, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 44
    iput-object p3, p0, Lcom/mokee/helper/requests/UpdatesRequest;->mUserAgent:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mokee/helper/requests/UpdatesRequest;->mUserAgent:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 51
    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/mokee/helper/requests/UpdatesRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/mokee/helper/MoKeeApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 56
    .local v3, "mLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "country":Ljava/lang/String;
    const-string v4, "Accept-Language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v1
.end method

.method protected getParams()Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/mokee/helper/MoKeeApplication;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "downloader"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 68
    .local v14, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->getMoKeeVersionType()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "MoKeeVersionType":Ljava/lang/String;
    const-string v17, "experimental"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 70
    .local v4, "isExperimental":Z
    const-string v17, "unofficial"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 71
    .local v7, "isUnofficial":Z
    const-string v17, "history"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 72
    .local v5, "isHistory":Z
    const-string v17, "experimental_show"

    move-object/from16 v0, v17

    invoke-interface {v14, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 73
    .local v3, "experimentalShow":Z
    const-string v17, "pref_update_types"

    invoke-static {v2}, Lcom/mokee/helper/utils/Utils;->getUpdateType(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 74
    .local v16, "updateType":I
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    if-nez v3, :cond_0

    .line 75
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "experimental_show"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_update_types"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    const/16 v16, 0x0

    .line 78
    :cond_0
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    if-nez v7, :cond_1

    .line 79
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_update_types"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    const/16 v16, 0x0

    .line 83
    :cond_1
    const-string v17, "pref_ota_check"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 84
    .local v6, "isOTA":Z
    if-eqz v6, :cond_4

    const-string v17, "pref_ota_check_manual"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_4

    .line 85
    sget-object v17, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/mokee/helper/utils/Utils;->subBuildDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 86
    .local v8, "nowDate":Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v17, "yyMMdd"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v15, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v15, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 89
    .local v12, "nowVersionDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 90
    .local v10, "nowSystemDate":J
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-nez v7, :cond_4

    .line 91
    :cond_2
    invoke-static {v2}, Lcom/mokee/helper/utils/Utils;->getVersionLifeTime(Ljava/lang/String;)J

    move-result-wide v18

    add-long v18, v18, v12

    cmp-long v17, v18, v10

    if-ltz v17, :cond_3

    invoke-static {}, Lcom/mokee/helper/MoKeeApplication;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/mokee/helper/utils/Utils;->getPaidTotal(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    const/high16 v18, 0x41f00000    # 30.0f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_4

    .line 92
    :cond_3
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_ota_check"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v6, 0x0

    .line 99
    .end local v8    # "nowDate":Ljava/lang/String;
    .end local v10    # "nowSystemDate":J
    .end local v12    # "nowVersionDate":J
    .end local v15    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_0
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "pref_ota_check_manual"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 100
    const-string v17, "device_name"

    sget-object v18, Lcom/mokee/os/Build;->PRODUCT_NAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v17, "device_version"

    sget-object v18, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v17, "build_user"

    sget-object v18, Lcom/mokee/os/Build;->BUILD_USER:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    if-nez v6, :cond_5

    .line 104
    const-string v17, "device_officail"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v17, "rom_all"

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_5
    return-object v9

    .line 96
    .restart local v8    # "nowDate":Ljava/lang/String;
    .restart local v15    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v17

    goto :goto_0
.end method
