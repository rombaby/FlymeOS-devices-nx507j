.class public Lcn/jpush/android/util/JLogger;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/text/SimpleDateFormat;

.field private static b:Lcn/jpush/android/util/r;

.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "XBog<lv;zu\u0001s^$|L\u0001em"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x11

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jpush/android/util/JLogger;->z:Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcn/jpush/android/util/JLogger;->z:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/jpush/android/util/JLogger;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcn/jpush/android/util/r;

    invoke-direct {v0}, Lcn/jpush/android/util/r;-><init>()V

    sput-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    return-void

    :pswitch_0
    const/16 v5, 0x21

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x3b

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x16

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x1e

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v2, "V"

    sparse-switch p0, :sswitch_data_0

    :goto_0
    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    iget-boolean v0, v0, Lcn/jpush/android/util/r;->b:Z

    if-nez v0, :cond_6

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v2, "V"

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "D"

    goto :goto_0

    :sswitch_2
    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_3

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "I"

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v2, "W"

    goto :goto_0

    :sswitch_4
    sget-boolean v0, Lcn/jpush/android/service/PushService;->b:Z

    if-eqz v0, :cond_5

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "E"

    goto :goto_0

    :cond_6
    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    iget v0, v0, Lcn/jpush/android/util/r;->a:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/JLogger;->a:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lcn/jpush/android/data/f;

    move v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/jpush/android/data/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    invoke-virtual {v1, v0}, Lcn/jpush/android/util/r;->a(Lcn/jpush/android/data/f;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcn/jpush/android/util/JLogger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lcn/jpush/android/util/JLogger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcn/jpush/android/util/JLogger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseModalJson(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    invoke-virtual {v0, p1, p0}, Lcn/jpush/android/util/r;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportByHeartbeats()V
    .locals 1

    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jpush/android/util/JLogger;->b:Lcn/jpush/android/util/r;

    invoke-virtual {v0}, Lcn/jpush/android/util/r;->a()V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcn/jpush/android/util/JLogger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcn/jpush/android/util/JLogger;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
