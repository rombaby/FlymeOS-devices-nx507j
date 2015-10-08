.class public Lcom/mokee/mms/utils/CaptchasUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;

.field public static f:I

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "H\u001d{+!Wk@[q2"

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

    const/16 v9, 0x5b

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

    const-string v1, "H\u001d*+bKl>"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "M\'7|\u001a;\u001c*+bJhG-"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "M\u4e467\u9fa3\u0006"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "Mv7?\u00078\u001b1"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/mms/utils/CaptchasUtils;->g:[Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u9a9a\u8b87\u781b"

    const/4 v0, 0x4

    move-object v4, v3

    goto :goto_0

    :pswitch_4
    const/16 v9, 0x16

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x46

    goto :goto_2

    :pswitch_6
    const/16 v9, 0x1a

    goto :goto_2

    :pswitch_7
    const/4 v9, 0x6

    goto :goto_2

    :pswitch_8
    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\u6837\u9aca\u781b"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u6fd6\u6d7d\u781b"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u7878\u8be2\u781b"

    const/4 v0, 0x7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u68d6\u9aca\u781b"

    const/16 v0, 0x8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u9a9a\u8b87\u4ef9\u7807"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u6fd6\u6d7d\u4ef9\u7807"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u6837\u9aca\u4ef9\u7807"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u52be\u6047\u4ef9\u7807"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u91db\u7f28\u4ef9\u7807"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u68d6\u9aca\u4ef9\u7807"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u7878\u8be2\u4ef9\u7807"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u77fb\u4fa7\u53f9\u4ee2"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u52be\u6047\u5bdc\u7807"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u4eb2\u6655\u781b"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u9a41\u8b0f\u78a6"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u6fd6\u6d7d\u78a6"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u52c3\u610d\u78a6"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u6837\u9a11\u78a6"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u6ab4\u9a11\u78a6"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\u9a41\u8b0f\u4ef9\u78ba"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u6fd6\u6d7d\u4ef9\u78ba"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u6837\u9a11\u4ef9\u78ba"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "\u78ac\u8acb\u4ef9\u78ba"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u52c3\u610d\u4ef9\u78ba"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u6ab4\u9a11\u4ef9\u78ba"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "U\t^C"

    const/16 v0, 0x1e

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "u)~c"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/mms/utils/CaptchasUtils;->b:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "\u662f"

    aput-object v1, v3, v0

    const/4 v2, 0x1

    const-string v1, "\u753e\u4f1a"

    const/16 v0, 0x20

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/mms/utils/CaptchasUtils;->c:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u5c28\u53b1\u4e20"

    const/16 v0, 0x21

    move-object v4, v3

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\u5377\u53b1\u5414\u56dd\u4f16\uff0c"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/mms/utils/CaptchasUtils;->d:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5143"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->e:[Ljava/lang/String;

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
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/mokee/mms/utils/CaptchasUtils;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/mokee/mms/utils/CaptchasUtils;->g:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xc

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v4, Lcom/mokee/mms/utils/CaptchasUtils;->b:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-lt v1, v5, :cond_1

    move-object v0, v3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    aget-object v6, v4, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    sget v8, Lcom/mokee/mms/utils/CaptchasUtils;->f:I

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xc

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xc

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sget-object v9, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    array-length v10, v9

    const/4 v4, 0x0

    if-eqz v8, :cond_9

    :cond_2
    aget-object v6, v9, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v7, 0x1

    sget-object v12, Lcom/mokee/mms/utils/CaptchasUtils;->d:[Ljava/lang/String;

    array-length v13, v12

    const/4 v6, 0x0

    if-eqz v8, :cond_5

    :cond_3
    aget-object v14, v12, v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v7, 0x0

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    if-lt v6, v13, :cond_3

    if-eqz v7, :cond_b

    sget-object v7, Lcom/mokee/mms/utils/CaptchasUtils;->e:[Ljava/lang/String;

    array-length v12, v7

    const/4 v6, 0x0

    if-eqz v8, :cond_a

    move/from16 v16, v6

    move-object v6, v5

    move/from16 v5, v16

    :cond_6
    aget-object v13, v7, v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v8, :cond_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :goto_0
    if-lt v5, v12, :cond_6

    :cond_8
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-object v5, v6

    :cond_9
    if-lt v4, v10, :cond_2

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_a
    move/from16 v16, v6

    move-object v6, v5

    move/from16 v5, v16

    goto :goto_0

    :cond_b
    move-object v6, v5

    goto :goto_1
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0xc

    if-le v0, v3, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x6

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v6, Lcom/mokee/mms/utils/CaptchasUtils;->c:[Ljava/lang/String;

    array-length v7, v6

    move v5, v1

    :goto_1
    if-lt v5, v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    aget-object v4, v6, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v8, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    array-length v9, v8

    move v4, v1

    :goto_2
    if-lt v4, v9, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_3
    aget-object v10, v8, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static isCaptchasEnMessage(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Lcom/mokee/mms/utils/CaptchasUtils;->b:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isCaptchasMessage(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isChineseContains(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/mokee/mms/utils/CaptchasUtils;->g:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-string v2, "\u3010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u3011"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u3002"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method public static tryToGetCnCaptchas(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, -0x1

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->g:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v0, ""

    move v1, v2

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x3

    if-le v3, v5, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/mokee/mms/utils/CaptchasUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/mokee/mms/utils/CaptchasUtils;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    if-ne v1, v2, :cond_3

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;)I

    move-result v3

    if-le v3, v1, :cond_4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public static tryToGetEnCaptchas(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->g:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
