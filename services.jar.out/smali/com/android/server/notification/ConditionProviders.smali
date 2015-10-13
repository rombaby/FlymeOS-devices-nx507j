.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$1;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;,
        Lcom/android/server/notification/ConditionProviders$DowntimeCallback;,
        Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;
    }
.end annotation


# static fields
.field private static final NO_CONDITIONS:[Landroid/service/notification/Condition;


# instance fields
.field private final mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

.field private final mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionComponent:Landroid/content/ComponentName;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/IConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSilentExitCondition:Landroid/service/notification/Condition;

.field private mSilentExitConditionComponent:Landroid/content/ComponentName;

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/Condition;

    sput-object v0, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/notification/ZenModeHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p4, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v0}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    .line 57
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {v0}, Lcom/android/server/notification/DowntimeConditionProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    .line 69
    iput-object p4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 70
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v1, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 71
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    .line 72
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p1, "x1"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/notification/ConditionProviders;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ConditionProviders;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/notification/ConditionProviders;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p1, "x1"    # Landroid/service/notification/Condition;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/ConditionProviders;Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # Landroid/content/ComponentName;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/CountdownConditionProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    return-object v0
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .locals 4
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 243
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 245
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :goto_1
    return-object v2

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    .line 250
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private loadZenConfig()V
    .locals 13

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 577
    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v9}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    .line 578
    .local v4, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v4, :cond_1

    .line 579
    iget-boolean v8, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v9, "loadZenConfig: no config"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 583
    :try_start_0
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v11, v4, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    move v1, v2

    .line 584
    .local v1, "changingExit":Z
    :goto_1
    iget-object v10, v4, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iput-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 585
    iget-object v10, v4, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    iput-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 586
    if-eqz v1, :cond_2

    .line 587
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v11, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    const-string v12, "config"

    invoke-static {v10, v11, v12}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 590
    :cond_2
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v11, v4, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 591
    .local v2, "changingSilentExit":Z
    :goto_2
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    iput-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    .line 592
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->silentExitConditionComponent:Landroid/content/ComponentName;

    iput-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    .line 593
    if-eqz v2, :cond_3

    .line 594
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    const-string v11, "config"

    invoke-static {v8, v10, v11}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 597
    :cond_3
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v8, v4}, Lcom/android/server/notification/DowntimeConditionProvider;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    .line 598
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v8, :cond_4

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v8, :cond_4

    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v8, v8

    iget-object v10, v4, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v10, v10

    if-eq v8, v10, :cond_8

    .line 600
    :cond_4
    iget-boolean v8, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v10, "loadZenConfig: no conditions"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_5
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 602
    monitor-exit v9

    goto :goto_0

    .line 616
    .end local v1    # "changingExit":Z
    .end local v2    # "changingSilentExit":Z
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_6
    move v1, v8

    .line 583
    goto :goto_1

    .restart local v1    # "changingExit":Z
    :cond_7
    move v2, v8

    .line 590
    goto :goto_2

    .line 604
    .restart local v2    # "changingSilentExit":Z
    :cond_8
    :try_start_1
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 605
    .local v7, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v8

    .line 606
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_a

    .line 607
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    aget-object v3, v8, v5

    .line 608
    .local v3, "component":Landroid/content/ComponentName;
    iget-object v8, v4, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    aget-object v6, v8, v5

    .line 609
    .local v6, "id":Landroid/net/Uri;
    if-eqz v3, :cond_9

    if-eqz v6, :cond_9

    .line 610
    invoke-direct {p0, v6, v3}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 611
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 614
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v6    # "id":Landroid/net/Uri;
    :cond_a
    iget-boolean v8, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadZenConfig: N="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_b
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    new-array v8, v8, [Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 616
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 550
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    goto :goto_0
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .locals 1
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 554
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_0
.end method

.method private requestConditionsLocked(I)V
    .locals 9
    .param p1, "flags"    # I

    .prologue
    .line 558
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 559
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v4

    .line 560
    .local v4, "provider":Landroid/service/notification/IConditionProvider;
    if-eqz v4, :cond_0

    .line 562
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 563
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 564
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eq v6, v3, :cond_2

    .line 562
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 565
    :cond_2
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v6, :cond_1

    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_1

    .line 566
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 569
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_0
    invoke-interface {v4, p1}, Landroid/service/notification/IConditionProvider;->onRequestConditions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting conditions from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 574
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "provider":Landroid/service/notification/IConditionProvider;
    :cond_4
    return-void
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 475
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 476
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    .line 484
    :cond_0
    return-object v3

    .line 477
    :cond_1
    array-length v0, p0

    .line 478
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 479
    aget-object v2, p0, v1

    .line 480
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_2

    .line 481
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveZenConfigLocked()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 620
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 621
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_0

    .line 652
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v1, "automatic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ConditionProviders$ConditionRecord;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 625
    .local v2, "automaticN":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 626
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 627
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_1

    .line 628
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 631
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 632
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 633
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 644
    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 645
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    .line 647
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->silentExitCondition:Landroid/service/notification/Condition;

    .line 648
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->silentExitConditionComponent:Landroid/content/ComponentName;

    .line 650
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting zen config to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0

    .line 635
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 636
    .local v0, "N":I
    new-array v6, v0, [Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 637
    new-array v6, v0, [Landroid/net/Uri;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 638
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    .line 639
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 640
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    aput-object v7, v6, v4

    .line 641
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    aput-object v7, v6, v4

    .line 638
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private setAutomaticZenModeConditions([Landroid/net/Uri;Z)V
    .locals 9
    .param p1, "conditionIds"    # [Landroid/net/Uri;
    .param p2, "save"    # Z

    .prologue
    .line 492
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAutomaticZenModeConditions "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 495
    :try_start_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    .line 496
    .local v4, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 497
    .local v0, "N":I
    const/4 v2, 0x0

    .line 498
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 499
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 500
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 501
    .local v1, "automatic":Z
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 503
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 504
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    const/4 v2, 0x1

    .line 498
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 492
    .end local v0    # "N":I
    .end local v1    # "automatic":Z
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_0

    .line 506
    .restart local v0    # "N":I
    .restart local v1    # "automatic":Z
    .restart local v2    # "changed":Z
    .restart local v3    # "i":I
    .restart local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3
    :try_start_1
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 508
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 509
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    .line 510
    const/4 v2, 0x1

    goto :goto_2

    .line 513
    .end local v1    # "automatic":Z
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4
    if-eqz p2, :cond_5

    if-eqz v2, :cond_5

    .line 514
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 516
    :cond_5
    monitor-exit v7

    .line 517
    return-void

    .line 516
    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 459
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 461
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 462
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 464
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 472
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    move-object v2, v0

    goto :goto_0

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 535
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsubscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 537
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 538
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_1

    .line 540
    :try_start_0
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 547
    return-void

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 543
    move-object v2, v0

    goto :goto_0

    .line 546
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v3, 0x0

    .line 217
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_2

    :cond_0
    move-object p2, v3

    .line 238
    .end local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_1
    :goto_0
    return-object p2

    .line 218
    .restart local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_2
    array-length v0, p2

    .line 219
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 220
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 221
    aget-object v5, p2, v1

    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 222
    .local v2, "id":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 223
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for invalid id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    :cond_3
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 230
    :cond_4
    aget-object v5, p2, v1

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 232
    .end local v2    # "id":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_6

    move-object p2, v3

    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 234
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v3, v5, [Landroid/service/notification/Condition;

    .line 235
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    :goto_3
    array-length v5, v3

    if-ge v1, v5, :cond_7

    .line 236
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    aput-object v5, v3, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object p2, v3

    .line 238
    goto/16 :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 113
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 89
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 90
    if-nez p2, :cond_0

    .line 91
    :try_start_0
    const-string v3, "    mListeners("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 93
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "i":I
    :cond_0
    const-string v3, "    mRecords("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 98
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 99
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_2

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_2
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 101
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 103
    const-string v3, "        ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 106
    .end local v0    # "countdownDesc":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/CountdownConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 108
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/DowntimeConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 109
    return-void
.end method

.method public getAutomaticZenModeConditions()[Landroid/service/notification/Condition;
    .locals 6

    .prologue
    .line 520
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 521
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, "N":I
    const/4 v3, 0x0

    .line 523
    .local v3, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 524
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 525
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_1

    .line 526
    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .restart local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :cond_0
    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    if-nez v3, :cond_3

    sget-object v4, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    :goto_1
    monitor-exit v5

    return-object v4

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    goto :goto_1

    .line 531
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 77
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 78
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 79
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 80
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 81
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 82
    const v1, 0x104054d

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 83
    return-object v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 20
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v15

    .line 256
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "notifyConditions pkg="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " info="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " conditions="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-nez p3, :cond_2

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p3

    .line 259
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v14, v0

    if-nez v14, :cond_3

    :cond_1
    monitor-exit v15

    .line 373
    :goto_1
    return-void

    .line 256
    :cond_2
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_0

    .line 260
    :cond_3
    move-object/from16 v0, p3

    array-length v4, v0

    .line 261
    .local v4, "N":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/service/notification/IConditionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .local v12, "listener":Landroid/service/notification/IConditionListener;
    :try_start_1
    move-object/from16 v0, p3

    invoke-interface {v12, v0}, Landroid/service/notification/IConditionListener;->onConditionsReceived([Landroid/service/notification/Condition;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 264
    :catch_0
    move-exception v8

    .line 265
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error sending conditions to listener "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 372
    .end local v4    # "N":I
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "listener":Landroid/service/notification/IConditionListener;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 268
    .restart local v4    # "N":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v4, :cond_19

    .line 269
    :try_start_3
    aget-object v6, p3, v10

    .line 270
    .local v6, "c":Landroid/service/notification/Condition;
    iget-object v14, v6, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v13

    .line 271
    .local v13, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    move-object/from16 v0, p2

    iput-object v0, v13, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 272
    iput-object v6, v13, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 274
    iget-boolean v14, v13, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v14, :cond_e

    .line 275
    iget v14, v6, Landroid/service/notification/Condition;->state:I

    if-eqz v14, :cond_5

    iget v14, v6, Landroid/service/notification/Condition;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_e

    .line 276
    :cond_5
    iget v14, v6, Landroid/service/notification/Condition;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_12

    const/4 v9, 0x1

    .line 277
    .local v9, "failed":Z
    :goto_4
    if-eqz v9, :cond_13

    .line 278
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exit zen: manual condition failed: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_6
    :goto_5
    const/4 v14, 0x1

    if-ne v4, v14, :cond_d

    .line 284
    const/4 v5, 0x0

    .line 285
    .local v5, "autoChangeZenMode":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mExitCondition:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";mSilentExitCondition:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    aget-object v16, p3, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 287
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 288
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    cmp-long v14, v16, v18

    if-lez v14, :cond_14

    sget-boolean v14, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v14, :cond_14

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v16, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v7

    .line 295
    .local v7, "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v14, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    if-eqz v14, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v14}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 298
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x2

    const-string v17, "autoChangeZenMode"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 300
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 301
    const/4 v5, 0x1

    .line 302
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    const-string v17, "autoChangeZenMode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 312
    .end local v7    # "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 314
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    aget-object v16, p3, v10

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 315
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    .line 316
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    .line 317
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v14}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v14}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntime()Z

    move-result v14

    if-eqz v14, :cond_15

    sget-boolean v14, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v14, :cond_15

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v14, v14, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v16, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v7

    .line 321
    .restart local v7    # "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v14, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    if-eqz v14, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v14}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v14

    iput-object v14, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 324
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x1

    const-string v17, "autoChangeZenMode"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 326
    const/4 v14, 0x1

    iput-boolean v14, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 327
    const/4 v5, 0x1

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    const-string v17, "autoChangeZenMode"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 338
    .end local v7    # "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 340
    :cond_c
    if-nez v5, :cond_d

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x0

    const-string v17, "manualConditionExit"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 350
    .end local v5    # "autoChangeZenMode":Z
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 351
    const/4 v14, 0x0

    iput-boolean v14, v13, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 355
    .end local v9    # "failed":Z
    :cond_e
    iget-boolean v14, v13, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v14, :cond_11

    .line 356
    iget v14, v6, Landroid/service/notification/Condition;->state:I

    if-eqz v14, :cond_f

    iget v14, v6, Landroid/service/notification/Condition;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_18

    .line 357
    :cond_f
    iget v14, v6, Landroid/service/notification/Condition;->state:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v14, v0, :cond_16

    const/4 v9, 0x1

    .line 358
    .restart local v9    # "failed":Z
    :goto_8
    if-eqz v9, :cond_17

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exit zen: automatic condition failed: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_10
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x0

    const-string v17, "automaticConditionExit"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 268
    .end local v9    # "failed":Z
    :cond_11
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 276
    :cond_12
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 279
    .restart local v9    # "failed":Z
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v14, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exit zen: manual condition false: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 304
    .restart local v5    # "autoChangeZenMode":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v14}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v14, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v14}, Lcom/android/server/notification/ZenModeHelper;->getLastSilentExitCondition()I

    move-result v14

    if-nez v14, :cond_8

    sget-boolean v14, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v14, :cond_8

    .line 307
    const/4 v5, 0x1

    .line 308
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x2

    const-string v17, "autoChangeZenModeForever"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    const-string v17, "autoChangeZenModeForever"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 330
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v14}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v14}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v14

    if-nez v14, :cond_b

    sget-boolean v14, Lcn/nubia/server/notification/NubiaZenMode;->priorityMode:Z

    if-eqz v14, :cond_b

    .line 333
    const/4 v5, 0x1

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x1

    const-string v17, "autoChangeZenModeForever"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    const-string v17, "autoChangeZenModeForever"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v0, v1}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 357
    .end local v5    # "autoChangeZenMode":Z
    .end local v9    # "failed":Z
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 360
    .restart local v9    # "failed":Z
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v14, :cond_10

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exit zen: automatic condition false: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 365
    .end local v9    # "failed":Z
    :cond_18
    iget v14, v6, Landroid/service/notification/Condition;->state:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_11

    .line 366
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Enter zen: automatic condition true: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/16 v16, 0x1

    const-string v17, "automaticConditionEnter"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 372
    .end local v6    # "c":Landroid/service/notification/Condition;
    .end local v13    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_19
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public onBootPhaseAppsCanStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 119
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/CountdownConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 125
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    new-instance v1, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->setCallback(Lcom/android/server/notification/DowntimeConditionProvider$Callback;)V

    .line 126
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v8, 0x1

    .line 130
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onServiceAdded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v3

    .line 133
    .local v3, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_0
    invoke-interface {v3}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 138
    :try_start_1
    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 146
    .local v2, "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 147
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 152
    .end local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_0
    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 156
    .restart local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 157
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 161
    .end local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 162
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 163
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 164
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 162
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 165
    :cond_3
    iput-object p1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 167
    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v5, :cond_4

    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v5, :cond_2

    .line 168
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    goto :goto_2

    .line 171
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    return-void

    .line 134
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 5
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 190
    :cond_0
    return-void

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 179
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v2, :cond_3

    .line 182
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "manualServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 184
    :cond_3
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "automaticServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 188
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 4
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestZenModeConditions callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " relevance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-nez p1, :cond_1

    monitor-exit v1

    .line 214
    :goto_0
    return-void

    .line 203
    :cond_1
    and-int/lit8 p2, p2, 0x3

    .line 204
    if-eqz p2, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-direct {p0, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V

    .line 213
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 208
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setAutomaticZenModeConditions([Landroid/net/Uri;)V
    .locals 1
    .param p1, "conditionIds"    # [Landroid/net/Uri;

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 489
    return-void
.end method

.method public setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V
    .locals 13
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 376
    iget-boolean v9, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setZenModeCondition "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "conditionComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 380
    :try_start_0
    iget-object v10, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 382
    iget-object v10, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v11, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v10, v11}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v6

    .line 384
    .local v6, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v10, :cond_1

    .line 386
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v10}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 389
    .end local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_1
    iget-object v10, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 391
    iget-object v10, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v11, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v10, v11}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v6

    .line 393
    .restart local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v10, :cond_2

    .line 395
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v10}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 399
    .end local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 400
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 401
    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 402
    .restart local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p1, :cond_5

    iget-object v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    iget-object v11, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v4, v7

    .line 403
    .local v4, "idEqual":Z
    :goto_1
    iget-boolean v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v10, :cond_6

    if-nez v4, :cond_6

    .line 405
    invoke-direct {p0, v6}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 406
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 412
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 413
    iget-object v2, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    .line 400
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4    # "idEqual":Z
    :cond_5
    move v4, v8

    .line 402
    goto :goto_1

    .line 407
    .restart local v4    # "idEqual":Z
    :cond_6
    if-eqz v4, :cond_3

    iget-boolean v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v10, :cond_3

    .line 409
    invoke-direct {p0, v6}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 410
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    goto :goto_2

    .line 455
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "idEqual":Z
    .end local v6    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 427
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    :cond_7
    const/4 v1, 0x0

    .line 428
    .local v1, "changed":Z
    :try_start_1
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "zen_mode"

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 430
    .local v5, "mode":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 431
    if-nez p1, :cond_8

    if-ne v5, v12, :cond_9

    :cond_8
    if-ne v5, v7, :cond_a

    .line 433
    :cond_9
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 434
    iput-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 435
    const/4 v1, 0x1

    .line 438
    :cond_a
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 439
    if-nez p1, :cond_b

    if-ne v5, v7, :cond_c

    :cond_b
    if-ne v5, v12, :cond_d

    .line 441
    :cond_c
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;

    .line 442
    iput-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mSilentExitConditionComponent:Landroid/content/ComponentName;

    .line 443
    const/4 v1, 0x1

    .line 446
    :cond_d
    if-eqz v1, :cond_e

    .line 451
    invoke-static {p1, v2, p2}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 453
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 455
    :cond_e
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    return-void
.end method
