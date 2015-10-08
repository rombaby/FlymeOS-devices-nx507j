.class public Lcom/mokee/cloud/location/CloudNumber;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field public static c:I

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "L85#1B;\u001130"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x54

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "h9\u00172\u000bu>\u0013#"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "d9\u001f$8d\u0008\u001d*;t3!*;b6\n/;o\u0008\u0012);j\"\u000e"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "*oH"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "h9\u00172\u000bu>\u0013#"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "U?\u000c#5ew\u001b>7t#\u001bf h:\u001b)!uv"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u6709\u511e\u622d\u5343\u510e\u53c9\u546e\u7225\u907a\u4ed2"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    return-void

    :pswitch_6
    const/4 v9, 0x1

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x57

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x7e

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x46

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p6}, Lcom/mokee/cloud/location/LocationUtils;->rewritePhoneLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneType(Ljava/lang/String;)Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/mokee/cloud/misc/CloudUtils;->inContactList(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    move-object v6, v0

    move-object v3, p5

    :goto_0
    invoke-static {v6}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v4

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-interface {p1, p4, v3, v6, v0}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V

    return-void

    :cond_0
    move-object v6, v0

    goto :goto_0
.end method

.method private static a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v0}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v4

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-interface {p0, p3, p4, v0, v1}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/mokee/cloud/location/CloudNumber;->b:Ljava/lang/String;

    return-void
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/mokee/cloud/location/CloudNumber;->a:Z

    return-void
.end method

.method public static declared-synchronized detect(Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/Context;Z)V
    .locals 15

    const-class v13, Lcom/mokee/cloud/location/CloudNumber;

    monitor-enter v13

    :try_start_0
    sget v14, Lcom/mokee/cloud/location/CloudNumber;->c:I

    invoke-static {p0}, Lcom/mokee/cloud/misc/CloudUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    sput-boolean v3, Lcom/mokee/cloud/location/CloudNumber;->a:Z

    invoke-static {}, Lcom/mokee/cloud/misc/CloudUtils;->hasAccessPermission()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    sget-object v3, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v13

    return-void

    :catch_0
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v13

    throw v2

    :cond_1
    :try_start_3
    invoke-static {v2, v4}, Lcom/mokee/cloud/location/LocationUtils;->getLocationInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/mokee/cloud/location/LocationInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Lcom/mokee/cloud/location/LocationInfo;->getUserMark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/mokee/cloud/location/LocationInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/mokee/cloud/location/LocationInfo;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeByID(I)Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    move-result-object v3

    sget-object v5, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    throw v2

    :cond_4
    invoke-static {}, Lcom/mokee/cloud/misc/CloudUtils;->inBlackList()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-wide/16 v8, 0x0

    invoke-interface {v5, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    :try_start_6
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v8, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v5, v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v14, :cond_7

    :cond_5
    const-wide/32 v8, 0x1ee62800

    add-long/2addr v8, v6

    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-ltz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v8

    cmp-long v5, v6, v8

    if-lez v5, :cond_7

    :cond_6
    :try_start_8
    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    sget-object v6, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v6}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v6

    sget-object v7, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v7}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v3, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    throw v2

    :catch_3
    move-exception v2

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    :try_start_9
    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v5

    if-eqz v5, :cond_8

    :try_start_a
    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const/4 v5, 0x1

    invoke-static {v5}, Landroid/mokee/utils/MoKeeUtils;->isSupportLanguage(Z)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v5

    if-nez v5, :cond_a

    :cond_9
    :try_start_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static/range {p2 .. p2}, Lcom/mokee/google/OfflineNumber;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Lcom/mokee/google/OfflineNumber;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v6}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v6

    sget-object v7, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v7}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v3, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_5
    move-exception v2

    :try_start_d
    throw v2

    :cond_a
    invoke-static {v4}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->getPhoneLocation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v10

    :try_start_e
    invoke-static/range {p2 .. p2}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    :try_start_f
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v5, Lcom/mokee/cloud/location/a;

    move/from16 v0, p3

    invoke-direct {v5, v4, v0}, Lcom/mokee/cloud/location/a;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v7

    if-eqz p3, :cond_e

    const/16 v5, 0x3a98

    :goto_1
    int-to-long v8, v5

    :try_start_10
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-boolean v5, Lcom/mokee/cloud/location/CloudNumber;->a:Z

    if-nez v5, :cond_b

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v14, :cond_d

    :cond_b
    :try_start_12
    sget-object v11, Lcom/mokee/cloud/location/CloudNumber;->b:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/mokee/cloud/location/CloudNumber;->a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v14, :cond_d

    :cond_c
    :try_start_13
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_d
    :goto_2
    :try_start_14
    sget-boolean v2, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, v14, 0x1

    sput v2, Lcom/mokee/cloud/location/CloudNumber;->c:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    :catch_6
    move-exception v2

    :try_start_15
    throw v2

    :catch_7
    move-exception v2

    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_e
    const/16 v5, 0xbb8

    goto :goto_1

    :catch_8
    move-exception v5

    :try_start_16
    sget-object v8, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lcom/mokee/cloud/location/CloudNumber;->d:[Ljava/lang/String;

    const/4 v11, 0x5

    aget-object v9, v9, v11

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :try_start_17
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-boolean v5, Lcom/mokee/cloud/location/CloudNumber;->a:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-nez v5, :cond_f

    :try_start_18
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_d

    :cond_f
    sget-object v11, Lcom/mokee/cloud/location/CloudNumber;->b:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/mokee/cloud/location/CloudNumber;->a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_2

    :catch_9
    move-exception v2

    :try_start_19
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :catchall_1
    move-exception v5

    move-object v12, v5

    :try_start_1a
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-boolean v5, Lcom/mokee/cloud/location/CloudNumber;->a:Z

    if-nez v5, :cond_10

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    if-eqz v14, :cond_11

    :cond_10
    :try_start_1b
    sget-object v11, Lcom/mokee/cloud/location/CloudNumber;->b:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/mokee/cloud/location/CloudNumber;->a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :cond_11
    :try_start_1c
    throw v12
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :catch_a
    move-exception v2

    :try_start_1d
    throw v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    :catch_b
    move-exception v2

    :try_start_1e
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :catch_c
    move-exception v2

    :try_start_1f
    throw v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :catch_d
    move-exception v2

    :try_start_20
    throw v2
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_e
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :catch_e
    move-exception v2

    :try_start_21
    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
.end method
