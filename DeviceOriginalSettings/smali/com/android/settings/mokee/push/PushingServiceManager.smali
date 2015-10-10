.class public Lcom/flyme/deviceoriginalsettings/mokee/push/PushingServiceManager;
.super Landroid/content/BroadcastReceiver;
.source "PushingServiceManager.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingServiceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setPushService(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/mokee/utils/MoKeeUtils;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->isPushStopped(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->stopPush(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    sget-object v0, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "resume or stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/mokee/push/PushingServiceManager;->setPushService(Landroid/content/Context;)V

    .line 34
    return-void
.end method
