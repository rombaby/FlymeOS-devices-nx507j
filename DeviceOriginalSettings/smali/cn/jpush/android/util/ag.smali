.class public final Lcn/jpush/android/util/ag;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x13

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ")$C\"v?9\u0005fu>+\u0019!u>#\u000e;(-&\u0002*g&\u0006\u000c;r\u0018/\u001d\'t>\u001e\u0004%c"

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

    const/4 v9, 0x6

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

    const-string v1, "9?\u000e+c/.2<i:"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, ",+\u0004$c.\u0015\u0019\'v"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "33\u00141+\u0007\u0007@,b"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "&%\n!h\u0015,\u000c!j/."

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "9.\u0006\u0017o$.\u00080"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "#>\u0004%c"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "&%\n!h\u0015>\u0002<g&"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, ".+\u0019-"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, ">3\u001d-"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "9%\u0018:e/"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, ">#\u0000-u"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "&%\u000e)j\u0015.\u0003;"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, ")%\u0003&Y#:"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "$/\u0019"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "9?\u000e+c992,c>+\u0004$u"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, ")%\u0018&r\u0015z2y"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, ")%\u0018&r\u0015{2{"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, ")%\u0018&r\u0015y2"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    return-void

    :pswitch_12
    const/16 v9, 0x4a

    goto/16 :goto_2

    :pswitch_13
    const/16 v9, 0x4a

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0x6d

    goto/16 :goto_2

    :pswitch_15
    const/16 v9, 0x48

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Lcn/jpush/android/data/w;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->h()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->i()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->j()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 12

    const/4 v2, 0x0

    const-wide/16 v10, 0x3e8

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcn/jpush/android/a;->j:Z

    if-eqz v0, :cond_8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v1, v1, v3

    sget-wide v4, Lcn/jpush/android/service/PushService;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    sget-wide v8, Lcn/jpush/android/service/PushService;->n:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v1, v1, v3

    sget-object v3, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v1, v1, v3

    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-static {p0}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;)J

    move-result-wide v6

    mul-long/2addr v6, v10

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lcn/jpush/android/data/u;

    invoke-direct {v3, p0}, Lcn/jpush/android/data/u;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcn/jpush/android/data/u;->a()V

    sget-object v1, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v1, v1, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcn/jpush/android/data/u;->a(Z)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/jpush/android/data/u;->a(Z)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Lcn/jpush/android/data/u;->d()Landroid/database/Cursor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_2
    :try_start_1
    invoke-static {v1}, Lcn/jpush/android/data/u;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/w;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcn/jpush/android/data/w;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_4
    sget-object v5, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3}, Lcn/jpush/android/data/u;->e()Landroid/database/Cursor;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_5
    :try_start_3
    invoke-static {v1}, Lcn/jpush/android/data/u;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/w;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcn/jpush/android/data/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_6
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_7
    sget-object v2, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcn/jpush/android/data/u;->b()V

    invoke-static {p0, v0}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v10

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ag;->a(Landroid/content/Context;J)V

    new-instance v0, Lcn/jpush/android/data/u;

    invoke-direct {v0, p0}, Lcn/jpush/android/data/u;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jpush/android/data/u;->a()V

    invoke-virtual {v0}, Lcn/jpush/android/data/u;->c()V

    invoke-virtual {v0}, Lcn/jpush/android/data/u;->b()V

    goto/16 :goto_0

    :cond_9
    :try_start_4
    invoke-static {v5}, Lcn/jpush/android/util/ag;->b(Lcn/jpush/android/data/w;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_4
    :try_start_5
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_a
    :try_start_6
    invoke-static {v2}, Lcn/jpush/android/util/ag;->a(Lcn/jpush/android/data/w;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1, p2}, Lcn/jpush/android/util/ah;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 4

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/util/ah;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static b(Lcn/jpush/android/data/w;)Lorg/json/JSONObject;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/ag;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/data/w;->g()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
