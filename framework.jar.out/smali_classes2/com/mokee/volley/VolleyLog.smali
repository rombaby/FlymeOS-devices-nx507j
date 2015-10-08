.class public Lcom/mokee/volley/VolleyLog;
.super Ljava/lang/Object;


# static fields
.field public static DEBUG:Z

.field public static TAG:Ljava/lang/String;

.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "SwHS\n\u0000uH\u0006"

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

    const/16 v9, 0x64

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

    const-string v1, "4\'BeDJq\u001c\u0018A\u001c"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, ",jGV\u0003\u0006lA\u0018\u0008\u0000e\u0006L\u0005\u0008\"RWDJq"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/VolleyLog;->a:[Ljava/lang/String;

    const-string v0, "9mJT\u0001\u0016"

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

    :goto_3
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_2

    const/16 v5, 0x64

    :goto_4
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_4

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_3

    :pswitch_2
    const/16 v9, 0x6f

    goto :goto_2

    :pswitch_3
    const/4 v9, 0x2

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x26

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x38

    goto :goto_2

    :pswitch_6
    const/16 v5, 0x6f

    goto :goto_4

    :pswitch_7
    const/4 v5, 0x2

    goto :goto_4

    :pswitch_8
    const/16 v5, 0x26

    goto :goto_4

    :pswitch_9
    const/16 v5, 0x38

    goto :goto_4

    :cond_4
    move v1, v0

    move-object v0, v3

    :cond_5
    if-gt v1, v2, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    const/4 v1, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v3, Lcom/mokee/volley/Request;->o:Z

    if-nez p1, :cond_3

    :goto_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    sget-object v0, Lcom/mokee/volley/VolleyLog;->a:[Ljava/lang/String;

    aget-object v0, v0, v8

    if-eqz v3, :cond_4

    move-object v2, v0

    move v0, v1

    :cond_0
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/mokee/volley/VolleyLog;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x24

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v3, Lcom/mokee/volley/VolleyLog;->a:[Ljava/lang/String;

    aget-object v3, v3, v9

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v2, v4, v9

    aput-object p0, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    move-object v2, v0

    move v0, v1

    goto :goto_1
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mokee/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mokee/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mokee/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    sget-object v0, Lcom/mokee/volley/VolleyLog;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mokee/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/mokee/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/mokee/volley/VolleyLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/mokee/volley/VolleyLog;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
