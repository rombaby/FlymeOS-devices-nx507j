.class public abstract Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.super Ljava/lang/Object;
.source "EdgeGestureBaseCtrl.java"

# interfaces
.implements Lcn/nubia/edgegesture/EdgeGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGestureBaseCtrl"


# instance fields
.field mActivityManager:Landroid/app/ActivityManager;

.field mContext:Landroid/content/Context;

.field mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

.field mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 43
    iput-object p3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    .line 44
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mActivityManager:Landroid/app/ActivityManager;

    .line 46
    return-void
.end method


# virtual methods
.method abstract canHandleEdgeGestureNow()Z
.end method

.method getCurrentRunAppPackageName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 82
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 83
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 84
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method getCurrentRuningAppInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 5

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 62
    .local v1, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 63
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 64
    .local v2, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    .line 65
    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .end local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo;-><init>()V

    .line 66
    .restart local v0    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    iput v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    .line 67
    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 68
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 73
    .end local v2    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    return-object v0
.end method

.method abstract handleEdgeGesture(I)V
.end method

.method isHomeApplication(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "bHome":Z
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 97
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 100
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_0
    const-string v3, "EdgeGestureBaseCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHomeApplication = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0
.end method

.method isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method isSetupWizardApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "cn.nubia.setupwizard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isSystemUIApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onEdgeGesture(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->canHandleEdgeGestureNow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;->handleEdgeGesture(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const-string v0, "EdgeGestureBaseCtrl"

    const-string v1, "can\'t handle edge gesture now!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
