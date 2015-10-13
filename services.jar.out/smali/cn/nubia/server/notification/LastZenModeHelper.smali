.class public Lcn/nubia/server/notification/LastZenModeHelper;
.super Ljava/lang/Object;
.source "LastZenModeHelper.java"


# static fields
.field private static final LAST_DOWN_TIME:Ljava/lang/String; = "last_down_time"

.field private static final NONE_ZEN_MODE:Ljava/lang/String; = "audio_none_zen_mode"

.field private static final PRIORITY_ZEN_MODE:Ljava/lang/String; = "audio_priority_zen_mode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentZenMode:I

.field private mDisableChanging:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastExitCondition:I

.field private mLastSilentExitCondition:I

.field private mLastZenMode:I

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 32
    invoke-direct {p0}, Lcn/nubia/server/notification/LastZenModeHelper;->initZenMode()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/notification/LastZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/LastZenModeHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/notification/LastZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/LastZenModeHelper;

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastZenMode:I

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/server/notification/LastZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/LastZenModeHelper;

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mCurrentZenMode:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/notification/LastZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/LastZenModeHelper;

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastExitCondition:I

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/server/notification/LastZenModeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/notification/LastZenModeHelper;

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastSilentExitCondition:I

    return v0
.end method

.method private initZenMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "last_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastZenMode:I

    .line 116
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "current_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mCurrentZenMode:I

    .line 118
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "last_exit_condition"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastExitCondition:I

    .line 120
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "last_silent_exit_condition"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastSilentExitCondition:I

    .line 122
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "audio_priority_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    .line 123
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "audio_none_zen_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v1, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    .line 124
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "last_down_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    .line 125
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1
.end method


# virtual methods
.method public getLastDownTime()J
    .locals 2

    .prologue
    .line 162
    sget-wide v0, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    return-wide v0
.end method

.method public getLastExitCondition()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastExitCondition:I

    return v0
.end method

.method public getLastSilentExitCondition()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastSilentExitCondition:I

    return v0
.end method

.method public getLastZenMode()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastZenMode:I

    return v0
.end method

.method public isIntercepted(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 167
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 168
    const-string v0, "priorityApp"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 171
    :cond_0
    const-string v0, "!priorityApp"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public saveLastExitCondition()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 73
    const-string v3, "0"

    const-string v4, "sys.boot_completed"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/server/notification/LastZenModeHelper;->saveLastZenMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iget v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastZenMode:I

    if-ne v3, v0, :cond_3

    .line 76
    iget-object v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v3, :cond_2

    .line 77
    .local v0, "lastExitCondition":I
    :goto_1
    iget v2, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastExitCondition:I

    if-eq v2, v0, :cond_0

    .line 78
    iput v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastExitCondition:I

    .line 79
    iget-object v2, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/server/notification/LastZenModeHelper$2;

    invoke-direct {v3, p0}, Lcn/nubia/server/notification/LastZenModeHelper$2;-><init>(Lcn/nubia/server/notification/LastZenModeHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v0    # "lastExitCondition":I
    :cond_2
    move v0, v2

    .line 76
    goto :goto_1

    .line 87
    :cond_3
    iget v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastZenMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 88
    iget-object v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v3, :cond_4

    move v1, v0

    .line 89
    .local v1, "lastSilentExitCondition":I
    :goto_2
    iget v2, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastSilentExitCondition:I

    if-eq v2, v1, :cond_0

    .line 90
    iput v1, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastSilentExitCondition:I

    .line 91
    iget-object v2, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcn/nubia/server/notification/LastZenModeHelper$3;

    invoke-direct {v3, p0}, Lcn/nubia/server/notification/LastZenModeHelper$3;-><init>(Lcn/nubia/server/notification/LastZenModeHelper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1    # "lastSilentExitCondition":I
    :cond_4
    move v1, v2

    .line 88
    goto :goto_2
.end method

.method public saveLastZenMode()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "changed":Z
    iget-boolean v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mDisableChanging:Z

    if-eqz v3, :cond_0

    move v1, v0

    .line 68
    .end local v0    # "changed":Z
    .local v1, "changed":I
    :goto_0
    return v1

    .line 38
    .end local v1    # "changed":I
    .restart local v0    # "changed":Z
    :cond_0
    iput-boolean v4, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mDisableChanging:Z

    .line 39
    iget-object v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "zen_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, "mode":I
    iget v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mCurrentZenMode:I

    if-eq v3, v2, :cond_2

    .line 42
    iget v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mCurrentZenMode:I

    iput v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastZenMode:I

    .line 43
    iput v2, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mCurrentZenMode:I

    .line 44
    iget-object v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    iput v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastExitCondition:I

    .line 45
    iget-object v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    if-eqz v3, :cond_4

    move v3, v4

    :goto_2
    iput v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mLastSilentExitCondition:I

    .line 46
    iget-object v3, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcn/nubia/server/notification/LastZenModeHelper$1;

    invoke-direct {v6, p0}, Lcn/nubia/server/notification/LastZenModeHelper$1;-><init>(Lcn/nubia/server/notification/LastZenModeHelper;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    if-ne v2, v4, :cond_5

    .line 61
    invoke-virtual {p0, v4}, Lcn/nubia/server/notification/LastZenModeHelper;->setFlagForPriorityMode(Z)V

    .line 65
    :cond_1
    :goto_3
    const/4 v0, 0x1

    .line 67
    :cond_2
    iput-boolean v5, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mDisableChanging:Z

    move v1, v0

    .line 68
    .restart local v1    # "changed":I
    goto :goto_0

    .end local v1    # "changed":I
    :cond_3
    move v3, v5

    .line 44
    goto :goto_1

    :cond_4
    move v3, v5

    .line 45
    goto :goto_2

    .line 62
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 63
    invoke-virtual {p0, v4}, Lcn/nubia/server/notification/LastZenModeHelper;->setFlagForSilentMode(Z)V

    goto :goto_3
.end method

.method public setFlagForPriorityMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 139
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eq v0, p1, :cond_0

    .line 140
    sput-boolean p1, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    .line 141
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/notification/LastZenModeHelper$6;

    invoke-direct {v1, p0}, Lcn/nubia/server/notification/LastZenModeHelper$6;-><init>(Lcn/nubia/server/notification/LastZenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    return-void
.end method

.method public setFlagForSilentMode(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 128
    sget-boolean v0, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eq v0, p1, :cond_0

    .line 129
    sput-boolean p1, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    .line 130
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/notification/LastZenModeHelper$5;

    invoke-direct {v1, p0}, Lcn/nubia/server/notification/LastZenModeHelper$5;-><init>(Lcn/nubia/server/notification/LastZenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public setLastDownTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 103
    sput-wide p1, Lcn/nubia/server/notification/NubiaZenMode;->downtime:J

    .line 104
    iget-object v0, p0, Lcn/nubia/server/notification/LastZenModeHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/notification/LastZenModeHelper$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/notification/LastZenModeHelper$4;-><init>(Lcn/nubia/server/notification/LastZenModeHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method
