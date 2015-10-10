.class public final Lcn/jpush/android/util/n;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x29

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "#\u007f\u0015s\u0008,&\u0005u\u0010,p\u000e{\u0003\u000bq\u0000}\u0002b1Ao\u0015.&"

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

    const/16 v9, 0x67

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

    const-string v1, "\rh\t\u007f\u0015bk\u0013u\t%<\u0013\u007f\u00142s\u000fi\u0002bo\u0015{\u00137oA7G"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, ",s\u0015:\u0006!\u007f\u0004j\u0013#~\r\u007f]v,W:Jb"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "#\u007f\u0015s\u0008,&\tn\u00132O\u0008w\u0017.y&\u007f\u0013b1A"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0011y\u0013l\u00020<\u0004h\u0015-nA7G"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "!s\u000f|\u000b+\u007f\u0015 Sr%A7G"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "0y\u0010o\u00021hAn\u000e/y\u000eo\u0013x(Q\"Go<"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u0001}\u0015y\u000fb]\u0012i\u00020h\u0008u\t\u0007n\u0013u\u0015bh\u000e:\u00064s\u0008~G*h\u0015jG!p\u000ei\u0002b\u007f\u0013{\u0014*<L:"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "~ \u0004h\u0015-n_$"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0010y\u0010o\u00021hAt\u00086<\u0000o\u0013*s\u0013s\u001d\'x[.Ws<L:"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0010y\u0010o\u00021hAj\u00066tA~\u0008\'oAt\u00086<\u0004b\u000e1h[:Sr(A7G"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u0011y\u0013l\u00020<\u0013\u007f\u00142s\u000fi\u0002bz\u0000s\u000b7n\u0004 Sr,A7G"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u0017H\'7_"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "~ \u0007{\u000e.y\u0005$Y"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "n<\u0014h\u000bx"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "\u0001p\u000ei\u0002"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "~ \u0007{\u000e.y\u0005E\u0010+h\tE\u0015\'h\u0013s\u00021\"_"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "\u0001s\u000ft\u0002!h\u0008u\t"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "1y\u0013l\u00020<\u0013\u007f\u00142s\u000fi\u0002bz\u0000s\u000b7n\u0004:Jb"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "\u0001s\u000fn\u0002,hLV\u0002,{\u0015r"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "#\u007f\u0015s\u0008,&\tn\u00132[\u0004nGo<"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "\u0008L4I/oO%Q"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "~ \u000f\u007f\u00135s\u0013q\u00020n\u000ehY|"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "#l\u0011v\u000e!}\u0015s\u0008,3\u000bi\u0008,"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u001a1 j\u0017oW\u0004c"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "%f\u0008j"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "1h\u0000n\u00121<\u0002u\u0003\'&"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "\u0000}\u0012s\u0004b"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "!q\u0016{\u0017"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u0001p\u0008\u007f\t6L\u0013u\u0013-\u007f\u000ev\":\u007f\u0004j\u0013+s\u000f "

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "\u000bS$b\u0004\'l\u0015s\u0008,&\u0005\u007f\u00057{"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "\u0003\u007f\u0002\u007f\u001761$t\u0004-x\u0008t\u0000"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "!s\u000ft\u0002!h\u0008l\u000e6e"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "7r\u0008m\u00062"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "\u0003\u007f\u0002\u007f\u00176"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "*h\u0015jI0s\u0014n\u0002lx\u0004|\u00067p\u00157\u00170s\u0019c"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "\u0001s\u000fn\u0002,hL_\t!s\u0005s\t%"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "s,O*Ir2P-U"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "\u0003i\u0015r\u00080u\u001b{\u0013+s\u000f"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "#r\u0005h\u0008+xOj\u00020q\u0008i\u0014+s\u000f4&\u0001_$I4\u001dR$N0\rN*E4\u0016]5_"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "q{\u0016{\u0017"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/util/n;->a:Z

    return-void

    :pswitch_28
    const/16 v9, 0x42

    goto/16 :goto_2

    :pswitch_29
    const/16 v9, 0x1c

    goto/16 :goto_2

    :pswitch_2a
    const/16 v9, 0x61

    goto/16 :goto_2

    :pswitch_2b
    const/16 v9, 0x1a

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

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Z)I
    .locals 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x4

    const/16 v11, 0x19

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/jpush/android/util/ac;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x27

    aget-object v1, v1, v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v1, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-eq v1, v5, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x1c

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x28

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x21

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x23

    aget-object v1, v1, v8

    new-instance v8, Lorg/apache/http/HttpHost;

    sget-object v9, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v10, 0x25

    aget-object v9, v9, v10

    const/16 v10, 0x50

    invoke-direct {v8, v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_2
    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v0, -0x2

    goto/16 :goto_0

    :cond_4
    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x22

    aget-object v1, v1, v8

    sget-object v8, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v9, 0x17

    aget-object v8, v8, v9

    invoke-virtual {v6, v1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x1f

    aget-object v1, v1, v8

    sget-object v8, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v6, v1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x24

    aget-object v1, v1, v8

    sget-object v8, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v6, v1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x18

    aget-object v1, v1, v8

    invoke-static {p0}, Lcn/jpush/android/util/a;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_5

    invoke-static {p0}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v1, v4

    :goto_2
    if-nez v1, :cond_8

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v0, -0x3

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ac;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lcn/jpush/android/util/ac;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v1, v4

    goto :goto_2

    :cond_7
    sget-object v4, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v8, 0x26

    aget-object v4, v4, v8

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v10, 0x1b

    aget-object v9, v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    goto :goto_2

    :cond_8
    :try_start_0
    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sparse-switch v0, :sswitch_data_0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/16 v0, 0x1f4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :sswitch_0
    const/16 v0, 0xc8

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcn/jpush/android/util/x;->e()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v0, 0x191

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x194

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x1ad

    goto/16 :goto_0

    :cond_9
    const/4 v0, -0x5

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :goto_3
    move v0, v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0x1e

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_3

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
        0x194 -> :sswitch_2
        0x1ad -> :sswitch_3
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-wide/16 v0, 0xc8

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    const-wide/16 p2, 0x7d0

    :cond_1
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcn/jpush/android/util/n;->a:Z

    invoke-static {}, Lcn/jpush/android/util/n;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/4 v0, 0x0

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_7

    const/16 v3, 0x12c

    if-ge v1, v3, :cond_7

    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    :try_start_4
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v0, v1, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    :cond_5
    :goto_2
    :try_start_5
    invoke-static {p2, p3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_6
    invoke-static {}, Lcn/jpush/android/util/x;->g()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    :try_start_8
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_5
    throw v0

    :catch_6
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->i()V

    goto :goto_5

    :cond_7
    const/16 v2, 0x190

    if-lt v1, v2, :cond_d

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_d

    const/16 v2, 0x190

    if-ne v2, v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_8
    const/16 v2, 0x191

    if-ne v2, v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x194

    if-ne v2, v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x196

    if-ne v2, v1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x198

    if-ne v2, v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x199

    if-ne v2, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_d
    const/16 v0, 0x1f4

    if-lt v1, v0, :cond_e

    const/16 v0, 0x258

    if-ge v1, v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3
.end method

.method public static a()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    const/16 v3, 0x7530

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/util/p;)V
    .locals 4

    const-class v1, Lcn/jpush/android/util/n;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    const-string v2, ""

    invoke-interface {p2, v0, v2}, Lcn/jpush/android/util/p;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/jpush/android/util/o;

    invoke-direct {v3, v0, p1, p2}, Lcn/jpush/android/util/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/util/p;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;IJI)[B
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x5

    const-wide/16 v2, 0x1388

    invoke-static {p0, v0, v2, v3}, Lcn/jpush/android/util/n;->b(Ljava/lang/String;IJ)[B

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;IJ)[B
    .locals 10

    const/16 v8, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    if-le p1, v8, :cond_1

    :cond_0
    move p1, v3

    :cond_1
    const-wide/16 v4, 0xc8

    cmp-long v2, p2, v4

    if-ltz v2, :cond_2

    const-wide/32 v4, 0xea60

    cmp-long v2, p2, v4

    if-lez v2, :cond_3

    :cond_2
    const-wide/16 p2, 0x7d0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v5, 0x14

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v5, 0x11

    aget-object v2, v2, v5

    sget-object v5, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :goto_0
    const/4 v5, 0x1

    :try_start_1
    sput-boolean v5, Lcn/jpush/android/util/n;->a:Z

    invoke-static {}, Lcn/jpush/android/util/n;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v4, v2, :cond_e

    :try_start_2
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-nez v2, :cond_7

    :try_start_3
    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_1
    return-object v0

    :catch_0
    move-exception v5

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p1, :cond_6

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_1

    :cond_6
    int-to-long v6, v2

    mul-long/2addr v6, p2

    :try_start_5
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_1

    :cond_7
    :try_start_6
    sget-object v3, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-interface {v5, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v3, v1

    :goto_3
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    if-nez v3, :cond_a

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_4

    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_1

    :cond_8
    move-object v3, v0

    goto :goto_2

    :cond_9
    move v3, v1

    goto :goto_3

    :cond_a
    :try_start_8
    array-length v4, v1

    if-ge v4, v3, :cond_b

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_4

    :try_start_9
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_1

    :cond_b
    if-eqz v2, :cond_c

    :try_start_a
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_c
    :goto_4
    move-object v0, v1

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v1, v0

    :goto_5
    :try_start_b
    invoke-static {}, Lcn/jpush/android/util/x;->h()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v1, :cond_4

    :try_start_c
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_1

    :catch_7
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_d

    :try_start_d
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_d
    :goto_7
    throw v0

    :catch_8
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_7

    :cond_e
    const/16 v1, 0x190

    if-ne v1, v2, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0x194

    if-ne v1, v2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_1

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/util/n;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_9
    move-exception v1

    move-object v1, v2

    goto :goto_5

    :catch_a
    move-exception v1

    goto/16 :goto_1
.end method
