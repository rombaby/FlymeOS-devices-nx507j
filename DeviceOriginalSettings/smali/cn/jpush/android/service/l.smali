.class final Lcn/jpush/android/service/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jpush/android/service/PushService;


# direct methods
.method constructor <init>(Lcn/jpush/android/service/PushService;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/l;->a:Lcn/jpush/android/service/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcn/jpush/android/service/l;->a:Lcn/jpush/android/service/PushService;

    invoke-static {v0, v1}, Lcn/jpush/android/service/PushService;->b(Lcn/jpush/android/service/PushService;Z)Z

    iget-object v0, p0, Lcn/jpush/android/service/l;->a:Lcn/jpush/android/service/PushService;

    invoke-static {v0, v2, v1, v1}, Lcn/jpush/android/service/PushService;->a(Lcn/jpush/android/service/PushService;ZZZ)V

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/service/l;->a:Lcn/jpush/android/service/PushService;

    invoke-static {v0}, Lcn/jpush/android/service/PushService;->c(Lcn/jpush/android/service/PushService;)V

    iget-object v0, p0, Lcn/jpush/android/service/l;->a:Lcn/jpush/android/service/PushService;

    invoke-static {v0, v2}, Lcn/jpush/android/service/PushService;->b(Lcn/jpush/android/service/PushService;Z)Z

    return-void
.end method
