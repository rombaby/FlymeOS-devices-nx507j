.class Lcom/android/server/notification/ConditionProviders$DowntimeCallback;
.super Ljava/lang/Object;
.source "ConditionProviders.java"

# interfaces
.implements Lcom/android/server/notification/DowntimeConditionProvider$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ConditionProviders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DowntimeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ConditionProviders;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ConditionProviders;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ConditionProviders;
    .param p2, "x1"    # Lcom/android/server/notification/ConditionProviders$1;

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;-><init>(Lcom/android/server/notification/ConditionProviders;)V

    return-void
.end method


# virtual methods
.method public onDowntimeChanged(Z)V
    .locals 14
    .param p1, "inDowntime"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    .line 673
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v4

    .line 674
    .local v4, "mode":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 680
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    if-ne v4, v13, :cond_5

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$500(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v8

    if-nez v8, :cond_5

    move v5, v6

    .line 681
    .local v5, "silentChanged":Z
    :goto_0
    const-string v8, "1"

    const-string v9, "sys.boot_completed"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 682
    .local v0, "bootCompleted":Z
    if-eqz p1, :cond_2

    if-eqz v4, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/DowntimeConditionProvider;->isInDowntimeExceptSamePeriod()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v2, :cond_2

    .line 685
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/server/notification/ZenModeHelper;->setLastDownTime(J)V

    .line 687
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v8

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/android/server/notification/DowntimeConditionProvider;->createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v1

    .line 689
    .local v1, "condition":Landroid/service/notification/Condition;
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    const-string v9, "downtimeEnter"

    invoke-virtual {v8, v6, v9}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 690
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    const-string v9, "downtime"

    invoke-virtual {v8, v1, v9}, Lcom/android/server/notification/ConditionProviders;->setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V

    .line 702
    .end local v1    # "condition":Landroid/service/notification/Condition;
    :cond_2
    if-nez p1, :cond_4

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v9}, Lcom/android/server/notification/ConditionProviders;->access$500(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/DowntimeConditionProvider;->isDowntimeCondition(Landroid/service/notification/Condition;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 703
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/server/notification/ZenModeHelper;->setLastDownTime(J)V

    .line 704
    if-ne v4, v6, :cond_8

    .line 705
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v8

    iget-object v8, v8, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v8

    iget-object v8, v8, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    sget-boolean v8, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v8, :cond_6

    .line 709
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mSilentExitCondition:Landroid/service/notification/Condition;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;

    move-result-object v8

    iget-object v8, v8, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v9, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    # invokes: Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    invoke-static {v7, v8, v9}, Lcom/android/server/notification/ConditionProviders;->access$800(Lcom/android/server/notification/ConditionProviders;Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v3

    .line 711
    .local v3, "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v7, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v7, :cond_3

    .line 712
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;
    invoke-static {v8}, Lcom/android/server/notification/ConditionProviders;->access$900(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/CountdownConditionProvider;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v7

    iput-object v7, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 714
    :cond_3
    iput-boolean v6, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 715
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v6

    const-string v7, "autoChangeZenMode"

    invoke-virtual {v6, v13, v7}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 716
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # invokes: Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    invoke-static {v6, v3}, Lcom/android/server/notification/ConditionProviders;->access$1000(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 717
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # setter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v6, v12}, Lcom/android/server/notification/ConditionProviders;->access$502(Lcom/android/server/notification/ConditionProviders;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    .line 718
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # setter for: Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;
    invoke-static {v6, v12}, Lcom/android/server/notification/ConditionProviders;->access$1102(Lcom/android/server/notification/ConditionProviders;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 719
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # invokes: Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$1200(Lcom/android/server/notification/ConditionProviders;)V

    .line 737
    .end local v3    # "cr":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4
    :goto_1
    return-void

    .end local v0    # "bootCompleted":Z
    .end local v5    # "silentChanged":Z
    :cond_5
    move v5, v7

    .line 680
    goto/16 :goto_0

    .line 720
    .restart local v0    # "bootCompleted":Z
    .restart local v5    # "silentChanged":Z
    :cond_6
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getLastZenMode()I

    move-result v6

    if-ne v6, v13, :cond_7

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getLastExitCondition()I

    move-result v6

    if-nez v6, :cond_7

    sget-boolean v6, Lcn/nubia/server/notification/NubiaZenMode;->noneMode:Z

    if-eqz v6, :cond_7

    .line 723
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v6

    const-string v7, "autoChangeZenModeForever"

    invoke-virtual {v6, v13, v7}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 724
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # setter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v6, v12}, Lcom/android/server/notification/ConditionProviders;->access$502(Lcom/android/server/notification/ConditionProviders;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    .line 725
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # setter for: Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;
    invoke-static {v6, v12}, Lcom/android/server/notification/ConditionProviders;->access$1102(Lcom/android/server/notification/ConditionProviders;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 726
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # invokes: Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$1200(Lcom/android/server/notification/ConditionProviders;)V

    goto :goto_1

    .line 728
    :cond_7
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # getter for: Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;

    move-result-object v6

    const-string v8, "downtimeExit"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_1

    .line 730
    :cond_8
    if-ne v4, v13, :cond_4

    .line 731
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # setter for: Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;
    invoke-static {v6, v12}, Lcom/android/server/notification/ConditionProviders;->access$502(Lcom/android/server/notification/ConditionProviders;Landroid/service/notification/Condition;)Landroid/service/notification/Condition;

    .line 732
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # setter for: Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;
    invoke-static {v6, v12}, Lcom/android/server/notification/ConditionProviders;->access$1102(Lcom/android/server/notification/ConditionProviders;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 733
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;->this$0:Lcom/android/server/notification/ConditionProviders;

    # invokes: Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V
    invoke-static {v6}, Lcom/android/server/notification/ConditionProviders;->access$1200(Lcom/android/server/notification/ConditionProviders;)V

    goto :goto_1
.end method
