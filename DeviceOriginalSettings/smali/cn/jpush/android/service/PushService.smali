.class public Lcn/jpush/android/service/PushService;
.super Landroid/app/Service;


# static fields
.field public static A:Z

.field public static B:Ljava/lang/String;

.field public static C:Z

.field public static D:Z

.field public static E:I

.field private static K:J

.field private static L:J

.field private static M:Z

.field private static N:Z

.field private static O:Ljava/lang/String;

.field private static P:Z

.field private static Q:Ljava/lang/String;

.field private static R:I

.field private static S:Ljava/lang/String;

.field private static T:Ljava/lang/String;

.field private static U:I

.field private static V:I

.field private static W:Ljava/lang/String;

.field public static a:J

.field private static ac:Z

.field private static ad:Z

.field private static ae:I

.field private static ag:Z

.field private static ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ar:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcn/jpush/android/data/e;",
            ">;"
        }
    .end annotation
.end field

.field private static as:Ljava/lang/String;

.field private static at:Ljava/lang/String;

.field private static au:Ljava/lang/String;

.field public static b:Z

.field private static final bb:[Ljava/lang/String;

.field public static c:Z

.field public static d:I

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:J

.field public static i:I

.field public static j:J

.field public static k:J

.field public static l:J

.field public static m:J

.field public static n:J

.field public static o:Ljava/lang/String;

.field public static p:I

.field public static q:Ljava/lang/String;

.field public static r:Z

.field public static s:Z

.field protected static t:J

.field protected static u:Ljava/lang/String;

.field protected static v:Ljava/lang/String;


# instance fields
.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Z

.field I:[Ljava/net/InetAddress;

.field J:Ljava/net/InetAddress;

.field private X:Lcn/jpush/android/service/o;

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private af:Lcn/jpush/android/a/d;

.field private ai:I

.field private aj:I

.field private ak:J

.field private al:J

.field private am:I

.field private an:I

.field private ao:I

.field private ap:Z

.field private volatile aq:Z

.field private av:Landroid/os/Handler;

.field protected w:J

.field protected x:[B

.field y:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field z:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xf0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u000cL\\\u0010d\u001aWU\u0013"

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

    const/16 v9, 0x17

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

    const-string v1, "1nV\u0004c"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "|S}\u0013q=KU\u0013G3LMV*|"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "6NL\u0005\u007f\u0003]V\u0018y\u0003SI\u0019e("

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "6NL\u0005\u007f\u0003]V\u0018y\u0003SP\u0006"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u0015PP\u00027+WM\u001e7q\u001eP\u0006d|XP\u0004d(\u001e\u0003V"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0018pjL7q\u0000\u0019"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u0015PP\u00027+WM\u001e7q\u001eT2r:_L\u001ac\u0015n\u0019K7"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "|{A\u0015r,JP\u0019y|\u0004\u0019?y5J\u0019\u0001~(V\u0019[71vV\u0005c|\u0003\u0019"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "|Si\u0019e(\u001e\u0004V"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "1wi"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "|\u001e\u0019V7|Sq\u0019d(\u0004\u0019[)|"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "\u0015PP\u00027+WM\u001e7q\u001eV\u0006H?QW\u0018d|\u0004\u0019"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "/QZ\u001dr(\u001e[\u0013q3L\\V-|"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "%G@\u000f:\u0011s\u0014\u0012s|vqLz1\u0004J\u0005"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "/QZ\u001dr(\u001e\\\u0018s|\u001e\u0019V-|"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "\u000cKJ\u001eD9LO\u001ft9"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXT\u0013pw3T\u0008wv8"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_10
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "3P}\u001fd?QW\u0018r?J\\\u0012"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_11
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "3P}\u001fd?QW\u0018r?J\\\u00127=P]Ve9JK\u000f7\u0011m~)\\\u0019{i)V\u0010wo3H\u0012qt7[|"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_12
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "\tM\\VD\u0015m\u0019\u0006x.J\u0003V"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_13
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "/WJVs2Mp\u0018q3\u0004"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_14
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "\u001b[MVd9LO\u0013e|WIVr.LV\u00047+WM\u001e-|"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_15
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "6NL\u0005\u007f\u0003MP\u0005H2[M\u0002n,["

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_16
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "\u0019FZ\u0013g(WV\u00187+V\\\u00187?RV\u0005r|K]\u00067/QZ\u001dr(\u001e\u0014V"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_17
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\tM\\V7,QK\u0002-|"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_18
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "|\u001e\u0019Vg3LML"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_19
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, ".JZV~2\u001e"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "|RX\u0002r."

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "\u000fKZ\u0015r9Z\u0019\u0001~(V\u0019\u0005r-w]V7q\u001e"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "2KU\u001a7?_U\u001au=]RV7q\u001e"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "?Q]\u0013"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "/[H\u0003r2]\\"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_1f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, ".[^\u001fd(LX\u0002~3P\u0019?Sf\u001e"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, ".[^\u001fd(LX\u0002~3P\u0019\u0010v5R\\\u0012-|\u001b]"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "=NIVg=]R\u0017p9\u001eW\u0017z9\u001eU\u0013y;JQV*|\u001e"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, ",_Z\u001dv;[\u0019\u0018v1[\u0003V"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "y\u000e\u000b."

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, ".[J\u0006T3Z\\K28"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "m\u0010\u0001X\'"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "\tx"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, ",VV\u0018r"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "=RP\u0017d"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "(_^\u0005"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "/[W\u0012r.\u001ep2-|"

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "yM\u0017\u0006r.SP\u0005d5QWX]\u000ckj>H\u0011{j%V\u001b{"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010x&G\u0017{`"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, ")W]K28"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, "0Q^\u001fy\u0003L\\\u0006x.Jf\u0002~1["

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "3Pk\u0013t\u001d]RL7/[H?s|\u0003\u0019"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "0Q^\u001fy\u0003M\\\u0004a9Lf\u0002~1["

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x33

    const-string v1, "|\u001e\u0019Ve9NV\u0004c\u0008WT\u00137a\u001e"

    const/16 v0, 0x32

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x34

    const-string v1, "\tPR\u0018x+P\u0019\u0015z8\u001e\u0014V"

    const/16 v0, 0x33

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x35

    const-string v1, "/[K\u0000r.jP\u001br|\u0003\u0019"

    const/16 v0, 0x34

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x36

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXB\u0012l|1^\u000fjk7C\u0015qw"

    const/16 v0, 0x35

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x37

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010k3P\u0015mm$V\u0008wv8H\u0015z"

    const/16 v0, 0x36

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x38

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXE\u0019yp%C\u000e\u007fm?X\u0012"

    const/16 v0, 0x37

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x39

    const-string v1, "/[K\u0000~?[f\u0004r;WJ\u0002r."

    const/16 v0, 0x38

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x3a

    const-string v1, "1jQ\u0004r=Z\u0019\u001fd|_U\u001fa9\u001eP\u00127a\u001e"

    const/16 v0, 0x39

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x3b

    const-string v1, "Q4"

    const/16 v0, 0x3a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x3c

    const-string v1, "0]M\u001fz9"

    const/16 v0, 0x3b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x3d

    const-string v1, "8[O)~2XV)e9Nf\u0002~1["

    const/16 v0, 0x3c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x3e

    const-string v1, "\u65aa\u95ca\uff23V"

    const/16 v0, 0x3d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x3f

    const-string v1, "1jQ\u0004r=Z\u0019\u001fd|PL\u001a{p\u001eK\u0013d(_K\u00027(V\\Vc4L\\\u0017sp\u001eP\u00127a\u001e"

    const/16 v0, 0x3e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x40

    const-string v1, "q\u0013\u0014[:q"

    const/16 v0, 0x3f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x41

    const-string v1, "1jQ\u0004r=Z\u0019\u001fd|PV\u000275Mx\u001a~*[\u0015Ve9MM\u0017e(\u001eM\u001er|JQ\u0004r=Z\u0015V~8\u001e\u0004V"

    const/16 v0, 0x40

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x42

    const-string v1, "/[K\u0000~?[f\u0015x2P\\\u0015r("

    const/16 v0, 0x41

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x43

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010z9Y\u0012{z\"^\u0013pf5_\u001dp~3"

    const/16 v0, 0x42

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x44

    const-string v1, "5Mu\u0019t=JP\u0019y\u0019PX\u0014{9Z"

    const/16 v0, 0x43

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x45

    const-string v1, ";NJ"

    const/16 v0, 0x44

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x46

    const-string v1, "5M~\u0013c\u001bQV\u0011{9\u007f]\u0012e9MJ"

    const/16 v0, 0x45

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x47

    const-string v1, "+W_\u001fH(QN\u0013e/"

    const/16 v0, 0x46

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x48

    const-string v1, ".JZ"

    const/16 v0, 0x47

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x49

    const-string v1, "=RU"

    const/16 v0, 0x48

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x4a

    const-string v1, "?[U\u001aH(QN\u0013e/"

    const/16 v0, 0x49

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x4b

    const-string v1, "0QZ\"n,["

    const/16 v0, 0x4a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x4c

    const-string v1, "=QN"

    const/16 v0, 0x4b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x4d

    const-string v1, "?QU\"n,["

    const/16 v0, 0x4c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    const/16 v2, 0x4e

    const-string v1, "5M~\u0013c\u001bQV\u0011{9\u007f]\u0012e9MJL7"

    const/16 v0, 0x4d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4d
    aput-object v1, v3, v2

    const/16 v2, 0x4f

    const-string v1, "\u0019LK\u0019e|JX\u0011v0WX\u0005"

    const/16 v0, 0x4e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4e
    aput-object v1, v3, v2

    const/16 v2, 0x50

    const-string v1, "\u0000\u001aeR"

    const/16 v0, 0x4f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4f
    aput-object v1, v3, v2

    const/16 v2, 0x51

    const-string v1, "\u0008V\\Va9LJ\u001fx2pX\u001br|WJVy3J\u0019\u0000v0W]Z7\u000cR\\\u0017d9\u001eZ\u001er?U\u0019\u000fx)L\u00197y8LV\u001fs\u0011_W\u001fq9MMXo1R"

    const/16 v0, 0x50

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_50
    aput-object v1, v3, v2

    const/16 v2, 0x52

    const-string v1, "\tPR\u0018x+P"

    const/16 v0, 0x51

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_51
    aput-object v1, v3, v2

    const/16 v2, 0x53

    const-string v1, "3Nf\u0015x2PJV-|"

    const/16 v0, 0x52

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_52
    aput-object v1, v3, v2

    const/16 v2, 0x54

    const-string v1, "3Nf\u0015x2PJ"

    const/16 v0, 0x53

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_53
    aput-object v1, v3, v2

    const/16 v2, 0x55

    const-string v1, "5NJ"

    const/16 v0, 0x54

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_54
    aput-object v1, v3, v2

    const/16 v2, 0x56

    const-string v1, "\u000fwjVE9]\\\u001fa9Z\u0019%c.WW\u0011-|"

    const/16 v0, 0x55

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_55
    aput-object v1, v3, v2

    const/16 v2, 0x57

    const-string v1, "\u000fwjVD)]Z\u0013d/"

    const/16 v0, 0x56

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_56
    aput-object v1, v3, v2

    const/16 v2, 0x58

    const-string v1, "4JM\u0006H.[I\u0019e(aJ\u001fd\u0003KK\u001a"

    const/16 v0, 0x57

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_57
    aput-object v1, v3, v2

    const/16 v2, 0x59

    const-string v1, "\u000f[MVz\u0018[_\u0017b0Ji\u0019e(\u001e\u0004V"

    const/16 v0, 0x58

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_58
    aput-object v1, v3, v2

    const/16 v2, 0x5a

    const-string v1, "\u000f[MVs9XX\u0003{(wiV*|"

    const/16 v0, 0x59

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_59
    aput-object v1, v3, v2

    const/16 v2, 0x5b

    const-string v1, "6NL\u0005\u007f\u0003MP\u0005H.[Z\u0013~*[K)d(LP\u0018p"

    const/16 v0, 0x5a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5a
    aput-object v1, v3, v2

    const/16 v2, 0x5c

    const-string v1, ",RX\u0002q3LT"

    const/16 v0, 0x5b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5b
    aput-object v1, v3, v2

    const/16 v2, 0x5d

    const-string v1, "3P}\u0013d(LV\u000f7q\u001eI\u0004x?[J\u0005^8\u0004"

    const/16 v0, 0x5c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5c
    aput-object v1, v3, v2

    const/16 v2, 0x5e

    const-string v1, "\u0019PX\u0014{9\u001ez\u001ev2P\\\u001a7/KZ\u0015r/M\u0003V"

    const/16 v0, 0x5d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5d
    aput-object v1, v3, v2

    const/16 v2, 0x5f

    const-string v1, "\u0019PX\u0014{9}Q\u0017y2[U$r-K\\\u0005c|_I\u0006;|M\\\u0018s9L\u0019\u0013e.QKL7yM\u0019Sd"

    const/16 v0, 0x5e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5e
    aput-object v1, v3, v2

    const/16 v2, 0x60

    const-string v1, "\u001dRX\u0004z|MM\u0017e([]V`5JQV~2J\\\u0004a=R\u0003V28M"

    const/16 v0, 0x5f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_5f
    aput-object v1, v3, v2

    const/16 v2, 0x61

    const-string v1, "/JX\u0004E(]\u0019\u0001~(V\u0019\u001b^2J\\\u0004a=R\u0019K7"

    const/16 v0, 0x60

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_60
    aput-object v1, v3, v2

    const/16 v2, 0x62

    const-string v1, "=RX\u0004z"

    const/16 v0, 0x61

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_61
    aput-object v1, v3, v2

    const/16 v2, 0x63

    const-string v1, "/[K\u0000r.\u001eZ\u0019y:W^Vd)]Z\u0013d/"

    const/16 v0, 0x62

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_62
    aput-object v1, v3, v2

    const/16 v2, 0x64

    const-string v1, "9LK\u0019e/"

    const/16 v0, 0x63

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_63
    aput-object v1, v3, v2

    const/16 v2, 0x65

    const-string v1, "5Mx\u0018d+[K"

    const/16 v0, 0x64

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_64
    aput-object v1, v3, v2

    const/16 v2, 0x66

    const-string v1, "(LL\u0013"

    const/16 v0, 0x65

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_65
    aput-object v1, v3, v2

    const/16 v2, 0x67

    const-string v1, ".[Z\u0013~*[]R3"

    const/16 v0, 0x66

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_66
    aput-object v1, v3, v2

    const/16 v2, 0x68

    const-string v1, "x\u001a"

    const/16 v0, 0x67

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_67
    aput-object v1, v3, v2

    const/16 v2, 0x69

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXE\u0019nv$C"

    const/16 v0, 0x68

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_68
    aput-object v1, v3, v2

    const/16 v2, 0x6a

    const-string v1, ",KJ\u001eC5S\\R3"

    const/16 v0, 0x69

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_69
    aput-object v1, v3, v2

    const/16 v2, 0x6b

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXD\u0008qi&B\u000fv"

    const/16 v0, 0x6a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6a
    aput-object v1, v3, v2

    const/16 v2, 0x6c

    const-string v1, ".[I\u0019e("

    const/16 v0, 0x6b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6b
    aput-object v1, v3, v2

    const/16 v2, 0x6d

    const-string v1, "\u001dRK\u0013v8G\u0019:x;Y\\\u00127\u0015P"

    const/16 v0, 0x6c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6c
    aput-object v1, v3, v2

    const/16 v2, 0x6e

    const-string v1, "\u001dRK\u0013v8G\u0019%r(nL\u0005\u007f\u0008WT\u0013;|YP\u0000r|KIV:|"

    const/16 v0, 0x6d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6d
    aput-object v1, v3, v2

    const/16 v2, 0x6f

    const-string v1, ",KJ\u001ec5S\\"

    const/16 v0, 0x6e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6e
    aput-object v1, v3, v2

    const/16 v2, 0x70

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXE\u0019mm9E\u0019nl%_"

    const/16 v0, 0x6f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_6f
    aput-object v1, v3, v2

    const/16 v2, 0x71

    const-string v1, "/JV\u0006H(VK\u0013v8"

    const/16 v0, 0x70

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_70
    aput-object v1, v3, v2

    const/16 v2, 0x72

    const-string v1, ":QK\u0001v.Z\u0019\u0017t(WV\u0018-|"

    const/16 v0, 0x71

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_71
    aput-object v1, v3, v2

    const/16 v2, 0x73

    const-string v1, ":_U\u0005r"

    const/16 v0, 0x72

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_72
    aput-object v1, v3, v2

    const/16 v2, 0x74

    const-string v1, "1}V\u0018y9]M\u001fx2\u001e\u0004V"

    const/16 v0, 0x73

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_73
    aput-object v1, v3, v2

    const/16 v2, 0x75

    const-string v1, "5Mk\u0013d(_K\u0002E(]"

    const/16 v0, 0x74

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_74
    aput-object v1, v3, v2

    const/16 v2, 0x76

    const-string v1, "\u0000\u0013"

    const/16 v0, 0x75

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_75
    aput-object v1, v3, v2

    const/16 v2, 0x77

    const-string v1, "0QZ\"n,[JV~/\u0004\u0019"

    const/16 v0, 0x76

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_76
    aput-object v1, v3, v2

    const/16 v2, 0x78

    const-string v1, "?RV\u0005r,KJ\u001e"

    const/16 v0, 0x77

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_77
    aput-object v1, v3, v2

    const/16 v2, 0x79

    const-string v1, "p\u001e"

    const/16 v0, 0x78

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_78
    aput-object v1, v3, v2

    const/16 v2, 0x7a

    const-string v1, "4_W\u0012{9m\\\u0002G)MQ\"~1[\u0019\u0005b?]\\\u0005d|\u0013\u0019"

    const/16 v0, 0x79

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_79
    aput-object v1, v3, v2

    const/16 v2, 0x7b

    const-string v1, "\u0000a"

    const/16 v0, 0x7a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7a
    aput-object v1, v3, v2

    const/16 v2, 0x7c

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXV\u0010wx%H\u0008\u007f~%"

    const/16 v0, 0x7b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7b
    aput-object v1, v3, v2

    const/16 v2, 0x7d

    const-string v1, ".JZ)s9RX\u000f"

    const/16 v0, 0x7c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7c
    aput-object v1, v3, v2

    const/16 v2, 0x7e

    const-string v1, "=NI"

    const/16 v0, 0x7d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7d
    aput-object v1, v3, v2

    const/16 v2, 0x7f

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXB\u000f{k)P\u000eql8S"

    const/16 v0, 0x7e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7e
    aput-object v1, v3, v2

    const/16 v2, 0x80

    const-string v1, "\u000fKZ\u0015r9Z\u0019\u0002x|L\\\u0006x.J\u0019\u001fy:Q\u0019[7"

    const/16 v0, 0x7f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_7f
    aput-object v1, v3, v2

    const/16 v2, 0x81

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXE\u0019yp%C\u0019l"

    const/16 v0, 0x80

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_80
    aput-object v1, v3, v2

    const/16 v2, 0x82

    const-string v1, ".[J\u0002v.Jf\u0004c?"

    const/16 v0, 0x81

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_81
    aput-object v1, v3, v2

    const/16 v2, 0x83

    const-string v1, ")M\\\u0004H;LV\u0003y8"

    const/16 v0, 0x82

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_82
    aput-object v1, v3, v2

    const/16 v2, 0x84

    const-string v1, "3Pj\u0002v.Jz\u0019z1_W\u00127q\u001eJ\u0002v.Jp\u0012-"

    const/16 v0, 0x83

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_83
    aput-object v1, v3, v2

    const/16 v2, 0x85

    const-string v1, "/[H)~8"

    const/16 v0, 0x84

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_84
    aput-object v1, v3, v2

    const/16 v2, 0x86

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMX^\u0012wm"

    const/16 v0, 0x85

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_85
    aput-object v1, v3, v2

    const/16 v2, 0x87

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXG\tmq)C\u0015s|"

    const/16 v0, 0x86

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_86
    aput-object v1, v3, v2

    const/16 v2, 0x88

    const-string v1, "=]M\u001fx2\u0004Q\u0017y8R\\?y:Qk\u0013g3LMV:|"

    const/16 v0, 0x87

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_87
    aput-object v1, v3, v2

    const/16 v2, 0x89

    const-string v1, "\u000f[K\u0000~?[\u0019\u0014b2ZU\u00137q\u001e"

    const/16 v0, 0x88

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_88
    aput-object v1, v3, v2

    const/16 v2, 0x8a

    const-string v1, "(_^\u0005V2Zx\u001a~=M\u001dR"

    const/16 v0, 0x89

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_89
    aput-object v1, v3, v2

    const/16 v2, 0x8b

    const-string v1, "\u0011[K\u0011r8\u001eM\u0017p\u001dP]7{5_JV"

    const/16 v0, 0x8a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8a
    aput-object v1, v3, v2

    const/16 v2, 0x8c

    const-string v1, ".[I\u0019e(\u0012"

    const/16 v0, 0x8b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8b
    aput-object v1, v3, v2

    const/16 v2, 0x8d

    const-string v1, "=NI\u001fs"

    const/16 v0, 0x8c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8c
    aput-object v1, v3, v2

    const/16 v2, 0x8e

    const-string v1, "\u0015PO\u0017{5Z\u0019\u0005r(\u001eI\u0003d4jP\u001br|]V\u001bz=P]L7"

    const/16 v0, 0x8d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8d
    aput-object v1, v3, v2

    const/16 v2, 0x8f

    const-string v1, "\u000fKZ\u0015r9Z\u0019\u0002x|MM\u0019g\u000cKJ\u001e7q\u001e"

    const/16 v0, 0x8e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8e
    aput-object v1, v3, v2

    const/16 v2, 0x90

    const-string v1, "\u000f[W\u00127\u000f[M\"v;Mx\u0018s\u001dRP\u0017d|L\\\u0007b9MMVc3\u001eJ\u0013e*[KV:|"

    const/16 v0, 0x8f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_8f
    aput-object v1, v3, v2

    const/16 v2, 0x91

    const-string v1, "\u0015PO\u0017{5Z\u00192r\u001fVX\u0018y9R\u0019\u0015x1SX\u0018sf\u001e"

    const/16 v0, 0x90

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_90
    aput-object v1, v3, v2

    const/16 v2, 0x92

    const-string v1, "/JV\u0006G)MQ"

    const/16 v0, 0x91

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_91
    aput-object v1, v3, v2

    const/16 v2, 0x93

    const-string v1, "(_^\u0005V2Zx\u001a~=M"

    const/16 v0, 0x92

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_92
    aput-object v1, v3, v2

    const/16 v2, 0x94

    const-string v1, "\u000fKZ\u0015r9Z\u0019\u0002x|{W\u0017u0[z\u001ev2P\\\u001a7q\u001e"

    const/16 v0, 0x93

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_93
    aput-object v1, v3, v2

    const/16 v2, 0x95

    const-string v1, "\u0015PO\u0017{5Z\u0019\u0004r,QK\u00027.[Z\u0013~*[]Vt3ST\u0017y8\u0004\u0019"

    const/16 v0, 0x94

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_94
    aput-object v1, v3, v2

    const/16 v2, 0x96

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197.[I\u0019e(\u001eP\u0018q3\u001e\u0014Ve9J\u0003"

    const/16 v0, 0x95

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_95
    aput-object v1, v3, v2

    const/16 v2, 0x97

    const-string v1, "\u0015PO\u0017{5Z\u0019\u0005r(jX\u0011d\u001dP]7~=M\u0019\u0015x1SX\u0018sf\u001e"

    const/16 v0, 0x96

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_96
    aput-object v1, v3, v2

    const/16 v2, 0x98

    const-string v1, ".[Z\u0013~*[]"

    const/16 v0, 0x97

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_97
    aput-object v1, v3, v2

    const/16 v2, 0x99

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197\u0019PX\u0014{9}Q\u0017y2[UV:|L\\\u0002-|"

    const/16 v0, 0x98

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_98
    aput-object v1, v3, v2

    const/16 v2, 0x9a

    const-string v1, "\u000fKZ\u0015r9Z\u0019\u0002x|M\\\u00027,KJ\u001eC5S\\V:|"

    const/16 v0, 0x99

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_99
    aput-object v1, v3, v2

    const/16 v2, 0x9b

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197/JV\u0006G)MQV:|L\\\u0002-|"

    const/16 v0, 0x9a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9a
    aput-object v1, v3, v2

    const/16 v2, 0x9c

    const-string v1, "q\u0013\u0014"

    const/16 v0, 0x9b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9b
    aput-object v1, v3, v2

    const/16 v2, 0x9d

    const-string v1, "/[W\u0012r.W]"

    const/16 v0, 0x9c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9c
    aput-object v1, v3, v2

    const/16 v2, 0x9e

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197/[MVc=YJ7y8\u007fU\u001fv/\u001e\u0014Ve9J\u0003V"

    const/16 v0, 0x9d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9d
    aput-object v1, v3, v2

    const/16 v2, 0x9f

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197/[MVg)MQ\"~1[\u0019[7.[ML7"

    const/16 v0, 0x9e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9e
    aput-object v1, v3, v2

    const/16 v2, 0xa0

    const-string v1, "\u0014_W\u0012{5P^Ve9OL\u0013d(\u0004\u0019"

    const/16 v0, 0x9f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9f
    aput-object v1, v3, v2

    const/16 v2, 0xa1

    const-string v1, ",KJ\u001eC5S\\"

    const/16 v0, 0xa0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a0
    aput-object v1, v3, v2

    const/16 v2, 0xa2

    const-string v1, "\u000fKZ\u0015r9Z\u0019\u0002x|L\\\u0006x.J\u0019\u0004r?[P\u0000r8\u001e\u0014V"

    const/16 v0, 0xa1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a1
    aput-object v1, v3, v2

    const/16 v2, 0xa3

    const-string v1, "|\u0004\u0019"

    const/16 v0, 0xa2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a2
    aput-object v1, v3, v2

    const/16 v2, 0xa4

    const-string v1, "1xP\u0004d(rV\u0011p9Zp\u0018"

    const/16 v0, 0xa3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a3
    aput-object v1, v3, v2

    const/16 v2, 0xa5

    const-string v1, "\u0015PO\u0017{5Z\u00193y=\\U\u0013T4_W\u0018r0\u001eZ\u0019z1_W\u0012-|"

    const/16 v0, 0xa4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a4
    aput-object v1, v3, v2

    const/16 v2, 0xa6

    const-string v1, "9PX\u0014{9}Q\u0017y2[U"

    const/16 v0, 0xa5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a5
    aput-object v1, v3, v2

    const/16 v2, 0xa7

    const-string v1, "\u0008V\\Vd9LO\u001ft9\u001eN\u001f{0\u001eR\u001f{0\u001eP\u0002d9R_V~2\u001e"

    const/16 v0, 0xa6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a6
    aput-object v1, v3, v2

    const/16 v2, 0xa8

    const-string v1, "3Pi\u0017e/[x\u0018s\u000e[Z\u0000Z/Yt\u0013d/_^\u00137|SJ\u0011^8\u001e\u0004V"

    const/16 v0, 0xa7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a7
    aput-object v1, v3, v2

    const/16 v2, 0xa9

    const-string v1, "\u000e[]\u0003g0WZ\u0017c9\u001eT\u0005p|\u0013\u0019"

    const/16 v0, 0xa8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a8
    aput-object v1, v3, v2

    const/16 v2, 0xaa

    const-string v1, "\tP\\\u000eg9]M\u0013sf\u001eL\u0018|2QN\u001871M^Vc%N\\V:"

    const/16 v0, 0xa9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a9
    aput-object v1, v3, v2

    const/16 v2, 0xab

    const-string v1, "1[J\u0005v;["

    const/16 v0, 0xaa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_aa
    aput-object v1, v3, v2

    const/16 v2, 0xac

    const-string v1, "=]M\u001fx2\u0004K\u0013t9WO\u0013s\u000cKJ\u001eZ9MJ\u0017p9\u001eT\u0005p\u0015Z\u0019K7"

    const/16 v0, 0xab

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ab
    aput-object v1, v3, v2

    const/16 v2, 0xad

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010w9C\u0015xp5V\u0008wv8H\u0008gi3"

    const/16 v0, 0xac

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ac
    aput-object v1, v3, v2

    const/16 v2, 0xae

    const-string v1, "p\u001eJ\u0013y8[K?sf"

    const/16 v0, 0xad

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ad
    aput-object v1, v3, v2

    const/16 v2, 0xaf

    const-string v1, ",LV\u0015r/M{\u0017d5]|\u0018c5J@Vc%N\\L"

    const/16 v0, 0xae

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ae
    aput-object v1, v3, v2

    const/16 v2, 0xb0

    const-string v1, "?P\u0017\u001cg)MQXv2ZK\u0019~8\u0010P\u0018c9PMXY\u0013jp0^\u001f\u007fm?X\u0012ak3T\u0019wo3S\u0003nk9O\u0005"

    const/16 v0, 0xaf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_af
    aput-object v1, v3, v2

    const/16 v2, 0xb1

    const-string v1, "p\u001eT\u0005p\u0015Z\u0019K7"

    const/16 v0, 0xb0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b0
    aput-object v1, v3, v2

    const/16 v2, 0xb2

    const-string v1, "\u0015PO\u0017{5Z\u0019\u000c~,xU\u0017p|WJV-|"

    const/16 v0, 0xb1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b1
    aput-object v1, v3, v2

    const/16 v2, 0xb3

    const-string v1, "=NI?s"

    const/16 v0, 0xb2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b2
    aput-object v1, v3, v2

    const/16 v2, 0xb4

    const-string v1, "rN\\\u0004z5MJ\u001fx2\u0010s&B\u000fvf;R\u000fmx1R"

    const/16 v0, 0xb3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b3
    aput-object v1, v3, v2

    const/16 v2, 0xb5

    const-string v1, "&WI0{=Y\u0019\u001fd|\u0004\u0019"

    const/16 v0, 0xb4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b4
    aput-object v1, v3, v2

    const/16 v2, 0xb6

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197.[I\u0019e(\u001eK\u0013t9WO\u0013s|\u0013\u0019"

    const/16 v0, 0xb5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b5
    aput-object v1, v3, v2

    const/16 v2, 0xb7

    const-string v1, "\u0011[J\u0005v;[\u00190~9R]\u00057q\u001eX\u0006g\u0015Z\u0003"

    const/16 v0, 0xb6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b6
    aput-object v1, v3, v2

    const/16 v2, 0xb8

    const-string v1, "1M^\"n,[\u0019K7"

    const/16 v0, 0xb7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b7
    aput-object v1, v3, v2

    const/16 v2, 0xb9

    const-string v1, "kX\\\u0010!=\t]A!?\t\u0001DumX\t\u0013s=\n\r@un]\u000f\u0015#l_"

    const/16 v0, 0xb8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b8
    aput-object v1, v3, v2

    const/16 v2, 0xba

    const-string v1, "/[W\u0012r.w]"

    const/16 v0, 0xb9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b9
    aput-object v1, v3, v2

    const/16 v2, 0xbb

    const-string v1, "\u0008WT\u00137(Q\u0019\u0006e3]\\\u0005d|L\\\u0015r5H\\\u001271M^X"

    const/16 v0, 0xba

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ba
    aput-object v1, v3, v2

    const/16 v2, 0xbc

    const-string v1, "p\u001eT\u0005p\u001fQW\u0002r2J\u0003"

    const/16 v0, 0xbb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bb
    aput-object v1, v3, v2

    const/16 v2, 0xbd

    const-string v1, "=]M\u001fx2\u0004V\u0018E9]O5x1SX\u0018sf\u001e"

    const/16 v0, 0xbc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bc
    aput-object v1, v3, v2

    const/16 v2, 0xbe

    const-string v1, "\u0008V\\Vg=]R\u0017p9\u001eU\u0013y;VMV~/\u001e\u0003V"

    const/16 v0, 0xbd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bd
    aput-object v1, v3, v2

    const/16 v2, 0xbf

    const-string v1, "1M^)~8"

    const/16 v0, 0xbe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_be
    aput-object v1, v3, v2

    const/16 v2, 0xc0

    const-string v1, ".[^\u001fd(w}V*|"

    const/16 v0, 0xbf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_bf
    aput-object v1, v3, v2

    const/16 v2, 0xc1

    const-string v1, ".[^\u001fd([K)s9HP\u0015r\u0003SX\u0015"

    const/16 v0, 0xc0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c0
    aput-object v1, v3, v2

    const/16 v2, 0xc2

    const-string v1, "\u5359\u5433\u0003V"

    const/16 v0, 0xc1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c1
    aput-object v1, v3, v2

    const/16 v2, 0xc3

    const-string v1, ";[M3o(u\\\u000f-|"

    const/16 v0, 0xc2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c2
    aput-object v1, v3, v2

    const/16 v2, 0xc4

    const-string v1, "8[K\u0000~9w]V*|"

    const/16 v0, 0xc3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c3
    aput-object v1, v3, v2

    const/16 v2, 0xc5

    const-string v1, ".[^\u001fd([K)s9HP\u0015r\u0003_W\u0012e3W])~8"

    const/16 v0, 0xc4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c4
    aput-object v1, v3, v2

    const/16 v2, 0xc6

    const-string v1, "1wW\u0002r.HX\u001a"

    const/16 v0, 0xc5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c5
    aput-object v1, v3, v2

    const/16 v2, 0xc7

    const-string v1, "\u0016nL\u0005\u007f|KI\u0012v([\u0019\u0015x2XP\u00117:_P\u001a-"

    const/16 v0, 0xc6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c6
    aput-object v1, v3, v2

    const/16 v2, 0xc8

    const-string v1, "|\u4e30\u00197g,u\\\u000f-"

    const/16 v0, 0xc7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c7
    aput-object v1, v3, v2

    const/16 v2, 0xc9

    const-string v1, "(QM\u0019{\u0010[WV*|"

    const/16 v0, 0xc8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c8
    aput-object v1, v3, v2

    const/16 v2, 0xca

    const-string v1, "\u000e[^\u001fd([KL7"

    const/16 v0, 0xc9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c9
    aput-object v1, v3, v2

    const/16 v2, 0xcb

    const-string v1, "=P]\u0004x5Z\u0017\u0006r.SP\u0005d5QWXE\u0019\u007f})G\u0014qw3H\u000fjx\"R"

    const/16 v0, 0xca

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ca
    aput-object v1, v3, v2

    const/16 v2, 0xcc

    const-string v1, "\u4e51\u5307\u9174"

    const/16 v0, 0xcb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_cb
    aput-object v1, v3, v2

    const/16 v2, 0xcd

    const-string v1, ",U\u0019\u0000r.MP\u0019yf\u001e"

    const/16 v0, 0xcc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_cc
    aput-object v1, v3, v2

    const/16 v2, 0xce

    const-string v1, "\u001fRP\u0013y(\u001eP\u0018q3\u0004\u0019"

    const/16 v0, 0xcd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_cd
    aput-object v1, v3, v2

    const/16 v2, 0xcf

    const-string v1, ".[^\u001fd([KVd)]Z\u0013r8\u0004\u0019\u0003~8\u0003"

    const/16 v0, 0xce

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ce
    aput-object v1, v3, v2

    const/16 v2, 0xd0

    const-string v1, ".[^\u001fd(LX\u0002~3Pf\u001fs"

    const/16 v0, 0xcf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_cf
    aput-object v1, v3, v2

    const/16 v2, 0xd1

    const-string v1, "\u000e[^\u001fd([KVQ=WU\u0013s|IP\u0002\u007f|[K\u0004x.\u001eZ\u0019s9\u0004\u0019"

    const/16 v0, 0xd0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d0
    aput-object v1, v3, v2

    const/16 v2, 0xd2

    const-string v1, "1l\\\u0015a\u001eK_\u0010r.\u001e\u0004V"

    const/16 v0, 0xd1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d1
    aput-object v1, v3, v2

    const/16 v2, 0xd3

    const-string v1, "\u000e[^\u001fd([KVr.LV\u00047f\u001eK\u0013t*|L\u0010q9L\u0019\u001ar/M\u0019\u0002\u007f=P\u0019"

    const/16 v0, 0xd2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d2
    aput-object v1, v3, v2

    const/16 v2, 0xd4

    const-string v1, "\u000e[^\u001fd([KVp9J\u0019\u001779LK\u0019e|]V\u001bz=P]V"

    const/16 v0, 0xd3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d3
    aput-object v1, v3, v2

    const/16 v2, 0xd5

    const-string v1, "5PO\u0017{\u0015[T\u001f7:LV\u001b7/[K\u0000r.\u001e\u0012V"

    const/16 v0, 0xd4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d4
    aput-object v1, v3, v2

    const/16 v2, 0xd6

    const-string v1, "9LK\u0019e|Z\\\u0005t.WI\u0002~3P\u0003|"

    const/16 v0, 0xd5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d5
    aput-object v1, v3, v2

    const/16 v2, 0xd7

    const-string v1, "\u000e[^\u001fd([KVE9]OVq=WU\u0013s|\u0013\u0019\u0004r(\u0004"

    const/16 v0, 0xd6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d6
    aput-object v1, v3, v2

    const/16 v2, 0xd8

    const-string v1, ".[^\u001fd([K)s9HP\u0015r\u0003WT\u0013~"

    const/16 v0, 0xd7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d7
    aput-object v1, v3, v2

    const/16 v2, 0xd9

    const-string v1, "\u0016nl%_\u0003\u007fi&\\\u0019g"

    const/16 v0, 0xd8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d8
    aput-object v1, v3, v2

    const/16 v2, 0xda

    const-string v1, "/JV\u0006G)MQZ"

    const/16 v0, 0xd9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d9
    aput-object v1, v3, v2

    const/16 v2, 0xdb

    const-string v1, "4_W\u0012{9mM\u0019g\u000cKJ\u001e7/KZ\u0015r/M\u0003V"

    const/16 v0, 0xda

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_da
    aput-object v1, v3, v2

    const/16 v2, 0xdc

    const-string v1, "4_W\u0012{9mM\u0019g\u000cKJ\u001e7=NIZ7/[W\u0012r.\u001e\\\u0004e3L\u0003V2/\u001e\u001c\u0005"

    const/16 v0, 0xdb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_db
    aput-object v1, v3, v2

    const/16 v2, 0xdd

    const-string v1, "\'\u001cM\u0019c=R\u001bL28\u0012\u001b\u0006v;[\u001bL28\u0012\u001b\u0005r2Z\\\u0004~8\u001c\u0003T2/\u001c\u0015Tb5Z\u001bL2/\u0012\u001b\u0006r.SP\u0005d5QW){5MMT-yMD"

    const/16 v0, 0xdc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_dc
    aput-object v1, v3, v2

    const/16 v2, 0xde

    const-string v1, "p\u001eK\u0013cf"

    const/16 v0, 0xdd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_dd
    aput-object v1, v3, v2

    const/16 v2, 0xdf

    const-string v1, "\u001a_P\u001ar8\u001eM\u00197.[I\u0019e(\u001eI\u0013e1WJ\u0005~3P\u0019\u001fy:Q\u0019[7,_^\u0013-|"

    const/16 v0, 0xde

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_de
    aput-object v1, v3, v2

    const/16 v2, 0xe0

    const-string v1, "p\u001c"

    const/16 v0, 0xdf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_df
    aput-object v1, v3, v2

    const/16 v2, 0xe1

    const-string v1, "(_^\u0017{5_JV*|"

    const/16 v0, 0xe0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e0
    aput-object v1, v3, v2

    const/16 v2, 0xe2

    const-string v1, "\u001b[MVc?N\u0019\u0012v(_\u0019\u0010e3S\u00192Uf\u001e"

    const/16 v0, 0xe1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e1
    aput-object v1, v3, v2

    const/16 v2, 0xe3

    const-string v1, ".[I)~8"

    const/16 v0, 0xe2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e2
    aput-object v1, v3, v2

    const/16 v2, 0xe4

    const-string v1, "\u001b[MV7(]IVs=JXVq.QTVS\u001e\u0012\u0019\u0002\u007f9\u001eZ\u0019b2J\u0019\u001fdf\u001e"

    const/16 v0, 0xe3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e3
    aput-object v1, v3, v2

    const/16 v2, 0xe5

    const-string v1, "(]I)s=JX"

    const/16 v0, 0xe4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e4
    aput-object v1, v3, v2

    const/16 v2, 0xe6

    const-string v1, "9PX\u0014{9}Q\u0017y2[UZ"

    const/16 v0, 0xe5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e5
    aput-object v1, v3, v2

    const/16 v2, 0xe7

    const-string v1, "\u000f[MVz\u000fJX\u0004c\u0013Pw\u0013c+QK\u001dT3PW\u0013t([]Vc3\u001e"

    const/16 v0, 0xe6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e6
    aput-object v1, v3, v2

    const/16 v2, 0xe8

    const-string v1, "1mM\u0017e(qW#d9Li\u0004r/[W\u0002"

    const/16 v0, 0xe7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e7
    aput-object v1, v3, v2

    const/16 v2, 0xe9

    const-string v1, "/MV\u0019"

    const/16 v0, 0xe8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e8
    aput-object v1, v3, v2

    const/16 v2, 0xea

    const-string v1, "\u000f[MVz\u000fJX\u0004c\u0013Pl\u0005r.nK\u0013d9PMVc3\u001e"

    const/16 v0, 0xe9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e9
    aput-object v1, v3, v2

    const/16 v2, 0xeb

    const-string v1, "\tN]\u0017c9\u001eK\u0002t|WW\u0002r.HX\u001a7(Q\u0019"

    const/16 v0, 0xea

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ea
    aput-object v1, v3, v2

    const/16 v2, 0xec

    const-string v1, ")MI"

    const/16 v0, 0xeb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_eb
    aput-object v1, v3, v2

    const/16 v2, 0xed

    const-string v1, "/PZ"

    const/16 v0, 0xec

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ec
    aput-object v1, v3, v2

    const/16 v2, 0xee

    const-string v1, "\u000f[MVD\u0008\u007fk\"H\u000f{k ^\u001f{f9Y\u0003qi3Y|JVV"

    const/16 v0, 0xed

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ed
    aput-object v1, v3, v2

    const/16 v2, 0xef

    const-string v1, "9FP\u0002"

    const/16 v0, 0xee

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_ee
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->c:Z

    const/4 v0, 0x2

    sput v0, Lcn/jpush/android/service/PushService;->d:I

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcn/jpush/android/service/PushService;->e:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcn/jpush/android/service/PushService;->f:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcn/jpush/android/service/PushService;->g:J

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcn/jpush/android/service/PushService;->h:J

    const/16 v0, 0x12c

    sput v0, Lcn/jpush/android/service/PushService;->i:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->j:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->k:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->l:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->m:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->n:J

    const-wide/32 v0, 0x15180

    sput-wide v0, Lcn/jpush/android/service/PushService;->K:J

    const-wide/16 v0, 0x168

    sput-wide v0, Lcn/jpush/android/service/PushService;->L:J

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->M:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->N:Z

    const-string v1, "m\u000f\nX$m\u0010\u0008A9m\u000e\u000f"

    const/4 v0, -0x1

    move v6, v0

    move-object v0, v1

    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_5

    :cond_3
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_4
    aget-char v7, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_2

    const/16 v5, 0x17

    :goto_5
    xor-int/2addr v5, v7

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_4

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_4

    :pswitch_ef
    const/16 v9, 0x5c

    goto/16 :goto_2

    :pswitch_f0
    const/16 v9, 0x3e

    goto/16 :goto_2

    :pswitch_f1
    const/16 v9, 0x39

    goto/16 :goto_2

    :pswitch_f2
    const/16 v9, 0x76

    goto/16 :goto_2

    :pswitch_f3
    const/16 v5, 0x5c

    goto :goto_5

    :pswitch_f4
    const/16 v5, 0x3e

    goto :goto_5

    :pswitch_f5
    const/16 v5, 0x39

    goto :goto_5

    :pswitch_f6
    const/16 v5, 0x76

    goto :goto_5

    :cond_4
    move v1, v0

    move-object v0, v3

    :cond_5
    if-gt v1, v2, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    packed-switch v6, :pswitch_data_3

    sput-object v0, Lcn/jpush/android/service/PushService;->o:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcn/jpush/android/service/PushService;->p:I

    const-string v1, "m\u000f\nX$m\u0010\u0008A9m\u000e\u000f"

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    goto :goto_3

    :pswitch_f7
    sput-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->t:J

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcn/jpush/android/service/PushService;->v:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    const/16 v0, 0xa

    sput v0, Lcn/jpush/android/service/PushService;->ae:I

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->A:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ag:Z

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x49

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->B:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->C:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->D:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/jpush/android/service/PushService;->ah:Ljava/util/List;

    sget-object v1, Lcn/jpush/android/service/PushService;->S:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcn/jpush/android/service/PushService;->ah:Ljava/util/List;

    const-string v1, "9_J\u000fc3S\\\u0005d=Y\\Xt3S"

    const/4 v0, -0x1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, v5, :cond_8

    :cond_6
    move-object v5, v1

    move v6, v4

    move v11, v3

    move-object v3, v1

    move v1, v11

    :goto_7
    aget-char v8, v3, v4

    rem-int/lit8 v7, v6, 0x5

    packed-switch v7, :pswitch_data_4

    const/16 v7, 0x17

    :goto_8
    xor-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v3, v4

    add-int/lit8 v4, v6, 0x1

    if-nez v1, :cond_7

    move-object v3, v5

    move v6, v4

    move v4, v1

    goto :goto_7

    :pswitch_f8
    const/16 v7, 0x5c

    goto :goto_8

    :pswitch_f9
    const/16 v7, 0x3e

    goto :goto_8

    :pswitch_fa
    const/16 v7, 0x39

    goto :goto_8

    :pswitch_fb
    const/16 v7, 0x76

    goto :goto_8

    :cond_7
    move v3, v1

    move-object v1, v5

    :cond_8
    if-gt v3, v4, :cond_6

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_5

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcn/jpush/android/service/PushService;->ah:Ljava/util/List;

    const-string v1, "/WJX},KJ\u001e95Q"

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_fc
    sput-object v0, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    const-string v1, "5S\u000fB96NL\u0005\u007fr]W"

    const/4 v0, 0x1

    move v6, v0

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_fd
    sput-object v0, Lcn/jpush/android/service/PushService;->Q:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcn/jpush/android/service/PushService;->R:I

    const-string v0, ""

    sput-object v0, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    const-string v1, "/\u0010S\u0006b/V\u0017\u0015y"

    const/4 v0, 0x2

    move v6, v0

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_fe
    sput-object v0, Lcn/jpush/android/service/PushService;->S:Ljava/lang/String;

    const-string v1, "m\u000f\nX$m\u0010\u0008A9m\u000e\u0001"

    const/4 v0, 0x3

    move v6, v0

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_ff
    sput-object v0, Lcn/jpush/android/service/PushService;->T:Ljava/lang/String;

    const/16 v0, 0x2328

    sput v0, Lcn/jpush/android/service/PushService;->U:I

    const/4 v0, 0x0

    sput v0, Lcn/jpush/android/service/PushService;->V:I

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->r:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->s:Z

    const-string v1, "2KU\u001a"

    const/4 v0, 0x4

    move v6, v0

    move-object v0, v1

    goto/16 :goto_3

    :pswitch_100
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/jpush/android/service/PushService;->ah:Ljava/util/List;

    sget-object v1, Lcn/jpush/android/service/PushService;->T:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sput v0, Lcn/jpush/android/service/PushService;->E:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/jpush/android/service/PushService;->ar:Ljava/util/Queue;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->as:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->at:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/service/PushService;->au:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_ef
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
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
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_df
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f3
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_fd
        :pswitch_fe
        :pswitch_ff
        :pswitch_f7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_100
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->x:[B

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    iput-boolean v2, p0, Lcn/jpush/android/service/PushService;->aa:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->ab:Z

    iput v3, p0, Lcn/jpush/android/service/PushService;->an:I

    iput v3, p0, Lcn/jpush/android/service/PushService;->ao:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    iput-boolean v2, p0, Lcn/jpush/android/service/PushService;->H:Z

    iput-object v4, p0, Lcn/jpush/android/service/PushService;->I:[Ljava/net/InetAddress;

    iput-object v4, p0, Lcn/jpush/android/service/PushService;->J:Ljava/net/InetAddress;

    iput-boolean v2, p0, Lcn/jpush/android/service/PushService;->ap:Z

    iput-boolean v2, p0, Lcn/jpush/android/service/PushService;->aq:Z

    new-instance v0, Lcn/jpush/android/service/n;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/n;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private B()V
    .locals 3

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/service/PushService;->B:Ljava/lang/String;

    sget-boolean v1, Lcn/jpush/android/service/PushService;->D:Z

    sget-boolean v2, Lcn/jpush/android/service/PushService;->C:Z

    invoke-direct {p0, p0, v0, v1, v2}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcn/jpush/android/a/d;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->af:Lcn/jpush/android/a/d;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->af:Lcn/jpush/android/a/d;

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->f()V

    return-void
.end method

.method private static a(JJLjava/lang/String;Ljava/lang/String;I)I
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x5c

    aget-object v1, v1, v2

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    cmp-long v1, v4, p0

    if-eqz v1, :cond_0

    cmp-long v1, p2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushProtocol;->TagAlias(JJLjava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(JLjava/lang/String;I)I
    .locals 8

    const/16 v6, 0xe

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {p0, p1, p2, p3}, Lcn/jpush/android/service/PushProtocol;->InitPush(JLjava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xf

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    return v0
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;)I
    .locals 1

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->n()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;I)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->am:I

    return v0
.end method

.method public static a(Landroid/content/Context;)J
    .locals 4

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    goto :goto_0
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;J)J
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->al:J

    return-wide v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcn/jpush/android/a/d;
    .locals 6

    new-instance v0, Lcn/jpush/android/service/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/jpush/android/service/m;-><init>(Lcn/jpush/android/service/PushService;Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method static synthetic a([BI)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcn/jpush/android/service/PushService;->b([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->R:I

    return-void
.end method

.method private a(IJ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x67

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x68

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 3

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jpush/android/service/k;

    invoke-direct {v1, p0, p1, p2}, Lcn/jpush/android/service/k;-><init>(Lcn/jpush/android/service/PushService;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    invoke-static {p1}, Lcn/jpush/android/util/q;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v0, v9

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :cond_1
    return-void

    :cond_2
    array-length v10, v9

    const-string v2, "["

    move v0, v6

    move v7, v6

    move-object v1, v2

    move v2, v6

    :goto_0
    if-ge v0, v10, :cond_1

    aget-object v3, v9, v0

    if-nez v2, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v0, v2, 0x1

    const/16 v2, 0x32

    if-ge v0, v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_3

    if-ne v8, v10, :cond_7

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xdd

    aget-object v1, v1, v2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    sget-wide v4, Lcn/jpush/android/service/PushService;->t:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->o()V

    :cond_4
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    const/16 v4, 0x8

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RepPush(JJBLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xdf

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xde

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :cond_5
    add-int/lit8 v0, v7, 0x1

    const-string v1, "["

    move-object v2, v1

    move v1, v0

    move v0, v6

    :goto_2
    move v7, v1

    move-object v1, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xe0

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move-object v2, v1

    move v1, v7

    goto :goto_2
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;ZZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcn/jpush/android/service/PushService;->a(ZZZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x5f

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->EnChannel(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x5e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x3

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x8a

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    if-le v1, v4, :cond_1

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-static {v1, p1}, Lcn/jpush/android/service/PushService;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    :try_start_1
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v1

    :cond_1
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x8a

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x68

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x68

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x8b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object p1, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x36

    aget-object v0, v0, v1

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcn/jpush/android/service/PushService;->ao:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x39

    aget-object v1, v1, v2

    iget v2, p0, Lcn/jpush/android/service/PushService;->ao:I

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x2e

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x37

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x2d

    aget-object v1, v1, v2

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/service/PushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x38

    aget-object v0, v0, v1

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v4, p0, Lcn/jpush/android/service/PushService;->ao:I

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->M:Z

    return-void
.end method

.method private a(ZZZ)V
    .locals 10

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-eqz p3, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xd9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushProtocol;->Close(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    :cond_1
    invoke-static {}, Lcn/jpush/android/service/PushProtocol;->InitConn()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const/4 v0, 0x0

    sput v0, Lcn/jpush/android/service/PushService;->E:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->e(Z)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->n()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushProtocol;->Close(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->g()V

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc7

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xcb

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-nez v1, :cond_5

    const-string v1, " "

    :cond_5
    if-nez v0, :cond_6

    const-string v0, " "

    :cond_6
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x68

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x68

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x27

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, " "

    invoke-static {v5, v6}, Lcn/jpush/android/util/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, " "

    invoke-static {v6, v7}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v0, " "

    :cond_7
    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v1, " "

    :cond_8
    invoke-static {v5}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v5, " "

    :cond_9
    invoke-static {v6}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v6, " "

    :cond_a
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0xd8

    aget-object v8, v8, v9

    invoke-static {v7, v8, v6}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0xc5

    aget-object v8, v8, v9

    invoke-static {v7, v8, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0xc1

    aget-object v8, v8, v9

    invoke-static {v7, v8, v5}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget v8, Lcn/jpush/android/util/a;->a:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0x68

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x68

    aget-object v7, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x68

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x68

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xca

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xcd

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xce

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xc3

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RegPush(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->w:J

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v4, 0x1e

    invoke-static {v2, v3, v0, v4}, Lcn/jpush/android/service/PushProtocol;->RecvPush(J[BI)I

    move-result v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v0}, Lcn/jpush/android/util/a;->b([B)I

    move-result v0

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v2}, Lcn/jpush/android/util/a;->c([B)I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xc9

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xd2

    aget-object v4, v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v4, v3}, Lcn/jpush/android/service/PushService;->b([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    sget-object v2, Lcn/jpush/android/c;->a:Lcn/jpush/android/c;

    invoke-virtual {v2}, Lcn/jpush/android/c;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xd4

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_1

    :cond_b
    const/16 v0, 0x14

    if-ge v3, v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xd3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    :goto_3
    const/4 v2, 0x2

    if-ge v0, v2, :cond_d

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v4, v0, 0x14

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    if-nez v1, :cond_18

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/a;->j:Z

    sget v0, Lcn/jpush/android/service/PushService;->i:I

    const v1, 0x15181

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xc6

    aget-object v1, v1, v2

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, 0x12c

    sput v0, Lcn/jpush/android/service/PushService;->i:I

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    :cond_e
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    :goto_4
    const/16 v0, 0x8

    if-ge v2, v0, :cond_f

    const/16 v0, 0x8

    shl-long v0, v4, v0

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v2, 0x16

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v0

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_5
    const/4 v0, 0x2

    if-ge v2, v0, :cond_10

    shl-int/lit8 v0, v1, 0x8

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v2, 0x1e

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :cond_10
    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_6
    array-length v6, v2

    if-ge v0, v6, :cond_11

    iget-object v6, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v7, v0, 0x20

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0xcf

    aget-object v6, v6, v7

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    sput-wide v4, Lcn/jpush/android/service/PushService;->t:J

    sput-object v0, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    :try_start_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/jpush/android/service/PushService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-wide v4, Lcn/jpush/android/service/PushService;->t:J

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v2, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_7
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a;->l:Z

    add-int/lit8 v2, v1, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v0, v4, :cond_12

    shl-int/lit8 v1, v1, 0x8

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_7

    :cond_12
    add-int/lit8 v2, v2, 0x2

    new-array v4, v1, [B

    const/4 v0, 0x0

    :goto_9
    array-length v5, v4

    if-ge v0, v5, :cond_13

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int v6, v2, v0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xc0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xd0

    aget-object v5, v5, v6

    invoke-static {v4, v5, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_14

    sget-object v4, Lcn/jpush/android/a;->b:Ljava/lang/String;

    sget-object v5, Lcn/jpush/android/a;->f:Ljava/lang/String;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x38

    aget-object v6, v6, v7

    invoke-direct {p0, v4, v5, v0, v6}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    add-int/2addr v2, v1

    if-ge v2, v3, :cond_3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_a
    const/4 v4, 0x2

    if-ge v0, v4, :cond_15

    shl-int/lit8 v1, v1, 0x8

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_15
    add-int/lit8 v2, v2, 0x2

    new-array v4, v1, [B

    add-int v0, v1, v2

    if-eq v3, v0, :cond_16

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_1

    :cond_16
    const/4 v0, 0x0

    :goto_b
    array-length v1, v4

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int v3, v2, v0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc4

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    const/16 v0, 0x3ef

    if-ne v1, v0, :cond_1b

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_c
    const/4 v2, 0x2

    if-ge v0, v2, :cond_19

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v3, v0, 0x16

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    new-array v1, v1, [B

    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v3, v0, 0x18

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xd5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    invoke-static {v0}, Lcn/jpush/android/util/a;->c(Ljava/lang/String;)V

    if-nez p1, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcn/jpush/android/service/PushService;->a(ZZZ)V

    goto/16 :goto_1

    :cond_1b
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xd1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jpush/android/service/r;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xd6

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    const/16 v0, 0x3ee

    if-ne v0, v1, :cond_1d

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->r()V

    goto/16 :goto_1

    :cond_1d
    const/16 v0, 0x3ef

    if-ne v0, v1, :cond_1e

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    goto/16 :goto_1

    :cond_1e
    const/16 v0, 0x3ed

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc2

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xc8

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xcc

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xc2

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xc8

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xcc

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->r()V

    goto/16 :goto_1

    :cond_1f
    const/16 v0, 0x3f1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/a;->j:Z

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->r()V

    goto/16 :goto_1

    :cond_20
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xd7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->al:J

    goto/16 :goto_1

    :cond_21
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->N:Z

    return v0
.end method

.method static synthetic a(Lcn/jpush/android/service/PushService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/jpush/android/service/PushService;->ap:Z

    return p1
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    new-instance v1, Lcn/jpush/android/service/p;

    invoke-direct {v1, p0, p1, p2}, Lcn/jpush/android/service/p;-><init>(Lcn/jpush/android/service/PushService;Ljava/lang/String;I)V

    new-array v2, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcn/jpush/android/service/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    :goto_0
    iget-boolean v2, p0, Lcn/jpush/android/service/PushService;->ap:Z

    if-nez v2, :cond_1

    const/16 v2, 0xbb8

    if-ge v0, v2, :cond_1

    const-wide/16 v2, 0xaf0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 v0, v0, 0xbb8

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->ap:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcn/jpush/android/service/p;->cancel(Z)Z

    :cond_2
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->ap:Z

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    sget-object v0, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b([BI)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->U:I

    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->o()V

    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;I)V
    .locals 1

    const/16 v0, 0x1770

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->f(I)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->Q:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v8, 0x90

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    sget-object v0, Lcn/jpush/android/service/ServiceInterface;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/api/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/jpush/android/api/b;->c:Lcn/jpush/android/api/TagAliasCallback;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v2, 0x3ee

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    move v7, v1

    move v6, p2

    :goto_0
    sget-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v6}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;Ljava/lang/String;I)V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;)S

    move-result v6

    move v7, v0

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    sget-object v4, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushService;->a(JJLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v6}, Lcn/jpush/android/service/PushService;->g(I)V

    if-nez v7, :cond_5

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x11

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0xdc

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p0, v6, v0}, Lcn/jpush/android/service/PushService;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p0, v6, v0}, Lcn/jpush/android/service/PushService;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto :goto_0

    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->UnChnelId(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v7

    invoke-virtual {p0, v6, v0}, Lcn/jpush/android/service/PushService;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xdb

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {p0, v6, v1}, Lcn/jpush/android/service/PushService;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->z()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcn/jpush/android/service/PushService;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->N:Z

    return-void
.end method

.method static synthetic b(Lcn/jpush/android/service/PushService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcn/jpush/android/service/PushService;->aq:Z

    return p1
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->V:I

    return-void
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;Z)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3f

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v1}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Lcn/jpush/android/service/o;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/o;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {}, Lcn/jpush/android/util/a;->b()V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-boolean v0, v0, Lcn/jpush/android/service/o;->a:Z

    if-nez v0, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x41

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v1}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->join()V

    new-instance v0, Lcn/jpush/android/service/o;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/o;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcn/jpush/android/util/x;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcn/jpush/android/util/a;->b()V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->ak:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    invoke-static {}, Lcn/jpush/android/util/a;->b()V

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/service/PushProtocol;->HbJPush(JJ)I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->ai:I

    iget v0, p0, Lcn/jpush/android/service/PushService;->am:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->am:I

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ef

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jpush/android/service/PushService;->ak:J

    iget v0, p0, Lcn/jpush/android/service/PushService;->ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->ai:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/jpush/android/service/PushService;->am:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcn/jpush/android/service/PushService;->ad:Z

    if-nez v2, :cond_a

    sget-boolean v2, Lcn/jpush/android/service/PushService;->ag:Z

    if-eqz v2, :cond_a

    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x3c

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcn/jpush/android/service/PushService;->j:J

    :cond_8
    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    sub-long v2, v0, v2

    sget-wide v4, Lcn/jpush/android/service/PushService;->e:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_9

    sget-wide v2, Lcn/jpush/android/service/PushService;->j:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    :cond_9
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->B()V

    sput-wide v0, Lcn/jpush/android/service/PushService;->j:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x3c

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_a
    sget-wide v2, Lcn/jpush/android/service/PushService;->k:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x3d

    aget-object v3, v3, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcn/jpush/android/service/PushService;->k:J

    :cond_b
    invoke-static {}, Lcn/jpush/android/util/x;->a()Z

    sget-wide v2, Lcn/jpush/android/service/PushService;->k:J

    sub-long v2, v0, v2

    sget-wide v4, Lcn/jpush/android/service/PushService;->f:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_c

    sget-wide v2, Lcn/jpush/android/service/PushService;->k:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_d

    :cond_c
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/j;->a(Landroid/content/Context;)V

    sput-wide v0, Lcn/jpush/android/service/PushService;->k:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x3d

    aget-object v3, v3, v4

    invoke-static {v2, v3, v0, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_d
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Lcn/jpush/android/util/ag;->a(Landroid/content/Context;J)V

    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/g;->a(Landroid/content/Context;)Lcn/jpush/android/service/g;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jpush/android/service/g;->d(Landroid/content/Context;)V

    invoke-static {}, Lcn/jpush/android/util/JLogger;->reportByHeartbeats()V

    sget-boolean v0, Lcn/jpush/android/a;->k:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0xe10

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/a;->b()V

    throw v0

    :cond_f
    const-wide/16 v2, 0x3e8

    :try_start_5
    div-long/2addr v0, v2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcn/jpush/android/service/PushService;->K:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_3
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ag;->a(Landroid/content/Context;)V

    goto :goto_2

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x3e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {v0}, Lcn/jpush/android/util/ag;->b(Landroid/content/Context;)J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x40

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->S:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xda

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->ad:Z

    return-void
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected static declared-synchronized c(Landroid/content/Context;)Z
    .locals 14

    const-wide/16 v12, 0x0

    const/16 v10, 0x8

    const/4 v0, 0x0

    const-class v2, Lcn/jpush/android/service/PushService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x8

    :try_start_1
    new-array v3, v1, [B

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    const/4 v1, 0x0

    const/16 v5, 0x8

    invoke-virtual {v4, v3, v1, v5}, Ljava/io/FileInputStream;->read([BII)I

    const-wide/16 v6, 0x0

    sput-wide v6, Lcn/jpush/android/service/PushService;->t:J

    move v1, v0

    :goto_0
    if-ge v1, v10, :cond_0

    sget-wide v6, Lcn/jpush/android/service/PushService;->t:J

    shl-long/2addr v6, v10

    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    add-long/2addr v6, v8

    sput-wide v6, Lcn/jpush/android/service/PushService;->t:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-wide/16 v4, 0x0

    sput-wide v4, Lcn/jpush/android/service/PushService;->t:J

    :goto_2
    sget-wide v4, Lcn/jpush/android/service/PushService;->t:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v1, v4, v12

    if-nez v1, :cond_2

    :goto_3
    monitor-exit v2

    return v0

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jpush/android/service/PushService;->u:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcn/jpush/android/util/x;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_5
    sget-object v1, Lcn/jpush/android/service/PushService;->v:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcn/jpush/android/util/a;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jpush/android/service/PushService;->v:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcn/jpush/android/service/PushService;->v:Ljava/lang/String;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic c(Lcn/jpush/android/service/PushService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcn/jpush/android/service/PushService;->i(I)Z

    move-result v0

    return v0
.end method

.method public static d(I)V
    .locals 0

    sput p0, Lcn/jpush/android/service/PushService;->ae:I

    return-void
.end method

.method static synthetic d(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->T:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xe6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->ag:Z

    return-void
.end method

.method static synthetic e(Lcn/jpush/android/service/PushService;)Lcn/jpush/android/service/o;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->as:Ljava/lang/String;

    return-object p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x2

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x50

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-le v3, v6, :cond_3

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcn/jpush/android/service/PushService;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4f

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic f(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->at:Ljava/lang/String;

    return-object p0
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2a

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)V
    .locals 5

    const/16 v4, 0x3ec

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic f(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->B()V

    return-void
.end method

.method static synthetic f(Z)Z
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->ac:Z

    return p0
.end method

.method static synthetic g(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/jpush/android/service/PushService;->au:Ljava/lang/String;

    return-object p0
.end method

.method private g(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x3f0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic g(Lcn/jpush/android/service/PushService;)V
    .locals 0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x8c

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private h(I)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 11

    const/16 v5, 0x5b

    const/16 v10, 0x3a

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x56

    aget-object v3, v3, v4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    sput-boolean v2, Lcn/jpush/android/service/PushService;->P:Z

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move v0, v1

    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x55

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v0, v3, p1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/jpush/android/service/PushService;->al:J

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    sput-object v5, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    :cond_3
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v0, v9, :cond_6

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v6, Lcn/jpush/android/service/PushService;->o:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sput-object v1, Lcn/jpush/android/service/PushService;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x5a

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0xa

    aget-object v7, v7, v8

    invoke-static {v6, v7, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcn/jpush/android/service/PushService;->p:I

    if-eq v1, v0, :cond_5

    sput v0, Lcn/jpush/android/service/PushService;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x59

    aget-object v5, v5, v6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/service/PushService;->p:I

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcn/jpush/android/util/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcn/jpush/android/util/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x58

    aget-object v2, v2, v4

    invoke-static {v1, v2, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :try_start_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x54

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_7
    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    goto/16 :goto_1

    :cond_8
    if-eqz v0, :cond_9

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x10

    aget-object v0, v0, v7

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x57

    aget-object v7, v7, v8

    invoke-static {v0, v7}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/jpush/android/service/PushService;->R:I

    goto/16 :goto_2

    :cond_a
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x53

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic h()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    return v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v0, v1

    move v4, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    shl-int/lit8 v2, v4, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v4, v0, 0x14

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v0, v0, v2

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    const/16 v5, 0x8

    shl-long/2addr v2, v5

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v0, 0x16

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x2f

    aget-object v0, v0, v5

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v0, 0x64

    new-array v2, v0, [B

    move v0, v1

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v0, 0x1a

    aget-byte v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v0, 0x1a

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x24

    aget-object v2, v2, v5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v0, 0x1e

    new-array v2, v0, [B

    move v0, v1

    :goto_3
    array-length v5, v2

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v0, 0x7e

    aget-byte v5, v5, v6

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v0, 0x7e

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x2c

    aget-object v2, v2, v6

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez v4, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2e

    aget-object v2, v2, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2d

    aget-object v2, v2, v4

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v3, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/service/PushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic i()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    return v0
.end method

.method private i(I)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x50

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->au:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized j(I)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x50

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcn/jpush/android/service/PushService;->h(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4f

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/api/d;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->a(I)Lcn/jpush/android/api/b;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcn/jpush/android/api/b;->c:Lcn/jpush/android/api/TagAliasCallback;

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x1d

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->b(I)V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->j(I)V

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v5, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v2, Lcn/jpush/android/api/b;->a:Ljava/lang/String;

    iget-object v2, v2, Lcn/jpush/android/api/b;->b:Ljava/util/Set;

    invoke-interface {v3, v1, v0, v2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->at:Ljava/lang/String;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x65

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x64

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    const/4 v4, 0x3

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x63

    aget-object v5, v5, v6

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RepPush(JJBLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jpush/android/service/PushService;->as:Ljava/lang/String;

    return-object v0
.end method

.method private l(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x4d

    aget-object v0, v0, v2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x44

    aget-object v0, v0, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ag:Z

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x44

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v0, v0, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x4e

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-eq v0, v7, :cond_1

    if-nez v0, :cond_8

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v0, v0, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_2

    if-nez v0, :cond_9

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v0, v0, v4

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v0, 0x2

    if-ne v2, v0, :cond_d

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x4b

    aget-object v0, v0, v2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x49

    aget-object v0, v0, v2

    if-eq v1, v7, :cond_3

    if-nez v1, :cond_a

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x49

    aget-object v0, v0, v1

    :cond_3
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcn/jpush/android/service/PushService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x4b

    aget-object v4, v4, v5

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v4, v0, v4

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x46

    aget-object v0, v0, v5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v4, v0, v4

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x4c

    aget-object v0, v0, v5

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcn/jpush/android/service/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_6
    :goto_4
    return-void

    :cond_7
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x44

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_4

    :cond_8
    :try_start_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v0, v0, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    if-ne v1, v8, :cond_b

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x4a

    aget-object v0, v0, v1

    goto/16 :goto_3

    :cond_b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x47

    aget-object v0, v0, v1

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x45

    aget-object v0, v0, v1

    goto/16 :goto_3

    :cond_d
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x4c

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->C:Z

    :cond_e
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x46

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->D:Z

    :cond_f
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x44

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x44

    aget-object v0, v0, v4

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ag:Z

    :cond_10
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4b

    aget-object v0, v0, v3

    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_11

    if-nez v0, :cond_12

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x49

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->B:Ljava/lang/String;

    :cond_11
    :goto_5
    if-nez v2, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x48

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x48

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    :cond_12
    if-ne v0, v8, :cond_13

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x4a

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->B:Ljava/lang/String;

    goto :goto_5

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x47

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->B:Ljava/lang/String;

    goto :goto_5

    :cond_14
    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x45

    aget-object v0, v0, v1

    sput-object v0, Lcn/jpush/android/service/PushService;->B:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private m(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v1, v0

    move v3, v0

    :goto_0
    if-ge v1, v10, :cond_0

    shl-int/lit8 v2, v3, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v4, v1, 0x14

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v1, 0x8

    new-array v2, v1, [B

    move v1, v0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v1, 0x16

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v2

    move v1, v0

    :goto_2
    if-ge v1, v5, :cond_2

    aget-byte v6, v2, v1

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x25

    aget-object v7, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x21

    aget-object v2, v2, v5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v1, v0

    move v2, v0

    :goto_3
    if-ge v1, v10, :cond_3

    shl-int/lit8 v2, v2, 0x8

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v1, 0x1e

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x23

    aget-object v5, v5, v6

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v1, 0x64

    new-array v1, v1, [B

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v0, 0x20

    aget-byte v2, v2, v5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v0, 0x20

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x24

    aget-object v1, v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez v3, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0, v4, p1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    :cond_5
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto :goto_5
.end method

.method static synthetic m()Z
    .locals 1

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ag:Z

    return v0
.end method

.method private n()I
    .locals 13

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    sget-object v2, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    sget v1, Lcn/jpush/android/service/PushService;->R:I

    sget-boolean v0, Lcn/jpush/android/service/PushService;->P:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v11

    sget-object v2, Lcn/jpush/android/service/PushService;->O:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v10

    sget v3, Lcn/jpush/android/service/PushService;->R:I

    invoke-static {v1, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v2, v3, v0, v1}, Lcn/jpush/android/service/PushService;->a(JLjava/lang/String;I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v4, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v4, v5, v2, v1}, Lcn/jpush/android/service/PushService;->a(JLjava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v4, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    invoke-static {v4}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    sget-object v5, Lcn/jpush/android/service/PushService;->q:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v6, v5

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    aget-object v2, v5, v6

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v6, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v6, v7, v2, v1}, Lcn/jpush/android/service/PushService;->a(JLjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v12, v0

    move v0, v1

    move-object v1, v2

    move v2, v12

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v9

    sget v3, Lcn/jpush/android/service/PushService;->p:I

    invoke-static {v0, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v2, v3, v1, v0}, Lcn/jpush/android/service/PushService;->a(JLjava/lang/String;I)I

    move-result v2

    :cond_4
    if-eqz v2, :cond_6

    sget-object v3, Lcn/jpush/android/service/PushService;->Q:Ljava/lang/String;

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_1
    sget-object v3, Lcn/jpush/android/service/PushService;->Q:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcn/jpush/android/service/PushService;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v12, v2

    move-object v2, v1

    move v1, v0

    move v0, v12

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v4, v4, v11

    invoke-static {v3, v4, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-static {v2, v3, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    move-object v12, v3

    move-object v3, v2

    move v2, v1

    move v1, v0

    move-object v0, v12

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    move v2, v1

    move-object v1, v3

    goto/16 :goto_2

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcn/jpush/android/service/PushService;->J:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    sget v0, Lcn/jpush/android/service/PushService;->R:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/service/PushService;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-wide v4, p0, Lcn/jpush/android/service/PushService;->w:J

    sget v3, Lcn/jpush/android/service/PushService;->R:I

    invoke-static {v4, v5, v1, v3}, Lcn/jpush/android/service/PushService;->a(JLjava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    move v12, v2

    move-object v2, v1

    move v1, v0

    move v0, v12

    goto :goto_3

    :cond_6
    move v12, v2

    move-object v2, v1

    move v1, v0

    move v0, v12

    goto :goto_3

    :cond_7
    move v12, v0

    move v0, v1

    move-object v1, v2

    move v2, v12

    goto/16 :goto_2
.end method

.method private n(Ljava/lang/String;)V
    .locals 10

    const/16 v8, 0x8

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v1, v0

    move v4, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    shl-int/lit8 v2, v4, 0x8

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v4, v1, 0x14

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-wide/16 v2, 0x0

    move v1, v0

    :goto_1
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1

    shl-long/2addr v2, v8

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v1, 0x16

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v6, v5

    add-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x2f

    aget-object v1, v1, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v1, 0x8

    new-array v2, v1, [B

    move v1, v0

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v5, v1, 0x1a

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v2

    move v1, v0

    :goto_3
    if-ge v1, v5, :cond_3

    aget-byte v6, v2, v1

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x25

    aget-object v7, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x21

    aget-object v3, v3, v5

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v1, 0x64

    new-array v3, v1, [B

    move v1, v0

    :goto_4
    array-length v5, v3

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v1, 0x22

    aget-byte v5, v5, v6

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v6, v1, 0x22

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v1}, Ljava/lang/String;-><init>([BII)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x24

    aget-object v3, v3, v6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/16 v1, 0x1e

    new-array v1, v1, [B

    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit16 v6, v0, 0x86

    aget-byte v3, v3, v6

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit16 v6, v0, 0x86

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance v3, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x2c

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez v4, :cond_6

    invoke-direct {p0, v5, v3, v2, p1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_6
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto :goto_6
.end method

.method private o()V
    .locals 5

    const/16 v4, 0x3e9

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa7

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/jpush/android/service/PushService;->ae:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    sget v1, Lcn/jpush/android/service/PushService;->ae:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x48

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xeb

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    mul-int/lit8 v1, v1, 0x3c

    sput v1, Lcn/jpush/android/service/PushService;->i:I

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xc6

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/service/PushService;->i:I

    invoke-static {p0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xec

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xea

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez v1, :cond_5

    const/4 v1, 0x0

    sput-boolean v1, Lcn/jpush/android/service/PushService;->r:Z

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xe8

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x73

    aget-object v2, v2, v3

    invoke-static {p0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xed

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xe7

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez v1, :cond_6

    const/4 v2, 0x0

    sput-boolean v2, Lcn/jpush/android/service/PushService;->s:Z

    :goto_1
    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xed

    aget-object v2, v2, v3

    invoke-static {p0, v2, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xe9

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xee

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xe9

    aget-object v2, v2, v3

    invoke-static {p0, v2, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xef

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_4

    if-nez v0, :cond_7

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x75

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x73

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcn/jpush/android/service/PushService;->r:Z

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xe8

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x66

    aget-object v2, v2, v3

    invoke-static {p0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcn/jpush/android/service/PushService;->s:Z

    goto :goto_1

    :cond_7
    if-ne v0, v6, :cond_8

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    goto :goto_2

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private p()[B
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    invoke-static {p0}, Lcn/jpush/android/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x29

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x28

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/16 v3, 0x80

    new-array v3, v3, [B

    new-array v4, v6, [B

    fill-array-data v4, :array_0

    array-length v5, v4

    invoke-static {v4, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v2, v6}, Lcn/jpush/android/util/aa;->a([BLjava/lang/String;I)[B

    const/16 v2, 0x22

    invoke-static {v3, v0, v2}, Lcn/jpush/android/util/aa;->e([BII)[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v4, Lcn/jpush/android/service/PushService;->t:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x26

    invoke-static {v3, v0, v2}, Lcn/jpush/android/util/aa;->e([BII)[B

    sget-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-static {v3, v0, v2}, Lcn/jpush/android/util/aa;->a([BLjava/lang/String;I)[B

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v0, v0, v2

    const/16 v2, 0x5c

    invoke-static {v3, v0, v2}, Lcn/jpush/android/util/aa;->a([BLjava/lang/String;I)[B

    sget-boolean v0, Lcn/jpush/android/service/PushService;->c:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/16 v0, 0x66

    invoke-static {v3, v1, v0}, Lcn/jpush/android/util/aa;->e([BII)[B

    return-object v3

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        -0x80t
    .end array-data
.end method

.method private declared-synchronized q()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->deleteFile(Ljava/lang/String;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/PushService;->t:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private r()V
    .locals 4

    const v3, 0x15181

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xc6

    aget-object v1, v1, v2

    invoke-static {v0, v1, v3}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    sput v3, Lcn/jpush/android/service/PushService;->i:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->stopSelf()V

    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x1e

    :try_start_0
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x51

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x52

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    array-length v1, v1

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v2, 0x14

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcn/jpush/android/util/a;->a(B)I

    move-result v2

    move v1, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x32

    aget-object v1, v1, v2

    sget-wide v2, Lcn/jpush/android/service/PushService;->m:J

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcn/jpush/android/service/PushService;->m:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    sget-wide v2, Lcn/jpush/android/service/PushService;->n:J

    invoke-static {v0, v1, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcn/jpush/android/service/PushService;->n:J

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x35

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcn/jpush/android/service/PushService;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcn/jpush/android/service/PushService;->n:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->A()V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    if-ne v2, v1, :cond_4

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    add-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->h(I)V

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->j(I)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    goto/16 :goto_0
.end method

.method private declared-synchronized u()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->w:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushProtocol;->Stop(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 9

    const/4 v8, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xe1

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v8, :cond_2

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v0, 0x1

    aget-object v4, v1, v0

    const/4 v0, 0x2

    aget-object v5, v1, v0

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushService;->a(JJLjava/lang/String;Ljava/lang/String;I)I

    invoke-direct {p0, v6}, Lcn/jpush/android/service/PushService;->g(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->z:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private w()V
    .locals 4

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->A()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->join()V

    new-instance v0, Lcn/jpush/android/service/o;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/o;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x3a

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v1}, Lcn/jpush/android/service/o;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-boolean v0, v0, Lcn/jpush/android/service/o;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Lcn/jpush/android/service/o;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/o;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Lcn/jpush/android/service/o;

    invoke-direct {v0, p0}, Lcn/jpush/android/service/o;-><init>(Lcn/jpush/android/service/PushService;)V

    iput-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/jpush/android/data/r;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y()V
    .locals 9

    const/4 v8, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x61

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/jpush/android/service/PushService;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget v1, Lcn/jpush/android/service/PushService;->i:I

    sget-boolean v0, Lcn/jpush/android/service/PushService;->N:Z

    sput-boolean v0, Lcn/jpush/android/service/PushService;->N:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/jpush/android/service/AlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x62

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v3, v1, 0x3e8

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v0, v8, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x60

    aget-object v0, v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->o()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v3, Lcn/jpush/android/a;->b:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget v4, p0, Lcn/jpush/android/service/PushService;->an:I

    if-ne p1, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcn/jpush/android/service/PushService;->an:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x42

    aget-object v5, v5, v6

    invoke-static {v4, v5, p1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0x2e

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x43

    aget-object v5, v0, v5

    if-ne p1, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x2d

    aget-object v3, v3, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcn/jpush/android/service/PushService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcn/jpush/android/service/PushService;->a(ZZZ)V

    return-void
.end method

.method protected final e()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcn/jpush/android/service/PushService;->a(ZZZ)V

    return-void
.end method

.method protected final e(I)V
    .locals 12

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v0}, Lcn/jpush/android/util/a;->b([B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xbd

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xbe

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcn/jpush/android/util/aa;->b([BII)I

    move-result v11

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v2, 0x15

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcn/jpush/android/util/aa;->c([BII)J

    move-result-wide v6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb8

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v2, 0x1d

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcn/jpush/android/util/aa;->b([BII)I

    move-result v0

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v3, 0x1f

    invoke-static {v2, v3, v0}, Lcn/jpush/android/util/aa;->d([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/4 v4, 0x2

    invoke-static {v2, v0, v4}, Lcn/jpush/android/util/aa;->b([BII)I

    move-result v4

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v2, v0, v4}, Lcn/jpush/android/util/aa;->d([BII)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, v4

    iget-object v4, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcn/jpush/android/util/aa;->b([BII)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v8, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v9, 0xb5

    aget-object v8, v8, v9

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/4 v8, 0x2

    invoke-static {v5, v0, v8}, Lcn/jpush/android/util/aa;->b([BII)I

    move-result v5

    add-int/lit8 v0, v0, 0x2

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v1, v0, v5}, Lcn/jpush/android/util/aa;->a([BII)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xb7

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xae

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xbc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xaa

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    if-nez v4, :cond_5

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    invoke-static {v1, v0, v5}, Lcn/jpush/android/util/aa;->d([BII)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0xb2

    aget-object v5, v5, v8

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v1, 0x1d

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/aa;->b([BII)I

    move-result v0

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->x:[B

    const/16 v2, 0x1f

    invoke-static {v1, v2, v0}, Lcn/jpush/android/util/aa;->d([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {}, Lcn/jpush/android/util/x;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    if-le v4, v5, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-string v0, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    goto/16 :goto_2

    :pswitch_1
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa8

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const/4 v2, 0x0

    sget-wide v3, Lcn/jpush/android/service/PushService;->t:J

    int-to-byte v5, v11

    invoke-static/range {v0 .. v7}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(JIJBJ)I

    :cond_b
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v8, v10, v9, v1}, Lcn/jpush/android/data/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_3
    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, v0, Lcn/jpush/android/data/a;->c:Ljava/lang/String;

    const/16 v1, 0x406

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_3

    :cond_d
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    invoke-direct {p0, v11, v6, v7}, Lcn/jpush/android/service/PushService;->a(IJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xb6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :goto_4
    new-instance v1, Lcn/jpush/android/util/aj;

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xbb

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Lcn/jpush/android/util/aj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xac

    aget-object v2, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v8, v10, v9, v2}, Lcn/jpush/android/data/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/jpush/android/data/a;

    move-result-object v2

    if-nez v2, :cond_11

    :cond_e
    :goto_5
    invoke-virtual {v1}, Lcn/jpush/android/util/aj;->a()V

    goto/16 :goto_0

    :cond_f
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const/4 v2, 0x0

    sget-wide v3, Lcn/jpush/android/service/PushService;->t:J

    int-to-byte v5, v11

    invoke-static/range {v0 .. v7}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(JIJBJ)I

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, v11, v6, v7}, Lcn/jpush/android/service/PushService;->a(IJ)V

    goto :goto_4

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto :goto_4

    :cond_11
    invoke-virtual {v2}, Lcn/jpush/android/data/a;->h()Lcn/jpush/android/data/e;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->ar:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xa9

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_5

    :cond_12
    sget-object v3, Lcn/jpush/android/service/PushService;->ar:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0xc8

    if-lt v3, v4, :cond_13

    sget-object v3, Lcn/jpush/android/service/PushService;->ar:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_13
    sget-object v3, Lcn/jpush/android/service/PushService;->ar:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0xb9

    aget-object v3, v3, v4

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcn/jpush/android/data/p;->a(Landroid/content/Context;Lcn/jpush/android/data/a;)V

    :cond_14
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xaf

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_15

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcn/jpush/android/data/a;->h:Z

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xb0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xba

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xb3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xab

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xbf

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xad

    aget-object v3, v3, v5

    iget v5, v2, Lcn/jpush/android/data/a;->g:I

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v6, 0xb4

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Lcn/jpush/android/service/PushService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_15
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, v2, Lcn/jpush/android/data/a;->i:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v2, Lcn/jpush/android/data/a;->l:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_16
    iput-object v10, v2, Lcn/jpush/android/data/a;->m:Ljava/lang/String;

    iput-object v9, v2, Lcn/jpush/android/data/a;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lcn/jpush/android/data/a;->f()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    goto/16 :goto_5

    :cond_17
    iget-boolean v0, v2, Lcn/jpush/android/data/a;->e:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    iget v3, v2, Lcn/jpush/android/data/a;->b:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_14

    const/4 v0, 0x3

    goto/16 :goto_6

    :cond_18
    const/4 v0, 0x2

    goto/16 :goto_6

    :cond_19
    invoke-static {v2}, Lcn/jpush/android/data/a;->a(Lcn/jpush/android/data/a;)Lcn/jpush/android/data/d;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcn/jpush/android/service/j;

    invoke-direct {v3, p0, v0}, Lcn/jpush/android/service/j;-><init>(Lcn/jpush/android/service/PushService;Lcn/jpush/android/data/d;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5

    :cond_1a
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_5

    :cond_1b
    invoke-static {}, Lcn/jpush/android/util/x;->e()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :pswitch_2
    invoke-direct {p0, v8}, Lcn/jpush/android/service/PushService;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v8}, Lcn/jpush/android/service/PushService;->l(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, v8}, Lcn/jpush/android/service/PushService;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, v10, v0}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v8}, Lcn/jpush/android/service/PushService;->j(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v8, v0}, Lcn/jpush/android/util/JLogger;->parseModalJson(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v8}, Lcn/jpush/android/util/JRecorder;->parseRecordCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x38

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x6b

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1f

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x70

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0xe

    if-ne v0, v1, :cond_20

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x36

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->n(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x10

    if-ne v0, v1, :cond_21

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x38

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x11

    if-ne v0, v1, :cond_22

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x36

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->m(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_23

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->t()V

    goto/16 :goto_0

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public final e(Z)V
    .locals 12

    const/16 v5, 0x17

    const/4 v1, 0x1

    const/16 v10, 0x50

    const/16 v9, 0x18

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/a;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->H:Z

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->H:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->al:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    :try_start_0
    const-string v0, ""

    invoke-direct {p0, v0}, Lcn/jpush/android/service/PushService;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->H:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcn/jpush/android/service/PushService;->F:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    const-string v1, ""

    :try_start_1
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v0, 0x400

    :try_start_2
    new-array v5, v0, [B

    sget-object v0, Lcn/jpush/android/service/PushService;->ah:Ljava/util/List;

    sget v3, Lcn/jpush/android/service/PushService;->E:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcn/jpush/android/service/PushService;->U:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v1, 0x0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    sget v1, Lcn/jpush/android/service/PushService;->E:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v1

    move-object v1, v2

    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    sget v0, Lcn/jpush/android/service/PushService;->U:I

    if-eq v0, v10, :cond_9

    const/16 v0, 0x50

    sput v0, Lcn/jpush/android/service/PushService;->U:I

    :goto_3
    sget v0, Lcn/jpush/android/service/PushService;->E:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/jpush/android/service/PushService;->e(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_1

    :cond_5
    :try_start_6
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->I:[Ljava/net/InetAddress;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    move-object v4, v1

    :goto_4
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->p()[B

    move-result-object v6

    array-length v1, v6

    const/16 v3, 0x100

    if-le v1, v3, :cond_a

    const/16 v1, 0x100

    move v3, v1

    :goto_5
    sget v1, Lcn/jpush/android/service/PushService;->U:I

    if-ne v1, v10, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x19

    aget-object v7, v7, v8

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcn/jpush/android/service/PushService;->U:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v1, Ljava/net/DatagramPacket;

    sget v7, Lcn/jpush/android/service/PushService;->U:I

    invoke-direct {v1, v6, v3, v4, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :goto_6
    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v3, v5

    invoke-direct {v1, v5, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v1, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v1}, Lcn/jpush/android/service/PushService;->h(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_7
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_1

    :cond_6
    :try_start_8
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    move-object v4, v1

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v7, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x14

    aget-object v7, v7, v8

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcn/jpush/android/service/PushService;->U:I

    add-int/lit16 v7, v7, 0x2710

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v1, Ljava/net/DatagramPacket;

    sget v7, Lcn/jpush/android/service/PushService;->U:I

    add-int/lit16 v7, v7, 0x2710

    invoke-direct {v1, v6, v3, v4, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_7
    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_4

    :cond_8
    :goto_8
    throw v0

    :cond_9
    const/16 v0, 0x2328

    :try_start_a
    sput v0, Lcn/jpush/android/service/PushService;->U:I

    sget v0, Lcn/jpush/android/service/PushService;->E:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/service/PushService;->E:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/AssertionError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_7

    :catch_5
    move-exception v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_2

    :catch_6
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    move v3, v1

    goto/16 :goto_5

    :cond_b
    move-object v4, v1

    goto/16 :goto_4
.end method

.method protected final f()V
    .locals 14

    const/16 v13, 0xa3

    const/16 v12, 0x50

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iput v8, p0, Lcn/jpush/android/service/PushService;->aj:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x6c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ","

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    aget-object v4, v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RepPush(JJBLjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x80

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x96

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x93

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v1, v7

    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    const/4 v0, 0x3

    :try_start_0
    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_1
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    aget-object v4, v7, v11

    aget-object v5, v7, v10

    invoke-static/range {v0 .. v6}, Lcn/jpush/android/service/PushService;->a(JJLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x90

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v7, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v6, v8

    goto :goto_1

    :cond_3
    aget-object v1, v7, v10

    sget-object v2, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v6}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x9e

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x97

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v1, v6

    if-le v1, v10, :cond_7

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    aget-object v4, v6, v11

    aget-object v5, v6, v10

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->EnChannel(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x94

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v6, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v6, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x99

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xa5

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_8
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x92

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v1, v6

    if-le v1, v10, :cond_a

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    aget-object v4, v6, v11

    aget-object v5, v6, v10

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->UnChnelId(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x8f

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v6, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v6, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x91

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v1, v6

    if-le v1, v10, :cond_d

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    aget-object v4, v6, v11

    aget-object v5, v6, v10

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->PushTime(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x9a

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v6, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v6, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x9f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x8e

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_e
    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x98

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lt v2, v10, :cond_10

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x9c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const/4 v2, 0x0

    sget-wide v3, Lcn/jpush/android/service/PushService;->t:J

    int-to-byte v5, v9

    invoke-static/range {v0 .. v7}, Lcn/jpush/android/service/PushProtocol;->MsgResponse(JIJBJ)I

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v9, v6, v7}, Lcn/jpush/android/service/PushService;->a(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_f
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x95

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->v()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->A()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x75

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x66

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x73

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x8d

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x9d

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    const/4 v4, 0x4

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RepPush(JJBLjava/lang/String;)I

    :cond_12
    :goto_3
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->o()V

    :cond_13
    sget-boolean v0, Lcn/jpush/android/service/PushService;->M:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->e(Landroid/content/Context;)V

    :cond_14
    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ea

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_15
    sget v0, Lcn/jpush/android/service/PushService;->V:I

    if-gtz v0, :cond_16

    sget v0, Lcn/jpush/android/service/PushService;->V:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/jpush/android/service/PushService;->V:I

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xa4

    aget-object v1, v1, v2

    sget v2, Lcn/jpush/android/service/PushService;->V:I

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_16
    return-void

    :cond_17
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    const/4 v4, 0x5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RepPush(JJBLjava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method protected final g()V
    .locals 9

    const/16 v8, 0x3ed

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v0, v0, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x11

    aget-object v0, v0, v3

    invoke-virtual {p0, v2, v0}, Lcn/jpush/android/service/PushService;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcn/jpush/android/service/PushService;->i:I

    const v3, 0x15181

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->g(Landroid/content/Context;)I

    move-result v3

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcn/jpush/android/service/PushService;->aj:I

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iget v4, p0, Lcn/jpush/android/service/PushService;->aj:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcn/jpush/android/service/PushService;->aj:I

    sget v4, Lcn/jpush/android/service/PushService;->i:I

    mul-int/lit16 v4, v4, 0x1f4

    if-le v0, v4, :cond_0

    sget v0, Lcn/jpush/android/service/PushService;->i:I

    mul-int/lit16 v0, v0, 0x1f4

    :cond_0
    iget v4, p0, Lcn/jpush/android/service/PushService;->aj:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_1

    if-ne v3, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v1, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    int-to-long v4, v0

    invoke-virtual {v1, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iput v2, p0, Lcn/jpush/android/service/PushService;->ai:I

    iget v0, p0, Lcn/jpush/android/service/PushService;->am:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jpush/android/service/PushService;->am:I

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    const/16 v4, 0x2e

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/ServiceInterface;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sput-wide v0, Lcn/jpush/android/service/PushService;->a:J

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->p(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/jpush/android/service/PushService;->ab:Z

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->ab:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->c(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    :cond_2
    sget-boolean v0, Lcn/jpush/android/service/PushService;->ac:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->w(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/jpush/android/a;->l:Z

    :cond_3
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/jpush/android/a;->f:Ljava/lang/String;

    sput-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v4

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->q()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ac;->b(Landroid/content/Context;)V

    :cond_5
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v4

    sget-object v2, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcn/jpush/android/service/PushService;->Y:Z

    iput-boolean v3, p0, Lcn/jpush/android/service/PushService;->Z:Z

    sget-object v1, Lcn/jpush/android/a;->d:Landroid/content/Context;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Lcn/jpush/android/data/r;->b(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_c

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xe4

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0xe3

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0xe5

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0xe2

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jpush/android/data/r;->b(Landroid/content/Context;I)Z

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lcn/jpush/android/util/x;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->Y:Z

    if-eqz v0, :cond_e

    iput-boolean v6, p0, Lcn/jpush/android/service/PushService;->aa:Z

    :cond_8
    :goto_3
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iput-boolean v6, p0, Lcn/jpush/android/service/PushService;->aa:Z

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :cond_a
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    :cond_b
    sget-boolean v0, Lcn/jpush/android/a;->k:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(J)V

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    :cond_e
    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->Z:Z

    if-nez v0, :cond_8

    iput-boolean v6, p0, Lcn/jpush/android/service/PushService;->aa:Z

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x5d

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->x()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->q(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const/16 v3, 0x7e

    const/16 v5, 0x6f

    const/16 v4, 0x78

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x84

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x79

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->ab:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return v10

    :cond_1
    sget-boolean v0, Lcn/jpush/android/service/PushService;->ad:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    :goto_1
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x86

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x2e

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    if-eqz v0, :cond_3

    sput-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    :cond_3
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->X:Lcn/jpush/android/service/o;

    invoke-virtual {v0}, Lcn/jpush/android/service/o;->isAlive()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x74

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcn/jpush/android/service/PushService;->w:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    :cond_5
    :goto_2
    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    :cond_6
    if-eqz v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x89

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x48

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x7d

    aget-object v1, v1, v2

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_7

    iput v9, p0, Lcn/jpush/android/service/PushService;->aj:I

    if-nez v1, :cond_26

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_3
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x4b

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x77

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x46

    aget-object v1, v1, v2

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x4c

    aget-object v2, v2, v3

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, p0, v0, v1, v2}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcn/jpush/android/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/a/d;->f()V

    :cond_8
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x75

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x66

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x73

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcn/jpush/android/service/PushService;->ad:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v1, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->o()V

    :cond_a
    if-eqz v6, :cond_0

    if-nez v7, :cond_0

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x82

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->y()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->av:Landroid/os/Handler;

    const/16 v1, 0x3ec

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x6d

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x6b

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->i(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x69

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x6c

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x88

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcn/jpush/android/service/PushService;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->RepPush(JJBLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcn/jpush/android/service/PushService;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x80

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_2

    :cond_12
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_2

    :cond_13
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x7f

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x83

    aget-object v0, v0, v1

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_2

    :cond_14
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x7c

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x2b

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x85

    aget-object v2, v2, v3

    invoke-virtual {v7, v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v0, :cond_15

    if-eqz v1, :cond_5

    :cond_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz v0, :cond_16

    :try_start_0
    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x2a

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_16
    if-eqz v1, :cond_17

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x2b

    aget-object v0, v0, v4

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v1, :cond_18

    invoke-direct {p0, v0, v2}, Lcn/jpush/android/service/PushService;->b(Ljava/lang/String;I)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x72

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_19
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x70

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/jpush/android/service/PushService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x72

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_2

    :cond_1b
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x87

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->aa:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1c

    const-string v0, "0"

    :goto_4
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v4

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x6e

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1c
    const-string v0, "1"

    goto :goto_4

    :cond_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x78

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x6f

    aget-object v0, v0, v3

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x7b

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v5, 0x76

    aget-object v4, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1e
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_2
    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v4, 0x78

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v8, 0x78

    aget-object v4, v4, v8

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x6f

    aget-object v2, v2, v3

    invoke-static {v0, v2, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    sget-wide v0, Lcn/jpush/android/service/PushService;->t:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    :cond_1f
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x6a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto :goto_5

    :cond_20
    iget-wide v0, p0, Lcn/jpush/android/service/PushService;->w:J

    sget-wide v2, Lcn/jpush/android/service/PushService;->t:J

    sget-object v4, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcn/jpush/android/service/PushProtocol;->PushTime(JJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_21

    iget-object v0, p0, Lcn/jpush/android/service/PushService;->y:Ljava/util/Queue;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x6a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/service/PushService;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->w()V

    goto/16 :goto_2

    :cond_21
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v3, 0x7a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v2, 0x72

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto/16 :goto_2

    :cond_23
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x71

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-direct {p0}, Lcn/jpush/android/service/PushService;->u()V

    goto/16 :goto_2

    :cond_24
    sget-object v0, Lcn/jpush/android/service/PushService;->bb:[Ljava/lang/String;

    const/16 v1, 0x81

    aget-object v0, v0, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    iget-boolean v0, p0, Lcn/jpush/android/service/PushService;->aq:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/jpush/android/service/l;

    invoke-direct {v1, p0}, Lcn/jpush/android/service/l;-><init>(Lcn/jpush/android/service/PushService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_25
    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    goto/16 :goto_2

    :cond_26
    invoke-direct {p0, v1}, Lcn/jpush/android/service/PushService;->f(I)V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_27
    move-object v6, v0

    move-object v7, v1

    goto/16 :goto_1
.end method
