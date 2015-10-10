.class public final Lcn/jpush/android/service/o;
.super Ljava/lang/Thread;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field a:Z

.field final synthetic b:Lcn/jpush/android/service/PushService;

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x29

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u000c)dl(`5vf%%#g$f2#dl544bq//(JA{"

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

    const/16 v9, 0x46

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

    const-string v1, "\u0005>jqf2#``/6/mbf7.ji#`*lj6lfwm4%\'gL\"`{#"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "#(-o655k+\'.\"qj/$hjk2%(w+\u0005\u000f\u0008M@\u0005\u0014\u000fLK"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u00103pm\u0015%4ul%%"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0005(w`4`%lk(%%wl).fwm4%\'gL\"`{#"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\t(jq{e\"\t"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u000c)dl(` bl*%\"9%"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "#4fd2%fpj%+#w% !*j`\"`1jq.`2kw#!\"Jaf}f"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u0012#`s{e\""

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u000c)dl(` bl*%\"/%2(4fd\"\t\"#8f"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "`f#%f`f#%f`*lb/.\u0019`j54/n`|`"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "0\'qv#\u000c#m%{`"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, ",)dl(` bl*`|#q)4)oI#.f>%"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "`{#"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "`(lqf%>jv23f9%/.5fw2"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, ",)dl(` bl*`|#I)\'/m8"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "qh;+v"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, ",)dl(\u001f4fu)22\\q/-#"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "\u001ch"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "3/g%{`"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "2#w%{`"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, ",)dl(` bl*`|#v)22\\n#9f>%"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, ",)dl(\u001f5fw0%4\\q/-#"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "`2lq),\nfkf}f"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "32jh#`{#"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "32qN#9f>%"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "3)qq\u0019+#z?"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\r\u00026"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "ev1]"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u000c)dl(}cg\u000f"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "`k#"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "3#qs#2\u0012jh#`{#"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "`f#%4%6lw2\u0014/n`f}f"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "`%bk(/2#u\'25f%5%4u`4\u0014/n`f"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "`f#q)4\'oI#.f>%"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "30fw5))m%{`"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "`f#f)-+bk\"`{#"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "\u000c)dl(zfnL\"`{# \"lfSd531lw\"`+g0f}f&v"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "`/p%#8/pq5`|#p6$\'w`"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, ",)dl(\u00023ec#2f>%"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "3)qq\u0019+#z%|`"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    return-void

    :pswitch_28
    const/16 v9, 0x40

    goto/16 :goto_2

    :pswitch_29
    const/16 v9, 0x46

    goto/16 :goto_2

    :pswitch_2a
    const/4 v9, 0x3

    goto/16 :goto_2

    :pswitch_2b
    const/4 v9, 0x5

    goto/16 :goto_2

    nop

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

.method public constructor <init>(Lcn/jpush/android/service/PushService;)V
    .locals 1

    iput-object p1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/service/o;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/o;->a:Z

    return-void
.end method

.method private a()I
    .locals 22

    const/4 v12, 0x0

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-byte v6, v3, v2

    sget-object v7, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v8, 0x1c

    aget-object v7, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v6, Lcn/jpush/android/service/PushService;->t:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v4, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v4, v3, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_15

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v3}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jpush/android/util/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const/16 v3, 0x80

    new-array v5, v3, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v3, v3, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v6, Lcn/jpush/android/service/PushService;->t:J

    int-to-long v10, v2

    invoke-static/range {v3 .. v11}, Lcn/jpush/android/service/PushProtocol;->LogPushWithBack(J[BJLjava/lang/String;Ljava/lang/String;J)I

    move-result v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/PushService;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/util/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v20, v6, v18

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v8, 0x28

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v4, v4, v8

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0x1e

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-eqz v14, :cond_1

    const/16 v2, 0x270f

    if-ne v14, v2, :cond_11

    :cond_1
    invoke-static {v5}, Lcn/jpush/android/util/a;->b([B)I

    move-result v2

    invoke-static {v5}, Lcn/jpush/android/util/a;->c([B)I

    move-result v8

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v7, 0x14

    aget-object v6, v6, v7

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v7, 0x24

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0x17

    aget-object v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0x27

    aget-object v4, v4, v6

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8}, Lcn/jpush/android/service/PushService;->a([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const/16 v2, 0x22

    if-ge v8, v2, :cond_2

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v7, 0x21

    aget-object v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x2

    if-ge v2, v6, :cond_3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v2, 0x14

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_9

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x4

    if-ge v2, v4, :cond_4

    const/16 v4, 0x8

    shl-long/2addr v6, v4

    add-int/lit8 v4, v2, 0x16

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v10, v4

    add-long/2addr v6, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v9, 0x13

    aget-object v4, v4, v9

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x2

    if-ge v2, v6, :cond_5

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v2, 0x1a

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v7, 0x23

    aget-object v6, v6, v7

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v6, v4

    move v4, v2

    :goto_4
    const/4 v2, 0x2

    if-ge v6, v2, :cond_6

    shl-int/lit8 v2, v4, 0x8

    add-int/lit8 v4, v6, 0x1c

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v2

    goto :goto_4

    :cond_6
    new-array v6, v4, [B

    const/4 v2, 0x0

    :goto_5
    array-length v7, v6

    if-ge v2, v7, :cond_7

    add-int/lit8 v7, v2, 0x1e

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v9, 0x19

    aget-object v7, v7, v9

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    add-int/lit8 v4, v4, 0x1e

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_6
    const/4 v9, 0x4

    if-ge v2, v9, :cond_8

    const/16 v9, 0x8

    shl-long/2addr v6, v9

    add-int v9, v4, v2

    aget-byte v9, v5, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v10, v9

    add-long/2addr v6, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v2, v4, 0x4

    if-ne v2, v8, :cond_10

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    :goto_7
    sput-wide v6, Lcn/jpush/android/service/PushService;->m:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    sput-wide v4, Lcn/jpush/android/service/PushService;->n:J

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x18

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcn/jpush/android/service/PushService;->m:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcn/jpush/android/service/PushService;->n:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v2}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x16

    aget-object v4, v4, v5

    sget-wide v6, Lcn/jpush/android/service/PushService;->m:J

    invoke-static {v2, v4, v6, v7}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v2}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v4, v4, v5

    sget-wide v6, Lcn/jpush/android/service/PushService;->n:J

    invoke-static {v2, v4, v6, v7}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_9
    move v8, v12

    :goto_8
    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v8, :cond_c

    const-wide/16 v4, 0x3e8

    cmp-long v2, v20, v4

    if-gtz v2, :cond_a

    const/4 v10, 0x1

    :cond_a
    const-wide/16 v4, 0x3e8

    cmp-long v2, v20, v4

    if-lez v2, :cond_b

    const-wide/16 v4, 0xbb8

    cmp-long v2, v20, v4

    if-gtz v2, :cond_b

    const/4 v11, 0x1

    :cond_b
    const-wide/16 v4, 0xbb8

    cmp-long v2, v20, v4

    if-lez v2, :cond_c

    const/4 v12, 0x1

    :cond_c
    new-instance v2, Lcn/jpush/android/data/u;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v4}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcn/jpush/android/data/u;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcn/jpush/android/data/u;->a()V

    invoke-virtual {v2, v3}, Lcn/jpush/android/data/u;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0x1a

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0x26

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Lcn/jpush/android/data/u;->b(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    if-nez v15, :cond_d

    :try_start_1
    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    :cond_d
    invoke-static {v15}, Lcn/jpush/android/data/u;->a(Landroid/database/Cursor;)Lcn/jpush/android/data/w;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-static {}, Lcn/jpush/android/service/PushService;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/jpush/android/util/a;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcn/jpush/android/data/w;->f()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4}, Lcn/jpush/android/data/w;->g()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4}, Lcn/jpush/android/data/w;->h()I

    move-result v13

    add-int/2addr v10, v13

    invoke-virtual {v4}, Lcn/jpush/android/data/w;->i()I

    move-result v13

    add-int/2addr v11, v13

    invoke-virtual {v4}, Lcn/jpush/android/data/w;->j()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v4}, Lcn/jpush/android/data/w;->k()I

    move-result v4

    add-int/lit8 v13, v4, 0x0

    move-object/from16 v4, v16

    invoke-virtual/range {v2 .. v13}, Lcn/jpush/android/data/u;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_9
    if-eqz v15, :cond_e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_a
    invoke-virtual {v2}, Lcn/jpush/android/data/u;->b()V

    :cond_f
    move v2, v14

    :goto_b
    sget-object v3, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    return v2

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v9, 0xb

    aget-object v5, v5, v9

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x22

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    goto/16 :goto_7

    :cond_11
    const/4 v8, 0x1

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v2, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_8

    :cond_12
    :try_start_2
    invoke-static {}, Lcn/jpush/android/util/x;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_9

    :catch_0
    move-exception v3

    move-object v3, v15

    :goto_c
    if-eqz v3, :cond_e

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_0
    move-exception v2

    move-object v15, v4

    :goto_d
    if-eqz v15, :cond_13

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v2

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0x1a

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    invoke-static {}, Lcn/jpush/android/service/PushService;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/jpush/android/util/a;->d()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v13, 0x0

    move-object/from16 v4, v16

    invoke-virtual/range {v2 .. v13}, Lcn/jpush/android/data/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)J

    goto/16 :goto_a

    :cond_15
    const/4 v2, -0x1

    goto/16 :goto_b

    :catchall_1
    move-exception v2

    goto :goto_d

    :catch_1
    move-exception v3

    move-object v3, v4

    goto :goto_c
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/16 v5, 0x270f

    const-wide/16 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-static {}, Lcn/jpush/android/service/PushService;->c()Z

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v0, v0, Lcn/jpush/android/service/PushService;->w:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v2, v1, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v2, v3}, Lcn/jpush/android/service/PushProtocol;->Close(J)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/jpush/android/service/PushService;->w:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcn/jpush/android/service/PushService;->E:I

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/PushService;->e(Z)V

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-static {}, Lcn/jpush/android/service/PushProtocol;->InitConn()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/jpush/android/service/PushService;->w:J

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v0, v0, Lcn/jpush/android/service/PushService;->w:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v2, v1, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v2, v3}, Lcn/jpush/android/service/PushProtocol;->Close(J)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/jpush/android/service/PushService;->w:J

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {}, Lcn/jpush/android/service/PushService;->h()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->f(Z)Z

    :cond_3
    invoke-static {}, Lcn/jpush/android/service/PushService;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcn/jpush/android/a;->l:Z

    if-eqz v0, :cond_c

    :cond_4
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->d()V

    :goto_2
    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcn/jpush/android/service/o;->a()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne v0, v5, :cond_e

    :cond_5
    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v3}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jpush/android/util/a;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;I)I

    invoke-static {}, Lcn/jpush/android/service/PushService;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-static {v1}, Lcn/jpush/android/service/PushService;->b(Lcn/jpush/android/service/PushService;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :try_start_3
    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1}, Lcn/jpush/android/service/PushService;->f()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    if-ne v0, v5, :cond_7

    :try_start_4
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    const/16 v1, 0x1770

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushService;->b(Lcn/jpush/android/service/PushService;I)V

    :cond_7
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    const/4 v1, 0x1

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcn/jpush/android/service/PushService;->a(ILjava/lang/String;)V

    :goto_4
    iget-boolean v0, p0, Lcn/jpush/android/service/o;->c:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v0, v0, Lcn/jpush/android/service/PushService;->w:J

    iget-object v2, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-object v2, v2, Lcn/jpush/android/service/PushService;->x:[B

    const v3, 0x15180

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/service/PushProtocol;->RecvPush(J[BI)I

    move-result v0

    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-lez v0, :cond_d

    invoke-static {}, Lcn/jpush/android/service/PushService;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-static {v1}, Lcn/jpush/android/service/PushService;->b(Lcn/jpush/android/service/PushService;)V

    :cond_8
    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v1, v0}, Lcn/jpush/android/service/PushService;->e(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    const-wide/16 v0, 0x64

    :try_start_5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jpush/android/service/o;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :cond_a
    :goto_6
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v0, v0, Lcn/jpush/android/service/PushService;->w:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_b

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v2, v1, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v2, v3}, Lcn/jpush/android/service/PushProtocol;->Close(J)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcn/jpush/android/service/PushService;->w:J

    :cond_b
    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->g()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x1

    :try_start_7
    sput-boolean v0, Lcn/jpush/android/a;->j:Z

    goto/16 :goto_2

    :cond_d
    const/16 v1, -0x3e2

    if-ne v0, v1, :cond_9

    goto :goto_5

    :cond_e
    sget-object v1, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    iget-wide v4, v3, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v4, v5}, Lcn/jpush/android/service/PushProtocol;->GetEsg(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_f

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->e()V

    goto :goto_6

    :cond_f
    if-gez v0, :cond_a

    iget-object v0, p0, Lcn/jpush/android/service/o;->b:Lcn/jpush/android/service/PushService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;J)J

    goto :goto_6

    :cond_10
    sget-object v0, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/o;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_6

    :catch_3
    move-exception v1

    goto/16 :goto_3
.end method
