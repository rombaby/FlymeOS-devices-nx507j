.class public final Lcn/jpush/android/service/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:J

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "<{\u001cNG\u001e{WEZ\u001bz\u0005\u0000K\u0006q\u0012\u0000\u0005I"

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

    const/16 v9, 0x28

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

    const-string v1, "<{\u001cNG\u001e{WRM\u0019z\u0005T\u0008\nz\u0013E\u0008D5"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u0008e\u0007\u007fI\rq(RE\u001f"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0008v\u0003IG\u0007"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0008e\u0007IL"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u001dl\u0007E"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u001bx\u0001"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u0008q\u0013"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "&^"

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v4, v6, :cond_5

    :cond_3
    move-object v6, v1

    move v7, v5

    move v11, v4

    move-object v4, v1

    move v1, v11

    :goto_4
    aget-char v9, v4, v5

    rem-int/lit8 v8, v7, 0x5

    packed-switch v8, :pswitch_data_2

    const/16 v8, 0x28

    :goto_5
    xor-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v5

    add-int/lit8 v5, v7, 0x1

    if-nez v1, :cond_4

    move-object v4, v6

    move v7, v5

    move v5, v1

    goto :goto_4

    :pswitch_7
    const/16 v9, 0x69

    goto/16 :goto_2

    :pswitch_8
    const/16 v9, 0x15

    goto/16 :goto_2

    :pswitch_9
    const/16 v9, 0x77

    goto/16 :goto_2

    :pswitch_a
    const/16 v9, 0x20

    goto/16 :goto_2

    :pswitch_b
    const/16 v8, 0x69

    goto :goto_5

    :pswitch_c
    const/16 v8, 0x15

    goto :goto_5

    :pswitch_d
    const/16 v8, 0x77

    goto :goto_5

    :pswitch_e
    const/16 v8, 0x20

    goto :goto_5

    :cond_4
    move v4, v1

    move-object v1, v6

    :cond_5
    if-gt v4, v5, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_3

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ",m\u0014EM\r5\u0015UN\u000fp\u0005\u0000[\u0000o\u0012\u000e\u00089y\u0012A[\u000c5\u0014OF\u001dt\u0014T\u0008\u001a`\u0007PG\u001baY"

    const/4 v0, 0x0

    goto :goto_3

    :pswitch_f
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "*z\u0019NM\na\u001eOFIs\u0016ID\u000cqY\u0000x\u0005p\u0016SMIv\u001fEK\u00025\u000eO]\u001b5\u0014OF\u0007p\u0014TA\u0006{WAF\r5\u0005E\\\u001blWLI\u001dp\u0005\u0001"

    const/4 v0, 0x1

    goto :goto_3

    :pswitch_10
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ":p\u0019DA\u0007rWFI\u0000y\u0012D\u0008\u0006gWTA\u0004p\u0018U\\G5\'LM\u0008f\u0012\u0000z\u000ca\u0005Y\u0008\u0005t\u0003EZH"

    const/4 v0, 0x2

    goto :goto_3

    :pswitch_11
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ";p\u0014EA\u001f|\u0019G\u0008\u000ft\u001eLM\r5\u0018R\u0008\u001d|\u001aEG\u001caY\u0000x\u0005p\u0016SMIG\u0012TZ\u00105\u001bA\\\u000cgV"

    const/4 v0, 0x3

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "*z\u0019NM\na\u001eOFI|\u0004\u0000K\u0005z\u0004ELG5\'LM\u0008f\u0012\u0000z\u000ca\u0005Y\u0008\u0005t\u0003EZH"

    const/4 v0, 0x4

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ";p\u0004PG\u0007f\u0012\u0000\\\u0000x\u0012O]\u001d;WpD\u000ct\u0004E\u0008;p\u0003RQIy\u0016TM\u001b4"

    const/4 v0, 0x5

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, -0x3e1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, " {\u0001AD\u0000qWSG\n~\u0012T\u0006IE\u001bEI\u001apWrM\u001dg\u000e\u0000D\u0008a\u0012R\t"

    const/4 v0, 0x6

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "/t\u001eLM\r5\u0003O\u0008\u001bp\u0010I[\u001dp\u0005\u0001"

    const/4 v0, 0x7

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "0z\u0002R\u0008\u0008e\u0007kM\u00105\u0016NLIt\u0019DZ\u0006|\u0013\u0000X\u0008v\u001cAO\u000c5\u0019AE\u000c5\u0016RMI{\u0018T\u0008\u0004t\u0003C@\u000cqY\u0000x\u0005p\u0016SMIq\u0018UJ\u0005pWC@\u000cv\u001c\u0000\\\u0001p\u001a\u0000I\nv\u0018RL\u0000{\u0010\u0000\\\u000656PX\u0005|\u0014A\\\u0000z\u0019\u0000Q\u0006`WCZ\u000ct\u0003ELIz\u0019\u0000x\u0006g\u0003ADG"

    const/16 v0, 0x8

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, 0x3f1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "0z\u0002R\u0008\u0008e\u0007kM\u00105\u001eS\u0008\u001bp\u001bA\\\u000cqWTGItWNG\u000786NL\u001bz\u001eD\u0008(e\u0007\u000ex\u0005p\u0016SMI`\u0004E\u0008\u0010z\u0002R\u0008({\u0013RG\u0000qWaX\u00192\u0004\u0000I\u0019e<EQE5\u0018R\u0008\u0008q\u0013\u0000I\u000756NL\u001bz\u001eD\u0008\u0008e\u0007\u0000N\u0006gWT@\u0000fWAX\u0019^\u0012Y\u0006"

    const/16 v0, 0x9

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "0z\u0002\u0000I\u0007q\u0005OA\r5\u0007AK\u0002t\u0010E\u0008\u0007t\u001aE\u0008\u0000fWNG\u001d5\u0012XA\u001aa[\u0000x\u0005p\u0016SMIg\u0012GA\u001aa\u0012R\u0008\u0010z\u0002R\u0008\u0019t\u0014AC\u000epWNI\u0004pWIFIE\u0018R\\\u0008yY"

    const/16 v0, 0xa

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, " {\u0001AD\u0000qWiE\u000c|[\u0000z\u000cr\u001eS\\\u000cgWAO\u0008|\u0019\u000e"

    const/16 v0, 0xb

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWj{&[WPI\u001bf\u001eNOIf\u0002CK\u000cp\u0013"

    const/16 v0, 0xc

    goto/16 :goto_3

    :pswitch_1b
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWj{&[WPI\u001bf\u001eNOIs\u0016ID\u000cq"

    const/16 v0, 0xd

    goto/16 :goto_3

    :pswitch_1c
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWAD\u001bp\u0016DQIg\u0012CM\u0000c\u0012D\u0004Ir\u001eVMI`\u0007"

    const/16 v0, 0xe

    goto/16 :goto_3

    :pswitch_1d
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWAD\u001bp\u0016DQIg\u0012CM\u0000c\u0012D\u0004If\u0003ID\u00055\u0007RG\np\u0004S"

    const/16 v0, 0xf

    goto/16 :goto_3

    :pswitch_1e
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqWAF\r5\u0018PM\u0007p\u0013\u0000\\\u0001pWmM\u001af\u0016GM"

    const/16 v0, 0x10

    goto/16 :goto_3

    :pswitch_1f
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3e9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWDG\u001e{\u001bOI\r5\u0004UK\np\u0012D"

    const/16 v0, 0x11

    goto/16 :goto_3

    :pswitch_20
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWRM\np\u001eVM\r5\u0004UK\np\u0012D"

    const/16 v0, 0x12

    goto/16 :goto_3

    :pswitch_21
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "$p\u0004SI\u000epWSA\u0005p\u0019CMIq\u0018WF\u0005z\u0016D\u0008\u001a`\u0014CM\u000cq"

    const/16 v0, 0x13

    goto/16 :goto_3

    :pswitch_22
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "?|\u0013EGIf\u001eLM\u0007v\u0012\u0000L\u0006b\u0019LI\u0006qWS]\nv\u0012EL"

    const/16 v0, 0x14

    goto/16 :goto_3

    :pswitch_23
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqWVA\rp\u0018\u0000I\u0007qWJ]\u0004e\u0012D\u0008\u001dzWUZ\u00055:E[\u001at\u0010E\u0008Aw\u0005O_\u001ap\u0005\t"

    const/16 v0, 0x15

    goto/16 :goto_3

    :pswitch_24
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "?|\u0013EGI|\u0004\u0000N\u0006g\u0014E\u0008\ny\u0018SM\r5\u0015Y\u0008\u001cf\u0012R"

    const/16 v0, 0x16

    goto/16 :goto_3

    :pswitch_25
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ef

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqW\u0007g\"2"

    const/16 v0, 0x17

    goto/16 :goto_3

    :pswitch_26
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3ee

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqW\u0007k\u0008{\u0014EDN"

    const/16 v0, 0x18

    goto/16 :goto_3

    :pswitch_27
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "-z\u0000ND\u0006t\u0013\u0000N\u0008|\u001bEL"

    const/16 v0, 0x19

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqWTGIq\u0018WF\u0005z\u0016D\u0008\u0008r\u0016IF"

    const/16 v0, 0x1a

    goto/16 :goto_3

    :pswitch_29
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "=}\u0012\u0000N\u0000y\u0012\u0000I\u0005g\u0012AL\u00105\u0012XA\u001aaWAF\r5\u0004AE\u000c5\u0004IR\u000c;WdG\u00072\u0003\u0000L\u0006b\u0019LG\u0008qWAO\u0008|\u0019\u000e"

    const/16 v0, 0x1b

    goto/16 :goto_3

    :pswitch_2a
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x44c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, " {\u0001AD\u0000qWPI\u001bt\u001a\u0000G\u001b5\u0002NM\u0011e\u0012C\\\u000cqWRM\u001a`\u001bT\u0006"

    const/16 v0, 0x1c

    goto/16 :goto_3

    :pswitch_2b
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "/t\u001eLM\r5\u0003O\u0008\u0019g\u0012LG\u0008qWRM\u0018`\u001eRM\r5\u0005E[\u0006`\u0005CM"

    const/16 v0, 0x1d

    goto/16 :goto_3

    :pswitch_2c
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqWIF\u001aa\u0016LDIt\u001bEZ\u001d5\u0018N\u0008\u001aa\u0016T]\u001a5\u0015AZIt\u0011TM\u001b5\u0013O_\u0007y\u0018AL\u0000{\u0010\u0000N\u0000{\u001eS@\u000cqY"

    const/16 v0, 0x1e

    goto/16 :goto_3

    :pswitch_2d
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqWT@\u000c5\u0000EJ\u001f|\u0012W\u000f\u001a5\u0002RD"

    const/16 v0, 0x1f

    goto/16 :goto_3

    :pswitch_2e
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3f9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "<f\u0012R\u0008\ny\u001eCC\u000cqWCI\u0005yWAK\u001d|\u0018N"

    const/16 v0, 0x20

    goto/16 :goto_3

    :pswitch_2f
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "=}\u0012\u0000e\u000cf\u0004AO\u000c5\u0004HG\u001e5\u001eN\u0008\u001d}\u0012\u0000[\u001dt\u0003U[Iw\u0016R"

    const/16 v0, 0x21

    goto/16 :goto_3

    :pswitch_30
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "*y\u001eCCIt\u0007PD\u0000f\u0003\u0000I\u0007qWS@\u0006bWT@\u000c5:E[\u001at\u0010E"

    const/16 v0, 0x22

    goto/16 :goto_3

    :pswitch_31
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "-z\u0000N\u0008\u0000x\u0016GMIs\u0016ID\u000cq"

    const/16 v0, 0x23

    goto/16 :goto_3

    :pswitch_32
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "-z\u0000N\u0008\u0001a\u001aL\u0008\u000ft\u001eLM\r"

    const/16 v0, 0x24

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x3fe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "-z\u0000N\u0008$p\u0004SI\u000epWFI\u0000y\u0012D"

    const/16 v0, 0x25

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x406

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "-|\u0004CI\u001bqWT@\u000c5\u001aE[\u001at\u0010E\u0008\u000bp\u0014A]\u001apWI\\I|\u0004\u0000F\u0006aWIFIa\u001fE\u0008\u0019`\u0004H\u0008\u001d|\u001aE"

    const/16 v0, 0x26

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x407

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ":a\u0018P\u0008\u0019`\u0004H\u0008\u001ap\u0005VA\np"

    const/16 v0, 0x27

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    const/16 v0, 0x408

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, ";p\u0004UE\u000c5\u0007U[\u00015\u0004EZ\u001f|\u0014E"

    const/16 v0, 0x28

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jpush/android/service/r;->c:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/service/r;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/jpush/android/service/r;->b:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    sget-object v3, Lcn/jpush/android/service/r;->z:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
