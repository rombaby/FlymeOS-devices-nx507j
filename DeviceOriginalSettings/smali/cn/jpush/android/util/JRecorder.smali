.class public Lcn/jpush/android/util/JRecorder;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static c:Landroid/content/Context;

.field private static d:Landroid/os/Handler;

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jpush/android/util/v;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Z

.field private static final z:[Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jpush/android/util/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "qm\u0004<Ew(\u0011=Vad\u00117\u00179"

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

    const/16 v9, 0x37

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

    const-string v1, "qm\u0017<Egx\u0011!^ll"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "qm\u0004<Ew(\u0010:Dbj\u00186S#j\rs\r"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "j|\u001d>R"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "g}\u00062Cjg\u001a"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "l~\u0011![bq"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "qi\u001a4R"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "wq\u00046"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "qm\u0017<EgW\u0000*Gf"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "iz\u00110Xql\u0011!"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "qm\u0017<Eg}\u001a:Cp"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "jf\u0017!Rbe\u0011=C"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/JRecorder;->a:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/util/JRecorder;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/util/JRecorder;->f:Z

    return-void

    :pswitch_b
    const/4 v9, 0x3

    goto/16 :goto_2

    :pswitch_c
    const/16 v9, 0x8

    goto/16 :goto_2

    :pswitch_d
    const/16 v9, 0x74

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x53

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
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
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/jpush/android/util/JRecorder;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/jpush/android/util/JRecorder;->d:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcn/jpush/android/util/JRecorder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/JRecorder;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/util/JRecorder;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/jpush/android/util/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/jpush/android/util/v;-><init>(Lcn/jpush/android/util/JRecorder;B)V

    iput p1, v0, Lcn/jpush/android/util/v;->a:I

    iget-object v1, p0, Lcn/jpush/android/util/JRecorder;->b:Ljava/util/ArrayList;

    iput-object v1, v0, Lcn/jpush/android/util/v;->b:Ljava/util/ArrayList;

    sget-object v1, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/jpush/android/util/JRecorder;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jpush/android/util/w;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v6, v0, Lcn/jpush/android/util/w;->a:J

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v8, v0, Lcn/jpush/android/util/w;->a:J

    sub-long/2addr v6, v8

    move v2, v3

    move v0, v3

    :goto_1
    if-ge v2, v5, :cond_2

    int-to-double v8, v0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v10, v0, Lcn/jpush/android/util/w;->b:D

    add-double/2addr v8, v10

    double-to-int v4, v8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    :cond_2
    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v2, v2, v4

    sget-object v4, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v2, v2, v4

    int-to-double v4, v0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v6, v0, Lcn/jpush/android/util/w;->b:D

    sub-double/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 12

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

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

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/JRecorder;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/jpush/android/util/u;

    invoke-direct {v2, v1}, Lcn/jpush/android/util/u;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v0, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/v;

    iget v3, v0, Lcn/jpush/android/util/v;->a:I

    if-nez v3, :cond_4

    iget-object v0, v0, Lcn/jpush/android/util/v;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcn/jpush/android/util/JRecorder;->a(Ljava/util/ArrayList;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget v3, v0, Lcn/jpush/android/util/v;->a:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    iget-object v5, v0, Lcn/jpush/android/util/v;->b:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    move-object v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_6

    move-object v0, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v8, v0, Lcn/jpush/android/util/w;->a:J

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v10, v0, Lcn/jpush/android/util/w;->a:J

    sub-long/2addr v8, v10

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v0, v0, v7

    sget-object v7, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v7, v7, v10

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v0, v0, v7

    invoke-virtual {v3, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v7, v0, v7

    add-int/lit8 v0, v6, -0x1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v8, v0, Lcn/jpush/android/util/w;->b:D

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/w;

    iget-wide v10, v0, Lcn/jpush/android/util/w;->b:D

    sub-double/2addr v8, v10

    invoke-virtual {v3, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-object v0, v3

    goto :goto_3

    :cond_7
    invoke-static {}, Lcn/jpush/android/util/JRecorder;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/util/JRecorder;D)V
    .locals 5

    iget-object v1, p0, Lcn/jpush/android/util/JRecorder;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcn/jpush/android/util/w;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/jpush/android/util/w;-><init>(Lcn/jpush/android/util/JRecorder;B)V

    iput-wide p1, v0, Lcn/jpush/android/util/w;->b:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jpush/android/util/w;->a:J

    iget-object v2, p0, Lcn/jpush/android/util/JRecorder;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Z)Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/util/JRecorder;->f:Z

    return v0
.end method

.method private static b()V
    .locals 2

    sget-object v0, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/v;

    iget-object v0, v0, Lcn/jpush/android/util/v;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/jpush/android/util/JRecorder;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static getIncreamentsRecorder(Landroid/content/Context;)Lcn/jpush/android/util/JRecorder;
    .locals 2

    new-instance v0, Lcn/jpush/android/util/JRecorder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcn/jpush/android/util/JRecorder;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method public static getSuperpositionRecorder(Landroid/content/Context;)Lcn/jpush/android/util/JRecorder;
    .locals 2

    new-instance v0, Lcn/jpush/android/util/JRecorder;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcn/jpush/android/util/JRecorder;-><init>(ILandroid/content/Context;)V

    return-object v0
.end method

.method public static parseRecordCommand(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    sget-boolean v0, Lcn/jpush/android/util/JRecorder;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sput-boolean v1, Lcn/jpush/android/util/JRecorder;->f:Z

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v1, Lcn/jpush/android/util/JRecorder;->d:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcn/jpush/android/util/JRecorder;->d:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcn/jpush/android/util/JRecorder;->d:Landroid/os/Handler;

    new-instance v2, Lcn/jpush/android/util/t;

    invoke-direct {v2}, Lcn/jpush/android/util/t;-><init>()V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v6, Lcn/jpush/android/util/JRecorder;->f:Z

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/JRecorder;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0
.end method


# virtual methods
.method public record(I)V
    .locals 2

    sget-boolean v0, Lcn/jpush/android/util/JRecorder;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/util/JRecorder;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jpush/android/util/s;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/util/s;-><init>(Lcn/jpush/android/util/JRecorder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
