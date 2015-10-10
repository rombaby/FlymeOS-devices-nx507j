.class public Lcn/jpush/android/util/c;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v0, "Si\u001a3CEs~"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-gt v1, v7, :cond_3

    move v2, v3

    :cond_0
    move-object v4, v0

    move v5, v2

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_0
    aget-char v8, v1, v2

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_0

    const/16 v6, 0x10

    :goto_1
    xor-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v1, v2

    add-int/lit8 v2, v5, 0x1

    if-nez v0, :cond_1

    move-object v1, v4

    move v5, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v4

    :goto_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/c;->z:Ljava/lang/String;

    const-class v0, Lcn/jpush/android/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2

    move v3, v7

    :cond_2
    sput-boolean v3, Lcn/jpush/android/util/c;->a:Z

    return-void

    :pswitch_0
    const/4 v6, 0x6

    goto :goto_1

    :pswitch_1
    const/16 v6, 0x3a

    goto :goto_1

    :pswitch_2
    const/16 v6, 0x37

    goto :goto_1

    :pswitch_3
    const/16 v6, 0x72

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/16 v1, 0xa

    array-length v3, p0

    new-instance v4, Lcn/jpush/android/util/e;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcn/jpush/android/util/e;-><init>(I[B)V

    div-int/lit8 v1, v3, 0x3

    mul-int/lit8 v1, v1, 0x4

    iget-boolean v5, v4, Lcn/jpush/android/util/e;->d:Z

    if-eqz v5, :cond_2

    rem-int/lit8 v5, v3, 0x3

    if-lez v5, :cond_0

    add-int/lit8 v1, v1, 0x4

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v5, v4, Lcn/jpush/android/util/e;->e:Z

    if-eqz v5, :cond_4

    if-lez v3, :cond_4

    add-int/lit8 v5, v3, -0x1

    div-int/lit8 v5, v5, 0x39

    add-int/lit8 v5, v5, 0x1

    iget-boolean v6, v4, Lcn/jpush/android/util/e;->f:Z

    if-eqz v6, :cond_1

    const/4 v0, 0x2

    :cond_1
    mul-int/2addr v0, v5

    add-int/2addr v0, v1

    :goto_1
    new-array v1, v0, [B

    iput-object v1, v4, Lcn/jpush/android/util/e;->a:[B

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {v4, p0, v1, v3, v5}, Lcn/jpush/android/util/e;->a([BIIZ)Z

    sget-boolean v1, Lcn/jpush/android/util/c;->a:Z

    if-nez v1, :cond_3

    iget v1, v4, Lcn/jpush/android/util/e;->b:I

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_2
    :try_start_1
    rem-int/lit8 v5, v3, 0x3

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    iget-object v0, v4, Lcn/jpush/android/util/e;->a:[B

    sget-object v1, Lcn/jpush/android/util/c;->z:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
