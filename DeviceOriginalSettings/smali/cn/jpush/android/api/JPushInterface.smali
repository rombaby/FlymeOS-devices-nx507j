.class public Lcn/jpush/android/api/JPushInterface;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ACTIVITY_OPENDED:Ljava/lang/String;

.field public static final ACTION_CONNECTION_CHANGE:Ljava/lang/String;

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String;

.field public static final ACTION_NOTIFICATION_OPENED:Ljava/lang/String;

.field public static final ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String;

.field public static final ACTION_NOTIFICATION_RECEIVED_PROXY:Ljava/lang/String;

.field public static final ACTION_REGISTRATION_ID:Ljava/lang/String;

.field public static final ACTION_RESTOREPUSH:Ljava/lang/String;

.field public static final ACTION_RICHPUSH_CALLBACK:Ljava/lang/String;

.field public static final ACTION_STATUS:Ljava/lang/String;

.field public static final ACTION_STOPPUSH:Ljava/lang/String;

.field public static final ACTION_UNREGISTER:Ljava/lang/String;

.field public static final EXTRA_ACTIVITY_PARAM:Ljava/lang/String;

.field public static final EXTRA_ALERT:Ljava/lang/String;

.field public static final EXTRA_APP_KEY:Ljava/lang/String;

.field public static final EXTRA_CONNECTION_CHANGE:Ljava/lang/String;

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String;

.field public static final EXTRA_EXTRA:Ljava/lang/String;

.field public static final EXTRA_MESSAGE:Ljava/lang/String;

.field public static final EXTRA_MSG_ID:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_DEVELOPER_ARG0:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String;

.field public static final EXTRA_NOTIFICATION_TITLE:Ljava/lang/String;

.field public static final EXTRA_NOTI_TYPE:Ljava/lang/String;

.field public static final EXTRA_PUSH_ID:Ljava/lang/String;

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_FILE_PATH:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_FILE_TYPE:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_HTML_PATH:Ljava/lang/String;

.field public static final EXTRA_RICHPUSH_HTML_RES:Ljava/lang/String;

.field public static final EXTRA_STATUS:Ljava/lang/String;

.field public static final EXTRA_TITLE:Ljava/lang/String;

.field private static final a:Ljava/lang/Integer;

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/jpush/android/api/PushNotificationBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcn/jpush/android/api/e;

