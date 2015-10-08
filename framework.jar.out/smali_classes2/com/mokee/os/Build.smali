.class public Lcom/mokee/os/Build;
.super Ljava/lang/Object;


# static fields
.field public static final BUILD_DATE:J

.field public static final BUILD_HOST:Ljava/lang/String;

.field public static final BUILD_USER:Ljava/lang/String;

.field public static final MOKEE_VERSION:Ljava/lang/String;

.field public static final PRODUCT_NAME:Ljava/lang/String;

.field public static final SDK_LEVEL:I

.field public static final UNKNOWN:Ljava/lang/String;

.field private static final a:[Ljava/lang/String;

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "o\u0018uLLM\u0018"

    const/4 v0, 0x3

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

    const/16 v9, 0x23

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

    :pswitch_0
    sput-object v1, Lcom/mokee/os/Build;->UNKNOWN:Ljava/lang/String;

    const-string v1, "o\u0018uLLM\u0018"

    const/4 v0, -0x1

    goto :goto_0

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

    const-string v1, "J\u001eqLF"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "M\u001fxK\rS\u0018jGQ\\\u0017}G"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "w2+"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/os/Build;->a:[Ljava/lang/String;

    const-string v1, "H\u00190@VS\u001az\u000cVI\u0013l"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_5

    :cond_3
    move-object v4, v1

    move v5, v3

    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_4
    aget-char v7, v2, v3

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_2

    const/16 v6, 0x23

    :goto_5
    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    if-nez v1, :cond_4

    move-object v2, v4

    move v5, v3

    move v3, v1

    goto :goto_4

    :pswitch_4
    const/16 v9, 0x3a

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x76

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x1e

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x22

    goto :goto_2

    :cond_4
    move v2, v1

    move-object v1, v4

    :cond_5
    if-gt v2, v3, :cond_3

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    packed-switch v0, :pswitch_data_3

    const-string v1, "o\u0018uLLM\u0018"

    const/4 v0, -0x1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v2, v4, :cond_8

    :cond_6
    move-object v4, v1

    move v5, v3

    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_7
    aget-char v8, v2, v3

    rem-int/lit8 v6, v5, 0x5

    packed-switch v6, :pswitch_data_4

    const/16 v6, 0x23

    :goto_8
    xor-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    if-nez v1, :cond_7

    move-object v2, v4

    move v5, v3

    move v3, v1

    goto :goto_7

    :pswitch_8
    const/16 v6, 0x3a

    goto :goto_8

    :pswitch_9
    const/16 v6, 0x76

    goto :goto_8

    :pswitch_a
    const/16 v6, 0x1e

    goto :goto_8

    :pswitch_b
    const/16 v6, 0x22

    goto :goto_8

    :cond_7
    move v2, v1

    move-object v1, v4

    :cond_8
    if-gt v2, v3, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_5

    invoke-static {v7, v1}, Lcom/mokee/os/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/os/Build;->BUILD_USER:Ljava/lang/String;

    const-string v1, "H\u00190@VS\u001az\u000cKU\u0005j"

    const/4 v0, 0x0

    goto/16 :goto_3

    :pswitch_c
    const/16 v6, 0x3a

    goto :goto_5

    :pswitch_d
    const/16 v6, 0x76

    goto :goto_5

    :pswitch_e
    const/16 v6, 0x1e

    goto :goto_5

    :pswitch_f
    const/16 v6, 0x22

    goto :goto_5

    :pswitch_10
    const-string v1, "o\u0018uLLM\u0018"

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_11
    invoke-static {v7, v1}, Lcom/mokee/os/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/os/Build;->BUILD_HOST:Ljava/lang/String;

    const-string v1, "H\u00190OH\u0014\u0012{TJY\u0013"

    const/4 v0, 0x1

    goto/16 :goto_3

    :pswitch_12
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/mokee/os/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/os/Build;->PRODUCT_NAME:Ljava/lang/String;

    const-string v1, "H\u00190OH\u0014\u0000{PPS\u0019p"

    const/4 v0, 0x2

    goto/16 :goto_3

    :pswitch_13
    const-string v1, "o\u0018uLLM\u0018"

    const/4 v0, 0x1

    goto :goto_6

    :pswitch_14
    invoke-static {v7, v1}, Lcom/mokee/os/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/os/Build;->MOKEE_VERSION:Ljava/lang/String;

    const-string v1, "H\u00190@VS\u001az\u000cU_\u0004mKLTXmFH"

    const/4 v0, 0x3

    goto/16 :goto_3

    :pswitch_15
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/mokee/os/Build;->SDK_LEVEL:I

    const-string v1, "H\u00190@VS\u001az\u000cG[\u0002{\u000cVN\u0015"

    const/4 v0, 0x4

    goto/16 :goto_3

    :pswitch_16
    const-wide/16 v0, 0x0

    invoke-static {v7, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/mokee/os/Build;->BUILD_DATE:J

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/mokee/os/Build;->a:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mokee/os/Build;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/os/Build;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/mokee/os/Build;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/mokee/os/Build;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/mokee/os/Build;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method
