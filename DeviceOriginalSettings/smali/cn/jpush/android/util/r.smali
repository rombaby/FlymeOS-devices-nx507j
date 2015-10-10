.class public final Lcn/jpush/android/util/r;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field protected a:I

.field protected b:Z

.field private c:I

.field private d:I

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Landroid/content/Context;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/jpush/android/data/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x14

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "BB\u0002_em|?]rg|\u0019pgd~\u0008J"

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

    const/4 v9, 0x2

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

    const-string v1, "\u4e02\u62ab\u6a4c\u5f37\uff18"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "dk\u001b]n{"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "ea\t]"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "xk\u001fQml"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u653e\u523e\u6760\u5299\u4e09\u53d9\u6309\u4e89\uff22"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "xo\u000eSg|"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u89eb\u679e\u595c\u8d1d\uff18"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u5f08\u59c5\u898e\u67a8,& "

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u65ed\u5fd9\u7b24\u7e9f\uff18"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "|g\u0000]"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u4e02\u62ab\u5405\u6727\uff18"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u89eb\u679e\u627d\u52a7"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u9ed0\u8baa\u5368\u591f\u5c0d\uff12?]\n68"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u65ed\u5fd9\u594a\u5c37\uff18"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u5261\u4f57\u659b\u95cc\uff18"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "az\u0004Ug"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "ka\u0003Lgfz"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "b~\u0018KjWb\u0002_em|"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "|w\u001d]"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    return-void

    :pswitch_13
    const/16 v9, 0x8

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0xe

    goto/16 :goto_2

    :pswitch_15
    const/16 v9, 0x6d

    goto/16 :goto_2

    :pswitch_16
    const/16 v9, 0x38

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
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
        :pswitch_12
    .end packed-switch
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcn/jpush/android/util/r;->c:I

    iput v1, p0, Lcn/jpush/android/util/r;->d:I

    iput-wide v2, p0, Lcn/jpush/android/util/r;->e:J

    iput-wide v2, p0, Lcn/jpush/android/util/r;->f:J

    iput-wide v2, p0, Lcn/jpush/android/util/r;->g:J

    iput-wide v2, p0, Lcn/jpush/android/util/r;->h:J

    iput v1, p0, Lcn/jpush/android/util/r;->a:I

    iput-boolean v1, p0, Lcn/jpush/android/util/r;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcn/jpush/android/util/r;->a:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/jpush/android/util/r;->a:I

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcn/jpush/android/util/r;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/jpush/android/util/r;->a:I

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lcn/jpush/android/util/r;->a:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcn/jpush/android/util/r;->a:I

    goto :goto_0

    :sswitch_3
    iget v1, p0, Lcn/jpush/android/util/r;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcn/jpush/android/util/r;->a:I

    goto :goto_0

    :sswitch_4
    iget v1, p0, Lcn/jpush/android/util/r;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcn/jpush/android/util/r;->a:I

    goto :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_4
        0x69 -> :sswitch_2
        0x76 -> :sswitch_1
        0x77 -> :sswitch_3
    .end sparse-switch
.end method

.method private b()V
    .locals 3

    invoke-direct {p0}, Lcn/jpush/android/util/r;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/util/r;->i:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/jpush/android/util/ac;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-boolean v2, p0, Lcn/jpush/android/util/r;->b:Z

    iput v2, p0, Lcn/jpush/android/util/r;->d:I

    iput-wide v0, p0, Lcn/jpush/android/util/r;->h:J

    iput-wide v0, p0, Lcn/jpush/android/util/r;->e:J

    iput-wide v0, p0, Lcn/jpush/android/util/r;->f:J

    iput v2, p0, Lcn/jpush/android/util/r;->a:I

    iput-wide v0, p0, Lcn/jpush/android/util/r;->g:J

    const/4 v0, 0x2

    iput v0, p0, Lcn/jpush/android/util/r;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/util/r;->i:Landroid/content/Context;

    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private d()Lorg/json/JSONObject;
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/data/f;

    invoke-virtual {v0}, Lcn/jpush/android/data/f;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v3, 0x10

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

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    iget-boolean v0, p0, Lcn/jpush/android/util/r;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/util/r;->g:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/jpush/android/util/r;->h:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/util/r;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/jpush/android/util/r;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/util/r;->f:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/jpush/android/util/r;->e:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/util/r;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/jpush/android/util/r;->f:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Lcn/jpush/android/util/r;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/util/r;->b:Z

    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/util/r;->c()V

    :cond_0
    iput-object p1, p0, Lcn/jpush/android/util/r;->i:Landroid/content/Context;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    iput v3, p0, Lcn/jpush/android/util/r;->c:I

    :cond_1
    :goto_0
    invoke-direct {p0, v2}, Lcn/jpush/android/util/r;->a(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v10

    iput-wide v4, p0, Lcn/jpush/android/util/r;->h:J

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcn/jpush/android/util/r;->c:I

    if-ne v1, v8, :cond_4

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v10

    iput-wide v0, p0, Lcn/jpush/android/util/r;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/util/r;->f:J

    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/jpush/android/util/r;->e:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/jpush/android/util/r;->h:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcn/jpush/android/util/r;->c:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/util/r;->g:J

    iput-boolean v8, p0, Lcn/jpush/android/util/r;->b:Z

    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    :try_start_1
    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput v3, p0, Lcn/jpush/android/util/r;->c:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcn/jpush/android/util/r;->c()V

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    aget-object v1, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :try_start_2
    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected final a(Lcn/jpush/android/data/f;)V
    .locals 10

    iget-boolean v0, p0, Lcn/jpush/android/util/r;->b:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcn/jpush/android/util/r;->d:I

    invoke-virtual {p1}, Lcn/jpush/android/data/f;->a()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcn/jpush/android/util/r;->d:I

    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jpush/android/data/f;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/r;->z:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcn/jpush/android/util/r;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/jpush/android/util/r;->g:J

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcn/jpush/android/util/r;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    :cond_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/jpush/android/util/r;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/jpush/android/util/r;->h:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/util/r;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/jpush/android/util/r;->f:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/jpush/android/util/r;->e:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-object v2, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/util/r;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/jpush/android/util/r;->f:J

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/jpush/android/util/r;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/jpush/android/util/r;->h:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    invoke-direct {p0}, Lcn/jpush/android/util/r;->c()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcn/jpush/android/util/r;->d:I

    int-to-long v2, v0

    const-wide/16 v4, 0x2800

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    invoke-direct {p0}, Lcn/jpush/android/util/r;->b()V

    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lcn/jpush/android/data/f;->a()I

    move-result v0

    iput v0, p0, Lcn/jpush/android/util/r;->d:I

    :cond_4
    iget-object v0, p0, Lcn/jpush/android/util/r;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
