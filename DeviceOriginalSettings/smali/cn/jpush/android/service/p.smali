.class final Lcn/jpush/android/service/p;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcn/jpush/android/service/PushService;


# direct methods
.method public constructor <init>(Lcn/jpush/android/service/PushService;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcn/jpush/android/service/p;->c:Lcn/jpush/android/service/PushService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/jpush/android/service/p;->a:Ljava/lang/String;

    iput v1, p0, Lcn/jpush/android/service/p;->b:I

    iput-object p2, p0, Lcn/jpush/android/service/p;->a:Ljava/lang/String;

    iput p3, p0, Lcn/jpush/android/service/p;->b:I

    iput-object v2, p1, Lcn/jpush/android/service/PushService;->I:[Ljava/net/InetAddress;

    invoke-static {p1, v1}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;Z)Z

    iput-object v2, p1, Lcn/jpush/android/service/PushService;->J:Ljava/net/InetAddress;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/service/p;->c:Lcn/jpush/android/service/PushService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;Z)Z

    iget v0, p0, Lcn/jpush/android/service/p;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/service/p;->c:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/p;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/android/service/PushService;->I:[Ljava/net/InetAddress;

    iget-object v0, p0, Lcn/jpush/android/service/p;->c:Lcn/jpush/android/service/PushService;

    iget-object v0, v0, Lcn/jpush/android/service/PushService;->I:[Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/p;->c:Lcn/jpush/android/service/PushService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;Z)Z

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget v0, p0, Lcn/jpush/android/service/p;->b:I

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/service/p;->c:Lcn/jpush/android/service/PushService;

    iget-object v1, p0, Lcn/jpush/android/service/p;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Lcn/jpush/android/service/PushService;->J:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcn/jpush/android/service/p;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
