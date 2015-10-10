.class final Lcn/jpush/android/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jpush/android/data/d;

.field final synthetic b:Lcn/jpush/android/service/PushService;


# direct methods
.method constructor <init>(Lcn/jpush/android/service/PushService;Lcn/jpush/android/data/d;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    iput-object p2, p0, Lcn/jpush/android/service/j;->a:Lcn/jpush/android/data/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/service/j;->b:Lcn/jpush/android/service/PushService;

    invoke-virtual {v0}, Lcn/jpush/android/service/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/jpush/android/service/j;->a:Lcn/jpush/android/data/d;

    invoke-static {v0, v1}, Lcn/jpush/android/service/ServiceInterface;->a(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    return-void
.end method
