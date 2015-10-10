.class public final Lcn/jpush/android/util/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljavax/security/auth/x500/X500Principal;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lcn/jpush/android/service/PushReceiver;

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x90

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "%|xk_0hhn^\u000cID|"

    move v7, v2

    move-object v8, v6

    move-object v9, v6

    move-object v6, v0

    move v0, v1

    :goto_0
    invoke-static {v6}, Lcn/jpush/android/util/a;->z(Ljava/lang/String;)[C

    move-result-object v6

    invoke-static {v6}, Lcn/jpush/android/util/a;->z([C)Ljava/lang/String;

    move-result-object v6

    packed-switch v0, :pswitch_data_0

    aput-object v6, v8, v7

    const-string v0, "\u0002CxvC\nH"

    move-object v6, v0

    move v7, v3

    move-object v8, v9

    move v0, v2

    goto :goto_0

    :pswitch_0
    aput-object v6, v8, v7

    const-string v0, "\u0006XduR"

    move-object v6, v0

    move v7, v4

    move-object v8, v9

    move v0, v3

    goto :goto_0

    :pswitch_1
    aput-object v6, v8, v7

    const-string v0, "\u001bU}}"

    move-object v6, v0

    move v7, v5

    move-object v8, v9

    move v0, v4

    goto :goto_0

    :pswitch_2
    aput-object v6, v8, v7

    const/4 v6, 0x4

    const-string v0, "\u000bMyy"

    move v7, v6

    move-object v8, v9

    move-object v6, v0

    move v0, v5

    goto :goto_0

    :pswitch_3
    aput-object v6, v8, v7

    const/4 v7, 0x5

    const-string v6, "\u001f@x\u007fP\nH"

    const/4 v0, 0x4

    move-object v8, v9

    goto :goto_0

    :pswitch_4
    aput-object v6, v8, v7

    const/4 v7, 0x6

    const-string v6, "\u001cXllB\u001c"

    const/4 v0, 0x5

    move-object v8, v9

    goto :goto_0

    :pswitch_5
    aput-object v6, v8, v7

    const/4 v7, 0x7

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002OYc;i_Ah,dLVp*h"

    const/4 v0, 0x6

    move-object v8, v9

    goto :goto_0

    :pswitch_6
    aput-object v6, v8, v7

    const/16 v7, 0x8

    const-string v6, ".BijX\u0006HXl^\u0003"

    const/4 v0, 0x7

    move-object v8, v9

    goto :goto_0

    :pswitch_7
    aput-object v6, v8, v7

    const/16 v7, 0x9

    const-string v6, "!C-lV\u001dKhl\u0017\u001cI\u007fn^\u000cI-9"

    const/16 v0, 0x8

    move-object v8, v9

    goto :goto_0

    :pswitch_8
    aput-object v6, v8, v7

    const/16 v7, 0xa

    const-string v6, "=Ia}V\u001cI-oV\u0004I-tX\u000cG-yQ\u001bI\u007f8\u0002_\u001c=uDU"

    const/16 v0, 0x9

    move-object v8, v9

    goto :goto_0

    :pswitch_9
    aput-object v6, v8, v7

    const/16 v7, 0xb

    const-string v6, "\nA}lNO\\ljV\u0002_"

    const/16 v0, 0xa

    move-object v8, v9

    goto :goto_0

    :pswitch_a
    aput-object v6, v8, v7

    const/16 v7, 0xc

    const-string v6, "\u000bI{qT\n"

    const/16 v0, 0xb

    move-object v8, v9

    goto :goto_0

    :pswitch_b
    aput-object v6, v8, v7

    const/16 v7, 0xd

    const-string v6, "\u0008_`6A\n^~qX\u0001\u0002oyD\nNlvS"

    const/16 v0, 0xc

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_c
    aput-object v6, v8, v7

    const/16 v7, 0xe

    const-string v6, "\u001a^a"

    const/16 v0, 0xd

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_d
    aput-object v6, v8, v7

    const/16 v7, 0xf

    const-string v6, "\u000eBijX\u0006H^|\\9I\u007fk^\u0000B"

    const/16 v0, 0xe

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_e
    aput-object v6, v8, v7

    const/16 v7, 0x10

    const-string v6, "\u000cDlvY\n@"

    const/16 v0, 0xf

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_f
    aput-object v6, v8, v7

    const/16 v7, 0x11

    const-string v6, "\rM~}U\u000eBi"

    const/16 v0, 0x10

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_10
    aput-object v6, v8, v7

    const/16 v7, 0x12

    const-string v6, "\u0001IyoX\u001dG"

    const/16 v0, 0x11

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_11
    aput-object v6, v8, v7

    const/16 v7, 0x13

    const-string v6, "\u0002Ci}["

    const/16 v0, 0x12

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_12
    aput-object v6, v8, v7

    const/16 v7, 0x14

    const-string v6, "\u000cC`6V\u0001H\u007fw^\u000b\u0002ayB\u0001Oe}EAMnl^\u0000B#Qy<xLT{0\u007fEWe;oXL"

    const/16 v0, 0x13

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_13
    aput-object v6, v8, v7

    const/16 v7, 0x15

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\nTyjVA_ewE\u001bOxl\u0019&oBVh=i^Wb=oH"

    const/16 v0, 0x14

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_14
    aput-object v6, v8, v7

    const/16 v7, 0x16

    const-string v6, ":Bh`G\nOy}SU\u000cdvA\u000e@d|\u0017\u001a^a8\u001aO"

    const/16 v0, 0x15

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_15
    aput-object v6, v8, v7

    const/16 v7, 0x17

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\nTyjVA_ewE\u001bOxl\u0019!m@]"

    const/16 v0, 0x16

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_16
    aput-object v6, v8, v7

    const/16 v7, 0x18

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002[Qr8"

    const/16 v0, 0x17

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_17
    aput-object v6, v8, v7

    const/16 v7, 0x19

    const-string v6, "\u000bY}t^\u000cMy}"

    const/16 v0, 0x18

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_18
    aput-object v6, v8, v7

    const/16 v7, 0x1a

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\nTyjVA_ewE\u001bOxl\u0019&bY]y;"

    const/16 v0, 0x19

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_19
    aput-object v6, v8, v7

    const/16 v7, 0x1b

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002dvC\nBy6s\u000eI`wY<I\u007fn^\u000cI"

    const/16 v0, 0x1a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_1a
    aput-object v6, v8, v7

    const/16 v7, 0x1c

    const-string v6, ",C`hX\u0001Icl~\u0001Jbc"

    const/16 v0, 0x1b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_1b
    aput-object v6, v8, v7

    const/16 v7, 0x1d

    const-string v6, "&aHQ"

    const/16 v0, 0x1c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_1c
    aput-object v6, v8, v7

    const/16 v7, 0x1e

    const-string v6, "\u001dIjqD\u001bI\u007fGS\nZd{R0Mc|E\u0000EiG^\u000b"

    const/16 v0, 0x1d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_1d
    aput-object v6, v8, v7

    const/16 v7, 0x1f

    const-string v6, ";Ddk\u0017\u0006_-y\u0017\u0001Iz8S\nZd{ROJbj\u0017\u001dIjqD\u001bI\u007f9"

    const/16 v0, 0x1e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_1e
    aput-object v6, v8, v7

    const/16 v7, 0x20

    const-string v6, "\u001dIjqD\u001bI\u007fGS\nZd{R0Al{"

    const/16 v0, 0x1f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_1f
    aput-object v6, v8, v7

    const/16 v7, 0x21

    const-string v6, "\u0003I{}[B\u001d:-\r\u0019I\u007fk^\u0000B-mG\u0008^l|R"

    const/16 v0, 0x20

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_20
    aput-object v6, v8, v7

    const/16 v7, 0x22

    const-string v6, "\u001dIjqD\u001bI\u007fGS\nZd{R0E`}^"

    const/16 v0, 0x21

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_21
    aput-object v6, v8, v7

    const/16 v7, 0x23

    const-string v6, "\"Mdv\u0017\u000c@lkDOE~8"

    const/16 v0, 0x22

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_22
    aput-object v6, v8, v7

    const/16 v7, 0x24

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000cMy}P\u0000^t6{.yC[\u007f*~"

    const/16 v0, 0x23

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_23
    aput-object v6, v8, v7

    const/16 v7, 0x25

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002@Y~!"

    const/16 v0, 0x24

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_24
    aput-object v6, v8, v7

    const/16 v7, 0x26

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002H@c=m"

    const/16 v0, 0x25

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_25
    aput-object v6, v8, v7

    const/16 v7, 0x27

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6v,oHKd0{D^~0\u007fYYc*"

    const/16 v0, 0x26

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_26
    aput-object v6, v8, v7

    const/16 v7, 0x28

    const-string v6, "\u0018Ekq"

    const/16 v0, 0x27

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_27
    aput-object v6, v8, v7

    const/16 v7, 0x29

    const-string v6, ",Mc8Y\u0000X-\u007fR\u001b\u000c}yT\u0004Mj}\u0017\u0001M`}\u0019"

    const/16 v0, 0x28

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_28
    aput-object v6, v8, v7

    const/16 v7, 0x2a

    const-string v6, "J_#hR\u001dAdkD\u0006Cc6}?y^Ph\"i^Kv(i"

    const/16 v0, 0x29

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_29
    aput-object v6, v8, v7

    const/16 v7, 0x2b

    const-string v6, "@_tkC\nA\"yG\u001f\u0003"

    const/16 v0, 0x2a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_2a
    aput-object v6, v8, v7

    const/16 v7, 0x2c

    const-string v6, "@HllV@M}h\u0018"

    const/16 v0, 0x2b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_2b
    aput-object v6, v8, v7

    const/16 v7, 0x2d

    const-string v6, ",Y\u007fjR\u0001X-h\\OEckC\u000e@a}SO\\ll_U\u000c"

    const/16 v0, 0x2c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_2c
    aput-object v6, v8, v7

    const/16 v7, 0x2e

    const-string v6, "K\u0008"

    const/16 v0, 0x2d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_2d
    aput-object v6, v8, v7

    const/16 v7, 0x2f

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002dvC\nBy6y xD^~,mYQx!s_]t*e[]s0|_Wo6"

    const/16 v0, 0x2e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_2e
    aput-object v6, v8, v7

    const/16 v7, 0x30

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002]Yt$mJ]h.hI]s"

    const/16 v0, 0x2f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_2f
    aput-object v6, v8, v7

    const/16 v7, 0x31

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002XKr=s]Jr<iCL"

    const/16 v0, 0x30

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_30
    aput-object v6, v8, v7

    const/16 v7, 0x32

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002]Yt$mJ]h=i@Wa*h"

    const/16 v0, 0x31

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_31
    aput-object v6, v8, v7

    const/16 v7, 0x33

    const-string v6, "\u001fMnsV\u0008I"

    const/16 v0, 0x32

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_32
    aput-object v6, v8, v7

    const/16 v7, 0x34

    const-string v6, "\u000eBijX\u0006H#vR\u001b\u0002nwY\u0001\u0002NWy!iNL~9eYAh,dLVp*"

    const/16 v0, 0x33

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_33
    aput-object v6, v8, v7

    const/16 v7, 0x35

    const-string v6, "\u000c@bkR\u001fY~p"

    const/16 v0, 0x34

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_34
    aput-object v6, v8, v7

    const/16 v7, 0x36

    const-string v6, "3r"

    const/16 v0, 0x35

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_35
    aput-object v6, v8, v7

    const/16 v7, 0x37

    const-string v6, "\u001fY~pC\u0006Ah"

    const/16 v0, 0x36

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_36
    aput-object v6, v8, v7

    const/16 v7, 0x38

    const-string v6, "\u001fY~p\u0017\u001bE`}\u0017\u0006_-\uff02"

    const/16 v0, 0x37

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_37
    aput-object v6, v8, v7

    const/16 v7, 0x39

    const-string v6, "\u000cCcvR\u000cXdn^\u001bU"

    const/16 v0, 0x38

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_38
    aput-object v6, v8, v7

    const/16 v7, 0x3a

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6`=eY]h<iYL~!k^"

    const/16 v0, 0x39

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_39
    aput-object v6, v8, v7

    const/16 v7, 0x3b

    const-string v6, "\u001dIjqD\u001b^ll^\u0000BRqS"

    const/16 v0, 0x3a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_3a
    aput-object v6, v8, v7

    const/16 v7, 0x3c

    const-string v6, "\u000eBijX\u0006HRqS"

    const/16 v0, 0x3b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_3b
    aput-object v6, v8, v7

    const/16 v7, 0x3d

    const-string v6, "\u001cXljC\'Cxj"

    const/16 v0, 0x3c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_3c
    aput-object v6, v8, v7

    const/16 v7, 0x3e

    const-string v6, "\nBiPX\u001a^"

    const/16 v0, 0x3d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_3d
    aput-object v6, v8, v7

    const/16 v7, 0x3f

    const-string v6, "\u001cXljC\"Eck"

    const/16 v0, 0x3e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_3e
    aput-object v6, v8, v7

    const/16 v7, 0x40

    const-string v6, "\nBilz\u0006B~"

    const/16 v0, 0x3f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_3f
    aput-object v6, v8, v7

    const/16 v7, 0x41

    const-string v6, "\u001cEa}Y\u000cI]mD\u0007xduR"

    const/16 v0, 0x40

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_40
    aput-object v6, v8, v7

    const/16 v7, 0x42

    const-string v6, "\"h8"

    const/16 v0, 0x41

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_41
    aput-object v6, v8, v7

    const/16 v7, 0x43

    const-string v6, "@\\\u007fwT@O}m^\u0001Jb"

    const/16 v0, 0x42

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_42
    aput-object v6, v8, v7

    const/16 v7, 0x44

    const-string v6, "?^b{R\u001c_bj"

    const/16 v0, 0x43

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_43
    aput-object v6, v8, v7

    const/16 v7, 0x45

    const-string v6, "4\u001cP2"

    const/16 v0, 0x44

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_44
    aput-object v6, v8, v7

    const/16 v7, 0x46

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6`=eY]h*tY]e!mAGd;c_Yp*"

    const/16 v0, 0x45

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_45
    aput-object v6, v8, v7

    const/16 v7, 0x47

    const-string v6, "(Cy8D\u000bOljSOJdtRO_lnR\u000b\u000ci}A\u0006OhQSO\u0001-"

    const/16 v0, 0x46

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_46
    aput-object v6, v8, v7

    const/16 v7, 0x48

    const-string v6, "\u001fY~ph\u001aHd|"

    const/16 v0, 0x47

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_47
    aput-object v6, v8, v7

    const/16 v7, 0x49

    const-string v6, "?^h~D)Ea}"

    const/16 v0, 0x48

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_48
    aput-object v6, v8, v7

    const/16 v7, 0x4a

    const-string v6, "\u0004It"

    const/16 v0, 0x49

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_49
    aput-object v6, v8, v7

    const/16 v7, 0x4b

    const-string v6, "(Cy8D\u000bOljSOJdtRO_lnR\u000b\u000cx|^\u000b\u000c 8"

    const/16 v0, 0x4a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_4a
    aput-object v6, v8, v7

    const/16 v7, 0x4c

    const-string v6, "?Y~p"

    const/16 v0, 0x4b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_4b
    aput-object v6, v8, v7

    const/16 v7, 0x4d

    const-string v6, "\u001fCz}E"

    const/16 v0, 0x4c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_4c
    aput-object v6, v8, v7

    const/16 v7, 0x4e

    const-string v6, "_\u0006="

    const/16 v0, 0x4d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_4d
    aput-object v6, v8, v7

    const/16 v7, 0x4f

    const-string v6, "\"mN8V\u000bH\u007f8^\u0001Jb5\u001aB\u0001-"

    const/16 v0, 0x4e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_4e
    aput-object v6, v8, v7

    const/16 v7, 0x50

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002YQc#i"

    const/16 v0, 0x4f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_4f
    aput-object v6, v8, v7

    const/16 v7, 0x51

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002@Kp0eI"

    const/16 v0, 0x50

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_50
    aput-object v6, v8, v7

    const/16 v7, 0x52

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002KQ{*s]Yc\'"

    const/16 v0, 0x51

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_51
    aput-object v6, v8, v7

    const/16 v7, 0x53

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002NWy;iCLh;u]]"

    const/16 v0, 0x52

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_52
    aput-object v6, v8, v7

    const/16 v7, 0x54

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002LHg$iT"

    const/16 v0, 0x53

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_53
    aput-object v6, v8, v7

    const/16 v7, 0x55

    const-string v6, "<Ic|\u0017\r^byS\u000cM~l\u0017\u001bC-yG\u001f\u0016-"

    const/16 v0, 0x54

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_54
    aput-object v6, v8, v7

    const/16 v7, 0x56

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002@]d<mJ]"

    const/16 v0, 0x55

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_55
    aput-object v6, v8, v7

    const/16 v7, 0x57

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002dvC\nBy6z*\u007f^Yp*s_]t*e[]s"

    const/16 v0, 0x56

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_56
    aput-object v6, v8, v7

    const/16 v7, 0x58

    const-string v6, "\u000bIomP0Bbl^\tEnyC\u0006Cc"

    const/16 v0, 0x57

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_57
    aput-object v6, v8, v7

    const/16 v7, 0x59

    const-string v6, "\u68af\u6d67\u523d\u96de\u6227O\u007fIS\u0017\u6745\u6dd7\u52ad\u7ec7\u8b96\u4e8c\u782d\u300f\u70a1\u51cc\u678a\u7727\u8beb\u60dd"

    const/16 v0, 0x58

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_58
    aput-object v6, v8, v7

    const/16 v7, 0x5a

    const-string v6, "\u000eOyqA\u0006Xt"

    const/16 v0, 0x59

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_59
    aput-object v6, v8, v7

    const/16 v7, 0x5b

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002dvC\nBy6y xD^~,mYQx!sBHr!iIGg=cUA"

    const/16 v0, 0x5a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_5a
    aput-object v6, v8, v7

    const/16 v7, 0x5c

    const-string v6, "%|xk_\u63bf\u7916\uff17\u7f22\u5c26\u7eb0\u8b8d\u4eee\u7819"

    const/16 v0, 0x5b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_5b
    aput-object v6, v8, v7

    const/16 v7, 0x5d

    const-string v6, "\u0001CyqQ\u0006Oll^\u0000B"

    const/16 v0, 0x5c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_5c
    aput-object v6, v8, v7

    const/16 v7, 0x5e

    const-string v6, "!yAT\u0017\u000cCclR\u0017X"

    const/16 v0, 0x5d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_5d
    aput-object v6, v8, v7

    const/16 v7, 0x5f

    const-string v6, "(E{}\u0017\u001a\\-lXO_yyE\u001b\u000clhGOJbj\u0017\u0006B{y[\u0006H-hV\u001dM`k\u0017B\u000c}yT\u0004Mj}y\u000eAh\""

    const/16 v0, 0x5e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_5e
    aput-object v6, v8, v7

    const/16 v7, 0x60

    const-string v6, "%|xk_\u63bf\u7916\uff17\u531d\u543a\u54e3m}h|\nU\u4e00\u5321\u917a"

    const/16 v0, 0x5f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_5f
    aput-object v6, v8, v7

    const/16 v7, 0x61

    const-string v6, "\u8b98\u521c-HX\u001dXlt\u0017\u4e65\u839b\u53db\u60b0\u76b3\u536a\u5421\u5481YG\u001fgha\u5e41\u669b\u659cLvS\u001dCd|z\u000eBd~R\u001cX\u76f5\u5e8c\u5b60\u6bda"

    const/16 v0, 0x60

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_60
    aput-object v6, v8, v7

    const/16 v7, 0x62

    const-string v6, "\u001bClkC;Iul"

    const/16 v0, 0x61

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_61
    aput-object v6, v8, v7

    const/16 v7, 0x63

    const-string v6, ":BfvX\u0018B"

    const/16 v0, 0x62

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_62
    aput-object v6, v8, v7

    const/16 v7, 0x64

    const-string v6, "\u001aXk5\u000f"

    const/16 v0, 0x63

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_63
    aput-object v6, v8, v7

    const/16 v7, 0x65

    const-string v6, "\u0006_XhS\u000eXhNR\u001d_dwY"

    const/16 v0, 0x64

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_64
    aput-object v6, v8, v7

    const/16 v7, 0x66

    const-string v6, "\rCia"

    const/16 v0, 0x65

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_65
    aput-object v6, v8, v7

    const/16 v7, 0x67

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002xq\u0019?Y~pv\u000cXdn^\u001bU"

    const/16 v0, 0x66

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_66
    aput-object v6, v8, v7

    const/16 v7, 0x68

    const-string v6, "!C-lV\u001dKhl\u0017\u001dIn}^\u0019I\u007f8\u0016"

    const/16 v0, 0x67

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_67
    aput-object v6, v8, v7

    const/16 v7, 0x69

    const-string v6, "\u0006Ahq"

    const/16 v0, 0x68

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_68
    aput-object v6, v8, v7

    const/16 v7, 0x6a

    const-string v6, "\u001fDbvR"

    const/16 v0, 0x69

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_69
    aput-object v6, v8, v7

    const/16 v7, 0x6b

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6e*mIGg\'cC]h<xLLr"

    const/16 v0, 0x6a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_6a
    aput-object v6, v8, v7

    const/16 v7, 0x6c

    const-string v6, "\u000e\\}t^\u000cMyqX\u0001\u0003{vSAMc|E\u0000Ei6G\u000eOfyP\n\u0001ljT\u0007E{}"

    const/16 v0, 0x6b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_6b
    aput-object v6, v8, v7

    const/16 v7, 0x6d

    const-string v6, "%|XK\u007f0m]H|*u"

    const/16 v0, 0x6c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_6c
    aput-object v6, v8, v7

    const/16 v7, 0x6e

    const-string v6, "!C-lV\u001dKhl\u0017\u000eOyqA\u0006Xt8\u0016"

    const/16 v0, 0x6d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_6d
    aput-object v6, v8, v7

    const/16 v7, 0x6f

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000cdvC\nBy8Q\u0006@y}EOJbj\u0017?Y~pe\nOhqA\n^78T\u0001\u0002ghB\u001cD#yY\u000b^bqSAEclR\u0001X#Vx;eKQt.xDWy0~H[r&zH\\h?~B@n"

    const/16 v0, 0x6e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_6e
    aput-object v6, v8, v7

    const/16 v7, 0x70

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000cl{C\u0006ZdlNU\u000c"

    const/16 v0, 0x6f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_6f
    aput-object v6, v8, v7

    const/16 v7, 0x71

    const-string v6, "6Cx8D\u0007CxtSOAlsROAlqYOMnl^\u0019Eya\u0017\nTy}Y\u000b_-QY\u001cX\u007fmZ\nBy}S.OyqA\u0006Xt8\u001f%|xk_F\u0000-wC\u0007I\u007fo^\u001cI-aX\u001a\u000czq[\u0003\u000ccwCO_h}\u0017\u001a_hj\u0017\u000c@d{\\OMc|\u0017\u001a_hj\u0017\u000eOyqA\n\u000cyqZ\n\u000c~lV\u001dX-wYO^hhX\u001dX-qYO|bjC\u000e@#8"

    const/16 v0, 0x70

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_70
    aput-object v6, v8, v7

    const/16 v7, 0x72

    const-string v6, "A\\hjZ\u0006_~qX\u0001\u0002GHb<dRUr<\u007fL_r"

    const/16 v0, 0x71

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_71
    aput-object v6, v8, v7

    const/16 v7, 0x73

    const-string v6, "?Y~pe\nOhqA\n^-k_\u0000Ya|\u0017\u0001Cy8_\u000eZh8^\u0001XhvCOJdtC\n^-5\u001aOMc|E\u0000Ei6^\u0001XhvCAMnl^\u0000B#Zx xR[x\"|A]c*h!8g\u0003IlkRO^huX\u0019I-l_\n\u000cdvC\nBy8Q\u0006@y}EOEc8v\u0001H\u007fw^\u000balv^\tI~l\u0019\u0017Aa"

    const/16 v0, 0x72

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_72
    aput-object v6, v8, v7

    const/16 v7, 0x74

    const-string v6, "8I-jR\u000cC`uR\u0001H-aX\u001a\u000cl|SOXe}\u0017\u001fI\u007fu^\u001c_dwYO\u0001-"

    const/16 v0, 0x73

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_73
    aput-object v6, v8, v7

    const/16 v7, 0x75

    const-string v6, "C\u000cbl_\n^zqD\n\u000ctwBOOlv\u0017\u0001Cy8[\u0000OllROXe}\u0017\u000bI{qT\n_#"

    const/16 v0, 0x74

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_74
    aput-object v6, v8, v7

    const/16 v7, 0x76

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000c\u007f}T\nE{}EU\u000c"

    const/16 v0, 0x75

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_75
    aput-object v6, v8, v7

    const/16 v7, 0x77

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000cdvC\nBy8Q\u0006@y}EO\u0016-{YAF}mD\u0007\u0002lvS\u001dCd|\u0019\u0006By}Y\u001b\u0002_]g ~Y"

    const/16 v0, 0x76

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_76
    aput-object v6, v8, v7

    const/16 v7, 0x78

    const-string v6, "\u000eBijX\u0006H#qY\u001bIcl\u0019\u000eOyqX\u0001\u0002OWx;sNWz?`HLr+"

    const/16 v0, 0x77

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_77
    aput-object v6, v8, v7

    const/16 v7, 0x79

    const-string v6, ";Dh8G\n^`qD\u001cEbv\u0017\u001cDbm[\u000b\u000co}\u0017\u000bIkqY\nH-5\u0017"

    const/16 v0, 0x78

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_78
    aput-object v6, v8, v7

    const/16 v7, 0x7a

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000c~}E\u0019En}\rO"

    const/16 v0, 0x79

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_79
    aput-object v6, v8, v7

    const/16 v7, 0x7b

    const-string v6, "+I{}[\u0000\\hj\u0017\u001cDbm[\u000b\u000c~}COm}h|\nU-qYOmc|E\u0000EiUV\u0001Ek}D\u001b\u0002uu["

    const/16 v0, 0x7a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_7a
    aput-object v6, v8, v7

    const/16 v7, 0x7c

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002dvC\nBy6e*|BJc"

    const/16 v0, 0x7b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_7b
    aput-object v6, v8, v7

    const/16 v7, 0x7d

    const-string v6, "\u000eOyqX\u0001\u0016npR\u000cG[y[\u0006H@yY\u0006JhkC"

    const/16 v0, 0x7c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_7c
    aput-object v6, v8, v7

    const/16 v7, 0x7e

    const-string v6, ";Dh8G\n^`qD\u001cCdv\u0017\u0006_-jR\u001eYdjR\u000b\u000c 8V\u0001H\u007fw^\u000b\u0002}}E\u0002E~k^\u0000B#Oe&xHGd*xYQy(\u007f"

    const/16 v0, 0x7d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_7d
    aput-object v6, v8, v7

    const/16 v7, 0x7f

    const-string v6, "\u000cB#rG\u001a_e6V\u0001H\u007fw^\u000b\u0002dvC\nBy6e*kDKc*~"

    const/16 v0, 0x7e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_7e
    aput-object v6, v8, v7

    const/16 v7, 0x80

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000cdvC\nBy8Q\u0006@y}EOJbj\u0017?Y~pv\u000cXdn^\u001bU78T\u0001\u0002ghB\u001cD#yY\u000b^bqSAYd6g\u001a_eYT\u001bE{qC\u0016"

    const/16 v0, 0x7f

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_7f
    aput-object v6, v8, v7

    const/16 v7, 0x81

    const-string v6, ";Dh8G\n^`qD\u001cCdv\u0017\u0006_-jR\u001eYdjR\u000b\u000c 8"

    const/16 v0, 0x80

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_80
    aput-object v6, v8, v7

    const/16 v7, 0x82

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-qY\u001bIcl\u0017\tEalR\u001d\u000ckwEOhl}Z\u0000B^}E\u0019En}\rOOc6]\u001fY~p\u0019\u000eBijX\u0006H#qY\u001bIcl\u0019+MhuX\u0001\u007fhjA\u0006Oh"

    const/16 v0, 0x81

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_81
    aput-object v6, v8, v7

    const/16 v7, 0x83

    const-string v6, ".BijX\u0006H@yY\u0006JhkCAT`t\u0017\u0002E~k^\u0001K-jR\u001eYdjR\u000b\u000cdvC\nBy8Q\u0006@y}EOJbj\u0017?Y~pd\n^{qT\n\u0016-{YAF}mD\u0007\u0002lvS\u001dCd|\u0019\u0006By}Y\u001b\u0002_]p&\u007fY]e"

    const/16 v0, 0x82

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_82
    aput-object v6, v8, v7

    const/16 v7, 0x84

    const-string v6, "\u0019I\u007fGT\u0000Hh"

    const/16 v0, 0x83

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_83
    aput-object v6, v8, v7

    const/16 v7, 0x85

    const-string v6, "\u0019I\u007fGY\u000eAh"

    const/16 v0, 0x84

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_84
    aput-object v6, v8, v7

    const/16 v7, 0x86

    const-string v6, "\u0001M`}"

    const/16 v0, 0x85

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_85
    aput-object v6, v8, v7

    const/16 v7, 0x87

    const-string v6, "\u001fGj"

    const/16 v0, 0x86

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_86
    aput-object v6, v8, v7

    const/16 v7, 0x88

    const-string v6, "V\u001b:,SZ\u001ai.\u000f]I8,\u000e\u000c"

    const/16 v0, 0x87

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_87
    aput-object v6, v8, v7

    const/16 v7, 0x89

    const-string v6, "(Ic}E\u000eXh8s\nZd{R&H-kB\u000cOhkDO"

    const/16 v0, 0x88

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_88
    aput-object v6, v8, v7

    const/16 v7, 0x8a

    const-string v6, "[K"

    const/16 v0, 0x89

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_89
    aput-object v6, v8, v7

    const/16 v7, 0x8b

    const-string v6, "\\K"

    const/16 v0, 0x8a

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_8a
    aput-object v6, v8, v7

    const/16 v7, 0x8c

    const-string v6, "]K"

    const/16 v0, 0x8b

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_8b
    aput-object v6, v8, v7

    const/16 v7, 0x8d

    const-string v6, "\u001aBfvX\u0018B"

    const/16 v0, 0x8c

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_8c
    aput-object v6, v8, v7

    const/16 v7, 0x8e

    const-string v6, "7\u00028(\u000e"

    const/16 v0, 0x8d

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_8d
    aput-object v6, v8, v7

    const/16 v7, 0x8f

    const-string v6, ",b0YY\u000b^bqSOhhzB\u0008\u0000B%v\u0001H\u007fw^\u000b\u0000N%b<"

    const/16 v0, 0x8e

    move-object v8, v9

    goto/16 :goto_0

    :pswitch_8e
    aput-object v6, v8, v7

    sput-object v9, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    const-string v0, "\\\u00195.\u0000\\\u001c<+\u0000V\u00195!\u0002"

    move-object v7, v6

    move-object v6, v0

    move v0, v1

    :goto_1
    invoke-static {v6}, Lcn/jpush/android/util/a;->z(Ljava/lang/String;)[C

    move-result-object v6

    invoke-static {v6}, Lcn/jpush/android/util/a;->z([C)Ljava/lang/String;

    move-result-object v6

    packed-switch v0, :pswitch_data_1

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    const-string v0, "_\u001c9!\u000eV\u001c<(\u0001[\u001c=(\u0007"

    move-object v7, v6

    move-object v6, v0

    move v0, v1

    :goto_2
    invoke-static {v6}, Lcn/jpush/android/util/a;->z(Ljava/lang/String;)[C

    move-result-object v6

    invoke-static {v6}, Lcn/jpush/android/util/a;->z([C)Ljava/lang/String;

    move-result-object v6

    packed-switch v0, :pswitch_data_2

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    const-string v0, "_\u001c=(\u0007_\u001c=(\u0007_\u001c=("

    move-object v7, v6

    move-object v6, v0

    move v0, v2

    goto :goto_2

    :pswitch_8f
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    sget-object v6, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v7, 0x8f

    aget-object v6, v6, v7

    invoke-direct {v0, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/jpush/android/util/a;->c:Ljavax/security/auth/x500/X500Principal;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "@HllV@"

    move-object v7, v6

    move-object v6, v0

    move v0, v1

    :goto_3
    invoke-static {v6}, Lcn/jpush/android/util/a;->z(Ljava/lang/String;)[C

    move-result-object v6

    invoke-static {v6}, Lcn/jpush/android/util/a;->z([C)Ljava/lang/String;

    move-result-object v6

    packed-switch v0, :pswitch_data_3

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "@HllV@\u0002}mD\u0007sx|^\u000b"

    move-object v7, v6

    move-object v6, v0

    move v0, v2

    goto :goto_3

    :pswitch_90
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    const-string v0, "_\u001c=(\u0007_\u001c=(\u0007_\u001c=(\u0007"

    move-object v7, v6

    move-object v6, v0

    move v0, v3

    goto :goto_2

    :pswitch_91
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v0, "@HllV@\u0002}mD\u0007si}A\u0006OhqS"

    move-object v7, v6

    move-object v6, v0

    move v0, v3

    goto :goto_3

    :pswitch_92
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/a;->f:Ljava/lang/String;

    sput v3, Lcn/jpush/android/util/a;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/jpush/android/util/a;->h:Ljava/util/ArrayList;

    sget-object v6, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    const-string v0, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6~!xHJy*x"

    move-object v7, v6

    move-object v6, v0

    move v0, v2

    goto/16 :goto_1

    :pswitch_93
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    const-string v0, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6`.gHG{ oF"

    move-object v7, v6

    move-object v6, v0

    move v0, v3

    goto/16 :goto_1

    :pswitch_94
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    sget-object v6, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v7, 0x46

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    const-string v0, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6v,oHKd0bHL` ~FGd;mY]"

    move-object v7, v6

    move-object v6, v0

    move v0, v4

    goto/16 :goto_1

    :pswitch_95
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcn/jpush/android/util/a;->h:Ljava/util/ArrayList;

    const-string v0, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6a&n_Yc*"

    move-object v7, v6

    move-object v6, v0

    move v0, v5

    goto/16 :goto_1

    :pswitch_96
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcn/jpush/android/util/a;->h:Ljava/util/ArrayList;

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6t\'mC_r0{D^~0\u007fYYc*"

    const/4 v0, 0x4

    goto/16 :goto_1

    :pswitch_97
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcn/jpush/android/util/a;->i:Ljava/util/ArrayList;

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6v,oHKd0jDVr0`B[v;eBV"

    const/4 v0, 0x5

    goto/16 :goto_1

    :pswitch_98
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcn/jpush/android/util/a;->i:Ljava/util/ArrayList;

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6v,oHKd0oBYe<iRTx,mYQx!"

    const/4 v0, 0x6

    goto/16 :goto_1

    :pswitch_99
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcn/jpush/android/util/a;->i:Ljava/util/ArrayList;

    const-string v6, "\u000eBijX\u0006H#hR\u001dAdkD\u0006Cc6v,oHKd0`B[v;eBVh*tYJv0oBUz.bIK"

    const/4 v0, 0x7

    goto/16 :goto_1

    :pswitch_9a
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/jpush/android/util/a;->i:Ljava/util/ArrayList;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_90
        :pswitch_8f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_91
        :pswitch_92
    .end packed-switch
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/16 v5, 0x49

    const/16 v4, 0x4a

    const/16 v6, 0x48

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {p0, v0, v2}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v3, Ljava/io/File;

    sget-object v0, Lcn/jpush/android/util/a;->e:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcn/jpush/android/util/m;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x48

    aget-object v1, v1, v4

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x4b

    aget-object v4, v4, v5

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v1, v2

    :goto_1
    :try_start_5
    invoke-static {}, Lcn/jpush/android/util/x;->j()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_3
    throw v0

    :catch_5
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_1
.end method

.method private static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcn/jpush/android/util/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x46

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/jpush/android/util/a;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcn/jpush/android/util/m;->a(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x47

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static C(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v0, " "

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static D(Landroid/content/Context;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static E(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v2, Lcn/jpush/android/api/InstrumentedActivity;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-class v2, Lcn/jpush/android/api/InstrumentedListActivity;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static F(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v0}, Lcn/jpush/android/service/PushReceiver;-><init>()V

    sput-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    :cond_0
    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x31

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x34

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x30

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x33

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x33

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x2f

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/d;Z)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x65

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x66

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x67

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x4e

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v8, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v0, v0, v5

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x11

    aget-object v5, v5, v6

    invoke-static {p0, v0, v5}, Lcn/jpush/android/service/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x2d

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x2b

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x2c

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x42

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v1, v3

    new-array v4, v1, [B

    move v1, v0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-char v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-string v0, ""

    goto :goto_2
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x42

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-string v0, ""

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v3, 0x2

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcn/jpush/android/data/d;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x57

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x54

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x56

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x53

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x50

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x51

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcn/jpush/android/data/d;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x52

    aget-object v1, v1, v2

    iget-object v2, p1, Lcn/jpush/android/data/d;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p1, Lcn/jpush/android/data/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcn/jpush/android/data/d;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x55

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x2a

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcn/jpush/android/data/d;->m:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v0, p1, Lcn/jpush/android/data/d;->c:Ljava/lang/String;

    const/16 v1, 0x3fa

    invoke-static {v0, v1, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x14000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, p3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x15

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :cond_0
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x5e

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x5f

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcn/jpush/android/util/a;->l(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b([B)I
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v4, 0x11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v0, v0, v3

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {p0, v0, v3}, Lcn/jpush/android/service/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    :goto_0
    invoke-static {p0}, Lcn/jpush/android/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v7, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v8, 0xf

    aget-object v7, v7, v8

    invoke-virtual {v6, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v7, 0x13

    aget-object v1, v1, v7

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v6, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/a;->e:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x42

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x64

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-string v0, ""

    goto :goto_1
.end method

.method public static b()V
    .locals 4

    invoke-static {}, Lcn/jpush/android/service/t;->a()Lcn/jpush/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/service/t;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x26

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x29

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x5b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x58

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x5a

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x5d

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-gez v1, :cond_0

    const v1, 0x1080052

    :cond_0
    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x5c

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x59

    aget-object v4, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, p1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x22

    iput v1, v5, Landroid/app/Notification;->flags:I

    invoke-virtual {v5, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x39

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x68

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c([B)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 6

    const/16 v3, 0x43

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x43

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x44

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)S
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;)S

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p0}, Lcn/jpush/android/util/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jpush/android/service/PushReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x5b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x58

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x62

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x5d

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-gez v1, :cond_1

    const v1, 0x1080052

    :cond_1
    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x60

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x61

    aget-object v4, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v1, p1, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v1, 0x22

    iput v1, v5, Landroid/app/Notification;->flags:I

    invoke-virtual {v5, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x63

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x39

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    move v1, v2

    :goto_1
    sget-object v0, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x39

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x6c

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x45

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->h(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x5

    const/4 v0, -0x1

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x25

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x23

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x8e

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    move v2, v1

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/util/a;->c:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :cond_0
    :goto_1
    return v0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x69

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/util/a;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x6b

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x6a

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x3c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/jpush/android/util/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lcn/jpush/android/util/b;->d:Lcn/jpush/android/util/b;

    invoke-virtual {v1}, Lcn/jpush/android/util/b;->ordinal()I

    move-result v1

    sput v1, Lcn/jpush/android/util/a;->a:I

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v1, Lcn/jpush/android/util/b;->b:Lcn/jpush/android/util/b;

    invoke-virtual {v1}, Lcn/jpush/android/util/b;->ordinal()I

    move-result v1

    sput v1, Lcn/jpush/android/util/a;->a:I

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/jpush/android/util/a;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, Lcn/jpush/android/util/b;->c:Lcn/jpush/android/util/b;

    invoke-virtual {v1}, Lcn/jpush/android/util/b;->ordinal()I

    move-result v1

    sput v1, Lcn/jpush/android/util/a;->a:I

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x3a

    aget-object v3, v3, v4

    invoke-static {p0, v3}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x46

    aget-object v3, v3, v5

    invoke-static {p0, v3}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcn/jpush/android/util/a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    if-nez v4, :cond_5

    if-nez v3, :cond_5

    move v1, v2

    :cond_3
    :goto_2
    if-nez v1, :cond_6

    sget-object v0, Lcn/jpush/android/util/b;->e:Lcn/jpush/android/util/b;

    invoke-virtual {v0}, Lcn/jpush/android/util/b;->ordinal()I

    move-result v0

    sput v0, Lcn/jpush/android/util/a;->a:I

    invoke-static {p0}, Lcn/jpush/android/util/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcn/jpush/android/util/a;->D(Landroid/content/Context;)Z

    move-result v1

    goto :goto_2

    :cond_6
    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_3
    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x89

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {p0, v1, v0}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/b;->a:Lcn/jpush/android/util/b;

    invoke-virtual {v1}, Lcn/jpush/android/util/b;->ordinal()I

    move-result v1

    sput v1, Lcn/jpush/android/util/a;->a:I

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcn/jpush/android/util/b;->e:Lcn/jpush/android/util/b;

    invoke-virtual {v0}, Lcn/jpush/android/util/b;->ordinal()I

    move-result v0

    sput v0, Lcn/jpush/android/util/a;->a:I

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-static {p0}, Lcn/jpush/android/util/a;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto :goto_3
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x4d

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x4c

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-static {}, Lcn/jpush/android/service/t;->a()Lcn/jpush/android/service/t;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jpush/android/service/t;->a(Landroid/os/PowerManager$WakeLock;)V

    invoke-static {}, Lcn/jpush/android/service/t;->a()Lcn/jpush/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/service/t;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/jpush/android/service/t;->a()Lcn/jpush/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jpush/android/service/t;->b()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    return-void
.end method

.method private static m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcn/jpush/android/util/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x46

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcn/jpush/android/util/a;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    new-instance v2, Ljava/io/File;

    sget-object v1, Lcn/jpush/android/util/a;->f:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {}, Lcn/jpush/android/util/x;->d()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object p1, v0

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    move-object p1, v0

    goto :goto_0

    :catch_4
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_6
    invoke-static {}, Lcn/jpush/android/util/x;->j()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_3
    move-object p1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_4
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_6
    :goto_5
    throw v0

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public static m(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    new-instance v4, Lcn/jpush/android/util/y;

    invoke-direct {v4}, Lcn/jpush/android/util/y;-><init>()V

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/jpush/android/util/y;->a:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcn/jpush/android/util/y;->b:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, v4, Lcn/jpush/android/util/y;->c:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v4, Lcn/jpush/android/util/y;->d:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/util/y;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x86

    aget-object v4, v4, v5

    iget-object v5, v0, Lcn/jpush/android/util/y;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x87

    aget-object v4, v4, v5

    iget-object v5, v0, Lcn/jpush/android/util/y;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x85

    aget-object v4, v4, v5

    iget-object v5, v0, Lcn/jpush/android/util/y;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x84

    aget-object v4, v4, v5

    iget v0, v0, Lcn/jpush/android/util/y;->d:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    return-object v1
.end method

.method private static n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3a

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    const-string v3, "0"

    invoke-static {p0, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x38

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x36

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    array-length v7, v3

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    aget-char v8, v3, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-ne v5, v8, :cond_3

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v6, v8, :cond_3

    if-gt v6, v9, :cond_3

    move v0, v1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto/16 :goto_0
.end method

.method private static o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3a

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 10

    const/16 v8, 0x3b

    const/16 v9, 0x17

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x41

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x3d

    aget-object v2, v2, v4

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x3f

    aget-object v4, v4, v5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x3e

    aget-object v5, v5, v6

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v7, 0x40

    aget-object v6, v6, v7

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v2, :cond_0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    if-ltz v3, :cond_0

    if-gt v4, v8, :cond_0

    if-gt v3, v8, :cond_0

    if-gt v5, v9, :cond_0

    if-gt v2, v9, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ge v2, v5, :cond_5

    if-le v7, v2, :cond_2

    if-lt v7, v5, :cond_4

    :cond_2
    if-ne v7, v2, :cond_3

    if-ge v6, v4, :cond_4

    :cond_3
    if-ne v7, v5, :cond_0

    if-gt v6, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-ne v2, v5, :cond_6

    if-ne v7, v2, :cond_0

    if-lt v6, v4, :cond_0

    if-gt v6, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    if-le v2, v5, :cond_0

    if-le v7, v2, :cond_7

    if-le v7, v9, :cond_a

    :cond_7
    if-ltz v7, :cond_8

    if-lt v7, v5, :cond_a

    :cond_8
    if-ne v7, v2, :cond_9

    if-ge v6, v4, :cond_a

    :cond_9
    if-ne v7, v5, :cond_0

    if-gt v6, v3, :cond_0

    :cond_a
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 9

    const/16 v8, 0x74

    const/16 v5, 0x7a

    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v1, 0x0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x7d

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcn/jpush/android/service/PushService;

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcn/jpush/android/service/PushService;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    sget-object v3, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {v3}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    move v3, v2

    :goto_1
    sget-boolean v4, Lcn/jpush/android/a;->i:Z

    if-nez v4, :cond_0

    invoke-static {p0}, Lcn/jpush/android/util/a;->E(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x71

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_18

    if-eqz v0, :cond_18

    :goto_2
    return v2

    :cond_1
    const-class v0, Lcn/jpush/android/service/DaemonService;

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcn/jpush/android/service/DaemonService;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcn/jpush/android/a;->k:Z

    :goto_3
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x7f

    aget-object v0, v0, v3

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x83

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1b

    aget-object v0, v0, v3

    invoke-static {p0, v0, v2}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x82

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcn/jpush/android/a;->k:Z

    goto :goto_3

    :cond_3
    sput-boolean v2, Lcn/jpush/android/a;->k:Z

    goto :goto_3

    :cond_4
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x7c

    aget-object v0, v0, v3

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x77

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-class v0, Lcn/jpush/android/service/DownloadService;

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcn/jpush/android/service/DownloadService;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-class v0, Lcn/jpush/android/service/PushReceiver;

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x76

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jpush/android/util/a;->F(Landroid/content/Context;)V

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    const-class v0, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x78

    aget-object v3, v3, v4

    invoke-static {p0, v0, v3}, Lcn/jpush/android/util/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x73

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x2f

    aget-object v0, v0, v3

    invoke-static {p0, v0, v2}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x6f

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-class v0, Lcn/jpush/android/service/AlarmReceiver;

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x76

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcn/jpush/android/service/AlarmReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-class v0, Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x6e

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_4
    if-nez v0, :cond_d

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x70

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lcn/jpush/android/ui/PushActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x67

    aget-object v0, v0, v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_5
    if-nez v0, :cond_f

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x80

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x72

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x79

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_10
    sget-object v3, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/jpush/android/util/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x81

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Lcn/jpush/android/util/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x3a

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v7

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x7e

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_13
    sget-object v0, Lcn/jpush/android/util/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    sget-object v0, Lcn/jpush/android/util/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v6, 0x75

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_17
    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v3, v3, v7

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x7b

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    goto/16 :goto_1

    :cond_18
    move v2, v1

    goto/16 :goto_2
.end method

.method public static q(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    if-eqz v0, :cond_0

    const-class v0, Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcn/jpush/android/util/a;->j:Lcn/jpush/android/service/PushReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcn/jpush/android/service/PushService;->a(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/service/PushService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x3b

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcn/jpush/android/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v2, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x6d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string v1, ""

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x39

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8d

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_1

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    :cond_2
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8c

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ne v0, v2, :cond_5

    :cond_4
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8b

    aget-object v0, v0, v1

    goto :goto_0

    :cond_5
    const/16 v2, 0xd

    if-ne v0, v2, :cond_6

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8a

    aget-object v0, v0, v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x21

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, " "

    :cond_0
    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x22

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {p0, v3, v4}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x1e

    aget-object v4, v4, v5

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {p0, v4, v5}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcn/jpush/android/util/a;->e(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcn/jpush/android/util/a;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    const-string v1, " "

    invoke-static {p0, v1}, Lcn/jpush/android/util/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, " "

    :cond_3
    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x20

    aget-object v3, v3, v5

    sget-object v5, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {p0, v3, v5}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :goto_1
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v3, 0x1f

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcn/jpush/android/util/ae;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    goto :goto_1
.end method

.method public static x(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v5, 0x1b

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v7, 0x1c

    aget-object v6, v6, v7

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x27

    aget-object v0, v0, v2

    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x28

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v4, 0x4f

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->d()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    move-object v0, v1

    goto :goto_0
.end method

.method private static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-static {p0, v0}, Lcn/jpush/android/util/a;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/jpush/android/util/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcn/jpush/android/util/a;->z:[Ljava/lang/String;

    const/16 v2, 0x88

    aget-object v1, v1, v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-static {p0}, Lcn/jpush/android/util/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcn/jpush/android/util/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-static {p0}, Lcn/jpush/android/util/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, " "
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    invoke-static {p0}, Lcn/jpush/android/util/a;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static z([C)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    :cond_0
    move-object v2, p0

    move v3, v1

    :goto_0
    aget-char v5, p0, v1

    rem-int/lit8 v4, v3, 0x5

    packed-switch v4, :pswitch_data_0

    const/16 v4, 0x37

    :goto_1
    xor-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, p0, v1

    add-int/lit8 v1, v3, 0x1

    if-nez v0, :cond_1

    move-object p0, v2

    move v3, v1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v4, 0x6f

    goto :goto_1

    :pswitch_1
    const/16 v4, 0x2c

    goto :goto_1

    :pswitch_2
    const/16 v4, 0xd

    goto :goto_1

    :pswitch_3
    const/16 v4, 0x18

    goto :goto_1

    :cond_1
    move-object p0, v2

    :cond_2
    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static z(Ljava/lang/String;)[C
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v1, v0

    :goto_0
    array-length v0, v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x37

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
