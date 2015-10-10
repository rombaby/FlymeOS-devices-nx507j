.class public Lcn/jpush/android/service/DaemonService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    invoke-virtual {p0}, Lcn/jpush/android/service/DaemonService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcn/jpush/android/service/ServiceInterface;->c(Landroid/content/Context;I)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
