.class public final enum Lcn/jpush/android/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/jpush/android/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/jpush/android/c;

.field public static final enum b:Lcn/jpush/android/c;

.field public static final enum c:Lcn/jpush/android/c;

.field public static final enum d:Lcn/jpush/android/c;

.field public static final enum e:Lcn/jpush/android/c;

.field public static final enum f:Lcn/jpush/android/c;

.field public static final enum g:Lcn/jpush/android/c;

.field public static final enum h:Lcn/jpush/android/c;

.field public static final enum i:Lcn/jpush/android/c;

.field public static final enum j:Lcn/jpush/android/c;

.field public static final enum k:Lcn/jpush/android/c;

.field public static final enum l:Lcn/jpush/android/c;

.field public static final enum m:Lcn/jpush/android/c;

.field public static final enum n:Lcn/jpush/android/c;

.field public static final enum o:Lcn/jpush/android/c;

.field public static final enum p:Lcn/jpush/android/c;

.field public static final enum q:Lcn/jpush/android/c;

.field public static final enum r:Lcn/jpush/android/c;

.field private static final synthetic s:[Lcn/jpush/android/c;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x12

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00060\u0010ri\u0011/\u001cyc\u0008/\u001e"

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

    const/16 v9, 0x27

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

    const-string v1, "\u000e7\tbt\r?\u0014sx\t3\u001exr\u0011"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00029\rto\u00042\u0017rk\u000c8k"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00102\u000br`\u00064\u0018yi\u00005\u001d"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u000e7\tbt\r#\u001drq\u000c?\u001cch\u000e9\u0017hu\u0000,\u0016es"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u000e7\tbt\r?\u0014sx\u0011=\u001ehf\t=\u0010d"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00019\u001ato\u00042\u0017rk\u000c8"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u000e7\tbt\r?\u0014sx\u0015)\n\u007fx\u00115\u0014r"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00089\ndf\u00029\u001cs"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00029\rto\u00042\u0017rk\u000c8"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00019\u001ato\u00042\u0017rk\u000c8k"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00002\u0018uk\u0000?\u0011yi\u00000\u0010s"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u000e7\tbt\r?\u0014sx\u0015)\n\u007fx\u000b9\u000e"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u000e7\tbt\r?\u0014sx\t3\u001e~i"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00089\ndf\u00029"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u000e7\tbt\r?\u0014sx\r=\u000bce\u0000=\r"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u000e7\tbt\r?\u0014sx\u00179\u001e"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u000e7\tbt\r?\u0014sx\u0008=\u0001"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->a:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->b:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->c:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->d:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->e:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->f:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->g:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->h:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->i:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->j:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->k:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->l:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->m:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->n:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->o:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->p:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->q:Lcn/jpush/android/c;

    new-instance v0, Lcn/jpush/android/c;

    sget-object v1, Lcn/jpush/android/c;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcn/jpush/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jpush/android/c;->r:Lcn/jpush/android/c;

    const/16 v0, 0x12

    new-array v0, v0, [Lcn/jpush/android/c;

    const/4 v1, 0x0

    sget-object v2, Lcn/jpush/android/c;->a:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/jpush/android/c;->b:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/jpush/android/c;->c:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/jpush/android/c;->d:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcn/jpush/android/c;->e:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcn/jpush/android/c;->f:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/jpush/android/c;->g:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/jpush/android/c;->h:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/jpush/android/c;->i:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/jpush/android/c;->j:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/jpush/android/c;->k:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcn/jpush/android/c;->l:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcn/jpush/android/c;->m:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcn/jpush/android/c;->n:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcn/jpush/android/c;->o:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcn/jpush/android/c;->p:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcn/jpush/android/c;->q:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcn/jpush/android/c;->r:Lcn/jpush/android/c;

    aput-object v2, v0, v1

    sput-object v0, Lcn/jpush/android/c;->s:[Lcn/jpush/android/c;

    return-void

    :pswitch_11
    const/16 v9, 0x45

    goto/16 :goto_2

    :pswitch_12
    const/16 v9, 0x7c

    goto/16 :goto_2

    :pswitch_13
    const/16 v9, 0x59

    goto/16 :goto_2

    :pswitch_14
    const/16 v9, 0x37

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
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
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jpush/android/c;
    .locals 1

    const-class v0, Lcn/jpush/android/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/c;

    return-object v0
.end method

.method public static values()[Lcn/jpush/android/c;
    .locals 1

    sget-object v0, Lcn/jpush/android/c;->s:[Lcn/jpush/android/c;

    invoke-virtual {v0}, [Lcn/jpush/android/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/jpush/android/c;

    return-object v0
.end method
