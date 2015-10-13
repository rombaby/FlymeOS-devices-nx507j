.class public Lcn/nubia/server/notification/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mContext:Landroid/content/Context;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p3, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/server/notification/NotificationHelper;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 27
    iput-object p3, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 28
    return-void
.end method

.method private exitNoneZenMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "enterPriorityZenMode"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v1, "enterPriorityZenModeForever"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v1, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    const-string v2, "enterPriorityZenModeForever"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v1, 0x0

    const-string v2, "exitNoneZenMode"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private exitPriorityZenMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 47
    sget-boolean v2, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "enterNoneZenMode"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-boolean v2, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    iget-object v2, v2, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 54
    .local v0, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 55
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "enterNoneZenModeForever"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v3, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    const-string v4, "enterNoneZenModeForever"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "exitPriorityZenMode"

    invoke-virtual {v2, v5, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0    # "time":J
    :cond_2
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "exitPriorityZenMode"

    invoke-virtual {v2, v5, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public setNoneZenMode(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x2

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 67
    .local v0, "identity":J
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 68
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "setNoneZenMode"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const/4 v3, 0x0

    const-string v4, "setNoneZenMode"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenModeHelper()Lcn/nubia/server/notification/LastZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/server/notification/LastZenModeHelper;->setFlagForSilentMode(Z)V

    .line 76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return-void

    .line 72
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 73
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->exitNoneZenMode()V

    goto :goto_0
.end method

.method public setPriorityZenMode(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x1

    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 32
    .local v0, "identity":J
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 33
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "setPriorityZenMode"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_0

    .line 37
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const/4 v3, 0x0

    const-string v4, "setPriorityZenMode"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    .line 42
    :cond_0
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getLastZenModeHelper()Lcn/nubia/server/notification/LastZenModeHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/server/notification/LastZenModeHelper;->setFlagForPriorityMode(Z)V

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    return-void

    .line 39
    :cond_1
    if-nez p1, :cond_0

    iget-object v2, p0, Lcn/nubia/server/notification/NotificationHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 40
    invoke-direct {p0}, Lcn/nubia/server/notification/NotificationHelper;->exitPriorityZenMode()V

    goto :goto_0
.end method
