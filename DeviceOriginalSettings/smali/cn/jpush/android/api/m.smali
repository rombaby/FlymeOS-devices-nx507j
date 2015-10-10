.class public final Lcn/jpush/android/api/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x29

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, " 8z\u0014\u0015\u0015&`\u0013\u0014,!l\u0006\t#\'a8\u0014)\'a"

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

    const/16 v9, 0x7d

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

    const-string v1, "\u0018lk\u0015\u001c=)m\u000b\u0018"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "9<n\u0013\u0018\u0015*n\u0015\"#%n\u0000\u0018\u0015>f\u0002\n"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\'-|\u0014\u001c--P\u000e\u0010+/j8\u000e>){\u0002\"()}8\u0011+1`\u0012\t"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0018lc\u0006\u0004%={"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0018lf\u0003"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "++{\u000e\u0012$rl\u000b\u0018+&A\u0008\t#.f\u0004\u001c>!`\t]gha\u0008\t#.f\u0004\u001c>!`\t4.r"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "$\'{\u000e\u001b#+n\u0013\u0014%&"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "++{\u000e\u0012$rl\u000b\u0018+&A\u0008\t#.f\u0004\u001c>!`\t]ghb\u0002\u000e9)h\u00024.r"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "d\u001a"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, ":)}\u0006\u0010/<j\u0015]8-|3\u0004:-/\u0008\u000fj.f\u0002\u0011.\u0006n\n\u00189hj\u0015\u000f%:!"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "d8j\u0015\u0010#;|\u000e\u0012$fE7(\u0019\u0000P*8\u0019\u001bN 8"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.ff\t\t/&{I3\u0005\u001cF!4\t\t[.2\u0004\u0017]\">\u000f\u0001Y\"9"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "\u0004\'{\u000e\u001b#+n\u0013\u0014%&G\u0002\u0011:-}"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, ",!c\u0002Geg"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fG30\u0006\u0017]\"."

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\"<{\u0017Geg"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fA()\u0003\u000eF$<\u001e\u0001@)\"\u000e\rY\"1\u0005\u0018J5\"\u000b\u001aHW"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fG30\u0006\u0017_&)\u0002"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u0019-a\u0003]:=|\u000f]8-l\u0002\u0014<-kG\u001f8\'n\u0003\u001e+;{G\t%hk\u0002\u000b/$`\u0017\u00188hk\u0002\u001b#&j\u0003]8-l\u0002\u0014<-}"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fA()\u0003\u000eF$<\u001e\u0001@)\"\u0003\u000c"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u0019=l\u0004\u0018/,/\u0013\u0012j$`\u0006\u0019j!b\u0006\u001a/h\"G"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, ".\'x\u0006\u0013&\'n\u0003],$`\u0006\tj8g\u0008\t%hi\u0006\u0014&-k\uff6b\u0014\')h\u0002(8$5G"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "++{\u000e\u0012$rl\u000b\u0018+&N\u000b\u0011\u0004\'{\u000e\u001b#+n\u0013\u0014%&/J]\'-|\u0014\u001c--F\u0003G"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.ff\t\t/&{I.\u0002\u0007X8;\u0006\u0007N3\"\u001c\u0001J0\"\u000b\u000b[.2\u0004"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "(\'k\u001e"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "e!l\u0008\u0013"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fB4:\u0015\u0001K"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fN+8\u0018\u001c"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fA()\u0003\u000eF$<\u001e\u0001@)\"\u001e\u0011_\""

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.ff\t\t/&{I.\u0013\u001b[\"0\u0015\u000eZ+1\u0019\u000b]\"8\u0004\u0017N$)\u0003\u0007A"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "+8\u007f"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.ff\t\t/&{I3\u0005\u001cF!4\t\t[.2\u0004\u0017@78\u0004\rK8-\u0018\u0007W>S"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "$\'{\u000e\u001b++{\u000e\u0012$\u0017a\u0012\u0010"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.ff\t\t/&{I.\u0013\u001b[\"0\u0015\u000eZ+1\u0019\u000b]\"8\u0004\u0017L&)\u000f\u000f@5$"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "\r\'{G3\u001f\u0004CG\u0013%<f\u0001\u0014)){\u000e\u0012$f/ \u0014<-/\u0012\rj<`G\u000e\"\'xI"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fJ?)\u0018\t"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.ff\t\t/&{I3\u0005\u001cF!4\t\t[.2\u0004\u0017@78\u0004\rK"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.fA()\u0003\u000eF$<\u001e\u0001@)\"\t\u0007A38\u0004\u001cP34\u001e\u0004J"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, ")&!\r\r?;gI\u001c$,}\u0008\u0014.f_2.\u0002\u0017F#"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, ".\'x\t\u0011%)kG\u000e>){\u0012\u000ej!l\u0008\u0013j.n\u000e\u0011/,\uff03\u000e\u0010+/j2\u000f&r/"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    return-void

    :pswitch_28
    const/16 v9, 0x4a

    goto/16 :goto_2

    :pswitch_29
    const/16 v9, 0x48

    goto/16 :goto_2

    :pswitch_2a
    const/16 v9, 0xf

    goto/16 :goto_2

    :pswitch_2b
    const/16 v9, 0x67

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
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
        :pswitch_27
    .end packed-switch
.end method

.method public static a(I)I
    .locals 5

    const v1, 0x1080072

    const v0, 0x1080052

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    :try_start_0
    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_1

    :pswitch_2
    const v0, 0x108008f

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    const v0, 0x108003f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcn/jpush/android/data/d;I)I
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/jpush/android/data/d;->d:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/d;->d:Ljava/lang/String;

    :cond_0
    invoke-static {v0, p1}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    if-gez v0, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_2
    const v1, 0xd3ee80

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    if-gez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/data/d;ZZ)Landroid/app/Notification;
    .locals 10

    const/4 v3, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x100

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-gez v0, :cond_1

    iget v0, p3, Lcn/jpush/android/data/d;->x:I

    invoke-static {v0}, Lcn/jpush/android/api/m;->a(I)I

    move-result v0

    :cond_1
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Landroid/app/Notification;->when:J

    iput v0, v4, Landroid/app/Notification;->icon:I

    iget-object v0, p3, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    iput-object v0, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v0, p3, Lcn/jpush/android/data/d;->z:I

    invoke-static {v0}, Lcn/jpush/android/api/m;->b(I)I

    move-result v0

    iput v0, v4, Landroid/app/Notification;->flags:I

    iget v0, p3, Lcn/jpush/android/data/d;->p:I

    packed-switch v0, :pswitch_data_0

    move v0, v3

    :goto_1
    iput v0, v4, Landroid/app/Notification;->defaults:I

    iget-boolean v0, p3, Lcn/jpush/android/data/d;->h:Z

    if-eqz v0, :cond_2

    iput v9, v4, Landroid/app/Notification;->defaults:I

    invoke-static {p0}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v8, v4, Landroid/app/Notification;->defaults:I

    :cond_2
    if-eqz p5, :cond_3

    const/high16 v0, 0x8000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    :goto_2
    iget-object v0, p3, Lcn/jpush/android/data/d;->Q:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, p3, Lcn/jpush/android/data/d;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v1, v1, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v5, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_4

    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v5, v6, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v2, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v0, v4

    :goto_4
    return-object v0

    :catch_0
    move-exception v4

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    goto/16 :goto_1

    :pswitch_1
    move v0, v2

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, -0x1

    goto/16 :goto_1

    :pswitch_3
    move v0, v3

    goto/16 :goto_1

    :cond_3
    const/high16 v0, 0x8000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_2

    :cond_4
    :try_start_2
    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    invoke-static {}, Lcn/jpush/android/util/x;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget-object v0, p3, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    iget-object v1, p3, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    invoke-virtual {v4, p0, v0, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v5, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    :goto_0
    sget-object v0, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcn/jpush/android/api/m;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    sub-int v2, v0, p1

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v0, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcn/jpush/android/api/m;->b(Landroid/content/Context;I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/d;)V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lcn/jpush/android/service/PushService;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jpush/android/api/n;

    invoke-direct {v1, p0, p1}, Lcn/jpush/android/api/n;-><init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/api/m;->b(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/d;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1, p2}, Lcn/jpush/android/api/m;->a(Lcn/jpush/android/data/d;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/d;ZZ)V
    .locals 11

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/jpush/android/api/m;->a(Lcn/jpush/android/data/d;I)I

    move-result v2

    iget-boolean v0, p1, Lcn/jpush/android/data/d;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Lcn/jpush/android/data/d;->e:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    instance-of v1, p1, Lcn/jpush/android/data/s;

    if-eqz v1, :cond_3

    iget-object v6, p1, Lcn/jpush/android/data/d;->B:Ljava/lang/String;

    iget-object v3, p1, Lcn/jpush/android/data/d;->A:Ljava/lang/String;

    iget-object v5, p1, Lcn/jpush/android/data/d;->l:Ljava/lang/String;

    iget-object v1, p1, Lcn/jpush/android/data/d;->m:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v7, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v8, 0x27

    aget-object v7, v7, v8

    iget-object v8, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v8, 0x1b

    aget-object v7, v7, v8

    iget-object v8, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v8, 0x1c

    aget-object v7, v7, v8

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v8, 0x26

    aget-object v7, v7, v8

    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v5}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v7, 0x24

    aget-object v3, v3, v7

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v5}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v7, 0x24

    aget-object v3, v3, v7

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v6}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/d;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v4, p1, Lcn/jpush/android/data/d;->m:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget v3, p1, Lcn/jpush/android/data/d;->f:I

    invoke-static {v3}, Lcn/jpush/android/api/JPushInterface;->b(I)Lcn/jpush/android/api/PushNotificationBuilder;

    move-result-object v5

    invoke-interface {v5}, Lcn/jpush/android/api/PushNotificationBuilder;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v1}, Lcn/jpush/android/api/PushNotificationBuilder;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {v6}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->f()Z

    move-result v5

    if-nez v5, :cond_e

    const-class v5, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcn/jpush/android/util/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v10, 0x20

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v8, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v8, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v9, 0x1d

    aget-object v8, v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p1, Lcn/jpush/android/data/d;->g:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-static {v5, v1, v2}, Lcn/jpush/android/api/m;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    sget-object v8, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v9, 0x1c

    aget-object v8, v8, v9

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v6, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v8, 0x1f

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v8, 0x11

    aget-object v6, v6, v8

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {p0, v6, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    :goto_3
    iput-object v5, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget v5, p1, Lcn/jpush/android/data/d;->f:I

    invoke-static {v5}, Lcn/jpush/android/api/JPushInterface;->a(I)Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    iget v6, p1, Lcn/jpush/android/data/d;->g:I

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    iput v5, p1, Lcn/jpush/android/data/d;->z:I

    :cond_7
    iget v5, p1, Lcn/jpush/android/data/d;->z:I

    invoke-static {v5}, Lcn/jpush/android/api/m;->b(I)I

    move-result v5

    iput v5, v7, Landroid/app/Notification;->flags:I

    iget v5, v7, Landroid/app/Notification;->defaults:I

    if-nez v5, :cond_8

    const/4 v5, 0x3

    iput v5, v7, Landroid/app/Notification;->defaults:I

    :cond_8
    invoke-static {p0}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    iput v5, v7, Landroid/app/Notification;->defaults:I

    :cond_9
    invoke-virtual {v0, v2, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sget-object v5, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget v5, p1, Lcn/jpush/android/data/d;->g:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    sget-object v5, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_a
    sget-object v5, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    sget-object v6, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v7, 0x21

    aget-object v6, v6, v7

    const v7, 0x7fffffff

    invoke-static {p0, v6, v7}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-le v5, v6, :cond_b

    :try_start_0
    sget-object v5, Lcn/jpush/android/api/m;->a:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_b
    :goto_4
    const/4 v0, 0x1

    iget v5, p1, Lcn/jpush/android/data/d;->g:I

    if-eq v0, v5, :cond_c

    iget-object v0, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    const/16 v5, 0x3fa

    invoke-static {v0, v5, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_c
    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/d;)V

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v5, Landroid/content/Intent;

    sget-object v8, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v9, 0x25

    aget-object v8, v8, v9

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;Z)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {p0, v2, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_4

    :cond_f
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p1, Lcn/jpush/android/data/d;->R:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    iget-object v1, p1, Lcn/jpush/android/data/d;->R:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v1, v1, v4

    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x22

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/data/d;ZZ)Landroid/app/Notification;

    move-result-object v1

    move-object v3, v1

    :goto_5
    instance-of v1, p1, Lcn/jpush/android/data/s;

    if-eqz v1, :cond_11

    move-object v1, p1

    check-cast v1, Lcn/jpush/android/data/s;

    iget-object v1, v1, Lcn/jpush/android/data/s;->S:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    :cond_11
    if-nez v3, :cond_13

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    goto/16 :goto_1

    :cond_12
    invoke-static {p0, p1, p3}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;Z)Landroid/content/Intent;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;ILandroid/content/Intent;Lcn/jpush/android/data/d;ZZ)Landroid/app/Notification;

    move-result-object v1

    move-object v3, v1

    goto :goto_5

    :cond_13
    if-nez p2, :cond_14

    iget-object v1, p1, Lcn/jpush/android/data/d;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Lcn/jpush/android/api/p;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4, v3, v0}, Lcn/jpush/android/api/p;-><init>(Landroid/os/Looper;Landroid/app/Notification;Landroid/app/NotificationManager;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lcn/jpush/android/data/d;->y:Ljava/lang/String;

    new-instance v4, Lcn/jpush/android/api/o;

    invoke-direct {v4, v1, v2, p1}, Lcn/jpush/android/api/o;-><init>(Lcn/jpush/android/api/p;ILcn/jpush/android/data/d;)V

    invoke-static {v3, v0, v4}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/util/p;)V

    goto/16 :goto_1

    :cond_14
    iget-object v1, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    const/16 v4, 0x3fa

    invoke-static {v1, v4, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcn/jpush/android/api/m;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Lcn/jpush/android/data/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/jpush/android/data/d;",
            ")V"
        }
    .end annotation

    const/16 v4, 0xe

    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, p2}, Lcn/jpush/android/api/m;->a(Landroid/content/Intent;Ljava/util/Map;I)V

    invoke-static {p3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p5}, Lcn/jpush/android/data/d;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p5, Lcn/jpush/android/data/s;

    if-eqz v0, :cond_5

    move-object v0, p5

    check-cast v0, Lcn/jpush/android/data/s;

    iget-object v2, v0, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    :cond_1
    sget-object v2, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    iget-object v3, v0, Lcn/jpush/android/data/s;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcn/jpush/android/data/s;->Z:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcn/jpush/android/data/s;->Z:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p5, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Lcn/jpush/android/util/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcn/jpush/android/data/s;->Z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v5, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v6, 0x10

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v0}, Lcn/jpush/android/util/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v0, v0, v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {v1, p4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Intent;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x10

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x20

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez p0, :cond_0

    sget-object p0, Lcn/jpush/android/a;->d:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcn/jpush/android/data/d;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcn/jpush/android/data/d;->t:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcn/jpush/android/data/d;->u:Z

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcn/jpush/android/data/d;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)Lcn/jpush/android/data/d;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/jpush/android/data/d;->u:Z

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    iget v0, p1, Lcn/jpush/android/data/d;->D:I

    if-ltz v0, :cond_4

    invoke-static {p0, p1}, Lcn/jpush/android/api/m;->d(Landroid/content/Context;Lcn/jpush/android/data/d;)Lcn/jpush/android/data/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcn/jpush/android/api/m;->c(Landroid/content/Context;Lcn/jpush/android/data/d;)Lcn/jpush/android/data/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v2, v2}, Lcn/jpush/android/api/m;->a(Landroid/content/Context;Lcn/jpush/android/data/d;ZZ)V

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Lcn/jpush/android/data/d;)Lcn/jpush/android/data/d;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/jpush/android/data/d;->r:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcn/jpush/android/data/d;->s:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v1, p1, Lcn/jpush/android/data/d;->r:Ljava/lang/String;

    const/4 v2, 0x5

    const-wide/16 v4, 0x1388

    const/4 v3, 0x4

    invoke-static {v1, v2, v4, v5, v3}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p1, Lcn/jpush/android/data/d;->r:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lcn/jpush/android/data/d;->r:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lcn/jpush/android/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcn/jpush/android/util/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p1, Lcn/jpush/android/data/d;->Q:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcn/jpush/android/data/d;->s:Z

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jpush/android/data/d;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    move-object p1, v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Lcn/jpush/android/data/d;)Lcn/jpush/android/data/d;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcn/jpush/android/data/d;->G:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v1, p1, Lcn/jpush/android/data/d;->G:Ljava/lang/String;

    const/4 v2, 0x5

    const-wide/16 v4, 0x1388

    const/4 v3, 0x4

    invoke-static {v1, v2, v4, v5, v3}, Lcn/jpush/android/util/n;->a(Ljava/lang/String;IJI)[B

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p1, Lcn/jpush/android/data/d;->G:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p1, Lcn/jpush/android/data/d;->G:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-static {p0, v4}, Lcn/jpush/android/util/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, p0}, Lcn/jpush/android/util/m;->a(Ljava/lang/String;[BLandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v2, p1, Lcn/jpush/android/data/d;->H:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    move-object p1, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/m;->z:[Ljava/lang/String;

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jpush/android/data/d;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    move-object p1, v0

    goto :goto_0
.end method