.field private static d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x33

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB=`gD9="

    const/16 v0, 0x32

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

    const/16 v9, 0x26

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
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_STATUS:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001ah_8\'roS-:}i^3<qeU%8qbO<<{~I"

    const/16 v0, 0x33

    goto :goto_0

    :pswitch_1
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_RECEIVED_PROXY:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB/wrY:\'`\u007fO</fg]"

    const/16 v0, 0x34

    goto :goto_0

    :pswitch_2
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_ACTIVITY_PARAM:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB {rY*\'wgD%!zyT)8qj_<+fyQ>)\u0004"

    const/16 v0, 0x35

    goto :goto_0

    :pswitch_3
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_DEVELOPER_ARG0:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001as^>+soC8<urY# "

    const/16 v0, 0x36

    goto :goto_0

    :pswitch_4
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_UNREGISTER:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001agS8\'{hO--`oF%:my_<+zbU("

    const/16 v0, 0x37

    goto :goto_0

    :pswitch_5
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_ACTIVITY_OPENDED:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB&`k\\3>urX"

    const/16 v0, 0x38

    goto :goto_0

    :pswitch_6
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_HTML_PATH:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB/dv[)7"

    const/16 v0, 0x39

    goto :goto_0

    :pswitch_7
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_APP_KEY:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB-{h^)-`o_\"1wnQ\")q"

    const/16 v0, 0x3a

    goto :goto_0

    :pswitch_8
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_CONNECTION_CHANGE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB {rY*\'wgD%!zyS# `c^81`oD +"

    const/16 v0, 0x3b

    goto :goto_0

    :pswitch_9
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_TITLE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB&`k\\3<qu"

    const/16 v0, 0x3c

    goto :goto_0

    :pswitch_a
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_HTML_RES:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB {rY*\'wgD%!zyY("

    const/16 v0, 0x3d

    goto :goto_0

    :pswitch_b
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB/xcB8"

    const/16 v0, 0x3e

    goto :goto_0

    :pswitch_c
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_ALERT:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB(}jU3>urX"

    const/16 v0, 0x3f

    goto :goto_0

    :pswitch_d
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_FILE_PATH:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB#quC-)q"

    const/16 v0, 0x40

    goto/16 :goto_0

    :pswitch_e
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_MESSAGE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001atU?:{tU<;gn"

    const/16 v0, 0x41

    goto/16 :goto_0

    :pswitch_f
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_RESTOREPUSH:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001agS8\'{hO>\'wn@9=|yS-\"xdQ/%"

    const/16 v0, 0x42

    goto/16 :goto_0

    :pswitch_10
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_RICHPUSH_CALLBACK:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001auD-:au"

    const/16 v0, 0x43

    goto/16 :goto_0

    :pswitch_11
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_STATUS:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB-{hD) `yD5>q"

    const/16 v0, 0x44

    goto/16 :goto_0

    :pswitch_12
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_CONTENT_TYPE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB#gaO%*"

    const/16 v0, 0x45

    goto/16 :goto_0

    :pswitch_13
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_MSG_ID:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB<qaY?:fgD%!zyY("

    const/16 v0, 0x46

    goto/16 :goto_0

    :pswitch_14
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_REGISTRATION_ID:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB+lrB-"

    const/16 v0, 0x47

    goto/16 :goto_0

    :pswitch_15
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_EXTRA:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB {rY*\'wgD%!zyD5>q"

    const/16 v0, 0x48

    goto/16 :goto_0

    :pswitch_16
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_NOTI_TYPE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001akU?=uaU3<qeU%8qb"

    const/16 v0, 0x49

    goto/16 :goto_0

    :pswitch_17
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_MESSAGE_RECEIVED:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001ae_\" qeD%!z"

    const/16 v0, 0x4a

    goto/16 :goto_0

    :pswitch_18
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_CONNECTION_CHANGE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB(}jU3:mvU"

    const/16 v0, 0x4b

    goto/16 :goto_0

    :pswitch_19
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_RICHPUSH_FILE_TYPE:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001auD#>dsC$"

    const/16 v0, 0x4c

    goto/16 :goto_0

    :pswitch_1a
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_STOPPUSH:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001ah_8\'roS-:}i^3!dc^)*"

    const/16 v0, 0x4d

    goto/16 :goto_0

    :pswitch_1b
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_OPENED:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB>auX3\'p"

    const/16 v0, 0x4e

    goto/16 :goto_0

    :pswitch_1c
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_PUSH_ID:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001ah_8\'roS-:}i^3<qeU%8qb"

    const/16 v0, 0x4f

    goto/16 :goto_0

    :pswitch_1d
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB\u0007ZRu\u0002\u001a\u001atU+\'grB-:}i^"

    const/16 v0, 0x50

    goto/16 :goto_0

    :pswitch_1e
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->ACTION_REGISTRATION_ID:Ljava/lang/String;

    const-string v1, "s\u0002@^Ve\u001f\u0006\u001aG~\u0008\u001c[OtB:}r\\)"

    const/16 v0, 0x51

    goto/16 :goto_0

    :pswitch_1f
    sput-object v1, Lcn/jpush/android/api/JPushInterface;->EXTRA_TITLE:Ljava/lang/String;

    const-string v1, "q\u000f\u001a]I~V\u001d@I`<\u001bGN"

    const/4 v0, -0x1

    goto/16 :goto_0

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

    const-string v1, "^9\"x\u0006s\u0003\u0000@Ch\u0018"

    const/4 v0, 0x0

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_20
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "Z<\u001bGNY\u0002\u001aQTv\r\rQ"

    const/4 v0, 0x1

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_21
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "c\t\u001dGCy\u0003\u0000\u0014Ry\u0001\u000b[SdL\u0002UTw\t\u001c\u0014Rx\r\u0000\u0014\u0017t\r\u0017"

    const/4 v0, 0x2

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_22
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "c\t\u001dGCy\u0003\u0000\u0014Ry\u0001\u000b[SdL\u0002QUcL\u001a\\G~L_\u0004U"

    const/4 v0, 0x3

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_23
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "^9\"x\u0006~\u0003\u001a]@y\u000f\u000f@O\u007f\u0002"

    const/4 v0, 0x4

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_24
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "}\r\u0016zS}L\u001d\\Ie\u0000\n\u0014\u00180\\B\u0014ay\u001a\u000b\u0014S`L\u000fWRy\u0003\u0000\u001a\u0008"

    const/4 v0, 0x5

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_25
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "q\u000f\u001a]I~V\u001dQR\\\r\u001aQUd\"\u0001@Ov\u0005\rURy\u0003\u0000zS}\u000e\u000bF\u0006*L"

    const/4 v0, 0x6

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_26
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "~\u0003\u001a]@y\u000f\u000f@O\u007f\u0002"

    const/4 v0, 0x7

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_27
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "Y\u0002\u0018UJy\u0008NZId\u0005\u0008]Eq\u0018\u0007[HY\u0008B\u0014ay\u001a\u000b\u0014S`L\u000fWRy\u0003\u0000\u001a\u0008"

    const/16 v0, 0x8

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_28
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "c\t\u001cBOs\t1WI~\u0002\u000bWCd"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_29
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "Y\u0002\u0018UJy\u0008N@GwVN"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "q\u000f\u001a]I~V\u001dQR@\u0019\u001d\\ry\u0001\u000b\u0014\u000b0\u000f\u0002[Uu\u0008"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "=EE\u001c"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, "q\u000f\u001a]I~V\u001dQR@\u0019\u001d\\ry\u0001\u000b\u0014\u000b0\t\u0000UD|\t\n\u000e"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, "87^\u0019\u001fM\u0010_o\u0016=U3H\u0014K\\C\u0007{900\u001c} AWiZ!7^\u0019\u001fM\u0010\\o\u0016=_3\u001d"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2e
    aput-object v1, v3, v2

    const/16 v2, 0x10

    const-string v1, "87^\u0019\u0010M\u0017^\u0018\u0011mE1\u001c\u000e"

    const/16 v0, 0xf

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_2f
    aput-object v1, v3, v2

    const/16 v2, 0x11

    const-string v1, "9E"

    const/16 v0, 0x10

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_30
    aput-object v1, v3, v2

    const/16 v2, 0x12

    const-string v1, "Y\u0002\u0018UJy\u0008N@O}\tNRIb\u0001\u000f@\u0006=L"

    const/16 v0, 0x11

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_31
    aput-object v1, v3, v2

    const/16 v2, 0x13

    const-string v1, "<L\u001eAUx8\u0007YC*"

    const/16 v0, 0x12

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_32
    aput-object v1, v3, v2

    const/16 v2, 0x14

    const-string v1, "9\u0010F"

    const/16 v0, 0x13

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_33
    aput-object v1, v3, v2

    const/16 v2, 0x15

    const-string v1, "Y\u0002\u0018UJy\u0008NUJy\r\u001d\u000e\u0006"

    const/16 v0, 0x14

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_34
    aput-object v1, v3, v2

    const/16 v2, 0x16

    const-string v1, "<L\u0019]J|L\u0000[R0\u001f\u000b@\u0006q\u0000\u0007UU0\u0018\u0006]U0\u0018\u0007YC>"

    const/16 v0, 0x15

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_35
    aput-object v1, v3, v2

    const/16 v2, 0x17

    const-string v1, "<L\u001aUAcV"

    const/16 v0, 0x16

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_36
    aput-object v1, v3, v2

    const/16 v2, 0x18

    const-string v1, "Y\u0002\u0018UJy\u0008N@Gw\u001fB\u0014Qy\u0000\u0002\u0014H\u007f\u0018NGCdL\u001aUAcL\u001a\\OcL\u001a]KuB"

    const/16 v0, 0x17

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_37
    aput-object v1, v3, v2

    const/16 v2, 0x19

    const-string v1, "\u68d0\u6d27\u525e\u5f67\u526b\u6cb1\u6765\u7f3f\u7ee8\u3024\u6b74\u52c4\u4f32\u5c32\u570e\u6719\u7f3d\u7eb2\u65c2\u81cc\u52b8\u7e8b\u7e83\u6253\u886a\u3012"

    const/16 v0, 0x18

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_38
    aput-object v1, v3, v2

    const/16 v2, 0x1a

    const-string v1, "q\u000f\u001a]I~V\u001dQRQ\u0000\u0007UUQ\u0002\n`Gw\u001fN\u0019\u0006q\u0000\u0007UU*"

    const/16 v0, 0x19

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_39
    aput-object v1, v3, v2

    const/16 v2, 0x1b

    const-string v1, "^9\"x\u0006q\u0000\u0007UU0\r\u0000P\u0006d\r\tG\u00080+\u0007BC0\u0019\u001e\u0014Gs\u0018\u0007[H>"

    const/16 v0, 0x1a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3a
    aput-object v1, v3, v2

    const/16 v2, 0x1c

    const-string v1, "D\u0004\u000b\u0014Ju\u0002\t@N0\u0003\u0008\u0014Rq\u000b\u001d\u0014Ux\u0003\u001bXB0\u000e\u000b\u0014Ju\u001f\u001d\u0014Rx\r\u0000\u0014\u0017 \\^\u0014Di\u0018\u000bG\u0008"

    const/16 v0, 0x1b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3b
    aput-object v1, v3, v2

    const/16 v2, 0x1d

    const-string v1, "0AC\u0014"

    const/16 v0, 0x1c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3c
    aput-object v1, v3, v2

    const/16 v2, 0x1e

    const-string v1, "Y\u0002\u0018UJy\u0008NDGb\r\u0003QRu\u001eNRIb\u0001\u000f@\n0\u001f\u001aUTd$\u0001AT0\r\u0000P\u0006u\u0002\n|Ie\u001eNGN\u007f\u0019\u0002P\u0006r\t\u001aCCu\u0002N\u0004\u0006nL\\\u0007\n0\u001f\u001aUTd!\u0007ZU0\r\u0000P\u0006u\u0002\nyO~\u001fNGN\u007f\u0019\u0002P\u0006r\t\u001aCCu\u0002N\u0004\u0006nL[\r\u00080"

    const/16 v0, 0x1d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3d
    aput-object v1, v3, v2

    const/16 v2, 0x1f

    const-string v1, "B\t\u0003[PuL\u001a\\C0\u001f\u0007XC~\u000f\u000b\u0014Ry\u0001\u000b\u0015"

    const/16 v0, 0x1e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3e
    aput-object v1, v3, v2

    const/16 v2, 0x20

    const-string v1, "0VN"

    const/16 v0, 0x1f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_3f
    aput-object v1, v3, v2

    const/16 v2, 0x21

    const-string v1, "C\t\u001a\u0014uy\u0000\u000bZEuL>AUx8\u0007YC0AN"

    const/16 v0, 0x20

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_40
    aput-object v1, v3, v2

    const/16 v2, 0x22

    const-string v1, "C\t\u001a\u0014uy\u0000\u000bZEuL>AUx8\u0007YC0*\u000f]Ju\u0008"

    const/16 v0, 0x21

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_41
    aput-object v1, v3, v2

    const/16 v2, 0x23

    const-string v1, "q\u000f\u001a]I~V\u001cQUe\u0001\u000bdSc\u0004"

    const/16 v0, 0x22

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_42
    aput-object v1, v3, v2

    const/16 v2, 0x24

    const-string v1, "Z<\u001bGN0B\u001d[\u0006v\u0005\u0002Q\u0006t\u0003NZIdL\u0003URs\u0004N~ve\u001f\u0006\u0014\u0008z\r\u001c\u0014@y\u0000\u000b\u0014O~L\u001a\\C0\u001c\u001c[Lu\u000f\u001a\u0018\u0006d\u0004\u000b\u0014Vb\u0003\rQUcL\u0019]J|L\u000bLOdL\u000f@\u0006\u007f\u0002\rQ\u0008"

    const/16 v0, 0x23

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_43
    aput-object v1, v3, v2

    const/16 v2, 0x25

    const-string v1, "~\u0003\u001a]@q\u000f\u001a]I~3\u0000AK"

    const/16 v0, 0x24

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_44
    aput-object v1, v3, v2

    const/16 v2, 0x26

    const-string v1, "q\u000f\u001a]I~V\u0007ZOd@N`NuL\u001dPM0\u001a\u000bFUy\u0003\u0000\u0014OcL"

    const/16 v0, 0x25

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_45
    aput-object v1, v3, v2

    const/16 v2, 0x27

    const-string v1, "q\u000f\u001a]I~V\tQR@\u0019\u001d\\h\u007f\u0018\u0007ROs\r\u001a]I~.\u001b]Jt\t\u001c\u0014\u001c0"

    const/16 v0, 0x26

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_46
    aput-object v1, v3, v2

    const/16 v2, 0x28

    const-string v1, "S\u0019\u001d@I}\u0005\u0014QB0\u000e\u001b]Jt\t\u001c\u0014@b\u0003\u0003\u0014Uq\u001a\u000bP\u0006`\u001e\u000bRCb\t\u0000WC0AN"

    const/16 v0, 0x27

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_47
    aput-object v1, v3, v2

    const/16 v2, 0x29

    const-string v1, "^9\"x\u0006`\u0019\u001d\\h\u007f\u0018\u0007ROs\r\u001a]I~.\u001b]Jt\t\u001c"

    const/16 v0, 0x28

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_48
    aput-object v1, v3, v2

    const/16 v2, 0x2a

    const-string v1, "q\u000f\u001a]I~V\u001dQR@\u0019\u001d\\h\u007f\u0018\u0007ROs\r\u001a]I~.\u001b]Jt\t\u001c\u0014\u000b0\u0005\n\u000e"

    const/16 v0, 0x29

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_49
    aput-object v1, v3, v2

    const/16 v2, 0x2b

    const-string v1, "D\u0004\u000b\u0014h\u007f\u0018\u0007ROs\r\u001a]I~L,AO|\u0008\u000bF\u0006y\u0008NUJb\t\u000fP_0\t\u0016GOd\u001fN\u0019\u0006"

    const/16 v0, 0x2a

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4a
    aput-object v1, v3, v2

    const/16 v2, 0x2c

    const-string v1, "y\u0008NGN\u007f\u0019\u0002P\u0006r\tNXGb\u000b\u000bF\u0006d\u0004\u000fZ\u0006 "

    const/16 v0, 0x2b

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4b
    aput-object v1, v3, v2

    const/16 v2, 0x2d

    const-string v1, "D\u0004\u000b\u0014Ju\u0002\t\\R0\u0003\u0008\u0014Rq\u000b\u001d\u0014Kq\u0015\u000cQ\u0006}\u0003\u001cQ\u0006d\u0004\u000fZ\u0006!\\^\u001a"

    const/16 v0, 0x2c

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4c
    aput-object v1, v3, v2

    const/16 v2, 0x2e

    const-string v1, "Y\u0002\u0018UJy\u0008N@GwLT\u0014"

    const/16 v0, 0x2d

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4d
    aput-object v1, v3, v2

    const/16 v2, 0x2f

    const-string v1, "Y\u0002\u0018UJy\u0008N@O}\tNRIb\u0001\u000f@\u0006=L\u001d@Gb\u0018&[SbL\u001d\\Ie\u0000\n\u0014Ju\u001f\u001d\u0014Rx\r\u0000\u0014C~\u0008&[Sb"

    const/16 v0, 0x2e

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4e
    aput-object v1, v3, v2

    const/16 v2, 0x30

    const-string v1, " ]\\\u0007\u0012%Z1\u0004x\"_"

    const/16 v0, 0x2f

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_4f
    aput-object v1, v3, v2

    const/16 v2, 0x31

    const-string v1, "Y\u0002\u0018UJy\u0008NPGiL\u0008[T}\r\u001a\u0014\u000b0"

    const/16 v0, 0x30

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_50
    aput-object v1, v3, v2

    const/16 v2, 0x32

    const-string v1, "D\u0004\u000b\u0014Kc\u000b\'P\u0006y\u001fNZIdL\u0018UJy\u0008N\u0019\u0006"

    const/16 v0, 0x31

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_51
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcn/jpush/android/api/e;->b()Lcn/jpush/android/api/e;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void

    :pswitch_52
    const/16 v9, 0x10

    goto/16 :goto_2

    :pswitch_53
    const/16 v9, 0x6c

    goto/16 :goto_2

    :pswitch_54
    const/16 v9, 0x6e

    goto/16 :goto_2

    :pswitch_55
    const/16 v9, 0x34

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Set;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_2
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    sget-object v4, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-boolean v2, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v2, v2, v5

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {p1}, Lcn/jpush/android/util/z;->b(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3, v2, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    invoke-static {p2}, Lcn/jpush/android/api/JPushInterface;->filterValidTags(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p2}, Lcn/jpush/android/util/z;->a(Ljava/util/Set;)I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x18

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-interface {p3, v2, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcn/jpush/android/api/JPushInterface;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_6

    if-nez v3, :cond_6

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    sget v0, Lcn/jpush/android/api/d;->a:I

    invoke-interface {p3, v0, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_9

    const-string v2, ","

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x0

    :goto_1
    const/16 v4, 0x3e8

    if-gt v2, v4, :cond_8

    :goto_2
    if-nez v0, :cond_9

    if-eqz p3, :cond_7

    sget v0, Lcn/jpush/android/api/d;->h:I

    invoke-interface {p3, v0, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_7
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcn/jpush/android/api/b;

    invoke-direct {v0, p1, p2, p3}, Lcn/jpush/android/api/b;-><init>(Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    invoke-static {p0, p1, v3, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/api/b;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0, p1, p2}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xd

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static a(I)Z
    .locals 3

    const/4 v0, 0x0

    if-gtz p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcn/jpush/android/api/JPushInterface;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static addLocalNotification(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/service/g;->a(Landroid/content/Context;)Lcn/jpush/android/service/g;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/service/g;->a(Landroid/content/Context;Lcn/jpush/android/data/JPushLocalNotification;)Z

    return-void
.end method

.method static b(I)Lcn/jpush/android/api/PushNotificationBuilder;
    .locals 5

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jpush/android/api/PushNotificationBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v0, Lcn/jpush/android/api/DefaultPushNotificationBuilder;

    invoke-direct {v0}, Lcn/jpush/android/api/DefaultPushNotificationBuilder;-><init>()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x28

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->b()V

    invoke-static {v1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->a(Ljava/lang/String;)Lcn/jpush/android/api/PushNotificationBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    goto :goto_0
.end method

.method public static clearAllNotifications(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->g(Landroid/content/Context;)V

    return-void
.end method

.method public static clearLocalNotifications(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/jpush/android/service/g;->a(Landroid/content/Context;)Lcn/jpush/android/service/g;

    invoke-static {p0}, Lcn/jpush/android/service/g;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static clearNotificationById(Landroid/content/Context;I)V
    .locals 3

    if-gtz p1, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public static filterValidTags(Ljava/util/Set;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x2

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcn/jpush/android/util/z;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v8

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x2d

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v2

    goto :goto_0

    :cond_2
    sget-object v4, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v7, 0x2e

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    move-object p0, v2

    goto :goto_0
.end method

.method public static getConnectionState(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-static {p0, v2, v1}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getRegistrationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/util/a;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/util/a;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jpush/android/util/ab;->a(Landroid/content/Context;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    invoke-static {p0, v0, v4}, Lcn/jpush/android/util/ae;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcn/jpush/android/api/JPushInterface;->setLatestNotificationNumber(Landroid/content/Context;I)V

    :cond_2
    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->a()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    :cond_3
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcn/jpush/android/api/c;->a()Lcn/jpush/android/api/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static isPushStopped(Landroid/content/Context;)Z
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcn/jpush/android/service/ServiceInterface;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static onFragmentPause(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/api/e;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onFragmentResume(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/api/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static removeLocalNotification(Landroid/content/Context;J)V
    .locals 1

    invoke-static {p0}, Lcn/jpush/android/service/g;->a(Landroid/content/Context;)Lcn/jpush/android/service/g;

    invoke-static {p0, p1, p2}, Lcn/jpush/android/service/g;->a(Landroid/content/Context;J)Z

    return-void
.end method

.method public static reportNotificationOpened(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcn/jpush/android/util/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x32

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x404

    invoke-static {p1, v0, p0}, Lcn/jpush/android/service/ServiceInterface;->a(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static resumePush(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x23

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, v3}, Lcn/jpush/android/service/ServiceInterface;->b(Landroid/content/Context;I)V

    return-void
.end method

.method public static setAlias(Landroid/content/Context;Ljava/lang/String;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    return-void
.end method

.method public static setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;Z)V

    return-void
.end method

.method public static setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    const/16 v8, 0xa

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    invoke-static {}, Lcn/jpush/android/util/x;->e()V

    if-eqz p3, :cond_0

    sget v0, Lcn/jpush/android/api/d;->k:I

    invoke-interface {p3, v0, p1, p2}, Lcn/jpush/android/api/TagAliasCallback;->gotResult(ILjava/lang/String;Ljava/util/Set;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :goto_2
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lt v0, v8, :cond_2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p2, p3, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;Z)V

    goto :goto_1
.end method

.method public static setDebugMode(Z)V
    .locals 0

    sput-boolean p0, Lcn/jpush/android/service/PushService;->b:Z

    return-void
.end method

.method public static setDefaultPushNotificationBuilder(Lcn/jpush/android/api/BasicPushNotificationBuilder;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLatestNotificationNumber(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p1, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcn/jpush/android/service/ServiceInterface;->d(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static setPushNotificationBuilder(Ljava/lang/Integer;Lcn/jpush/android/api/BasicPushNotificationBuilder;)V
    .locals 5

    const/4 v4, 0x2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x29

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x2c

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/jpush/android/api/BasicPushNotificationBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/ab;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setPushTime(Landroid/content/Context;Ljava/util/Set;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    const/16 v3, 0x30

    const/4 v6, 0x1

    const/4 v5, 0x2

    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/jpush/android/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {p0, v6, v0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {p0, v0, v1}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-le p2, p3, :cond_4

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v5

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_6

    :cond_5
    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v4, 0x31

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcn/jpush/android/api/JPushInterface;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static setSilenceTime(Landroid/content/Context;IIII)V
    .locals 5

    const/16 v2, 0x3b

    const/16 v4, 0x20

    const/16 v0, 0x17

    const/4 v1, 0x2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-gt p2, v2, :cond_0

    if-gt p4, v2, :cond_0

    if-gt p3, v0, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1e

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    const-string v0, ""

    invoke-static {p0, v0}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x1f

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;IIII)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/16 v2, 0x22

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setStatisticsEnable(Z)V
    .locals 1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0}, Lcn/jpush/android/api/e;->a(Z)V

    return-void
.end method

.method public static setStatisticsSessionTimeout(J)V
    .locals 4

    const/4 v2, 0x2

    const-wide/16 v0, 0xa

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jpush/android/api/JPushInterface;->c:Lcn/jpush/android/api/e;

    invoke-virtual {v0, p0, p1}, Lcn/jpush/android/api/e;->a(J)V

    goto :goto_0
.end method

.method public static setTags(Landroid/content/Context;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/jpush/android/api/TagAliasCallback;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcn/jpush/android/api/JPushInterface;->setAliasAndTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lcn/jpush/android/api/TagAliasCallback;)V

    return-void
.end method

.method public static stopPush(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcn/jpush/android/util/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcn/jpush/android/api/JPushInterface;->z:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, v3}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;I)V

    return-void
.end method
