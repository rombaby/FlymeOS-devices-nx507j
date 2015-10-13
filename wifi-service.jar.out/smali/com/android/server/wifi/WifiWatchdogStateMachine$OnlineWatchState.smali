.class Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineWatchState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleRssiChange()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$200(Lcom/android/server/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentBssid:Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1700(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mLinkMonitoringState:Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$LinkMonitoringState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3700(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 752
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$1600(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 744
    :goto_0
    return-void

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mOnlineState:Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3300(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$3500(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 756
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 768
    const/4 v0, 0x0

    .line 770
    :goto_0
    return v0

    .line 758
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$300(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 759
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    .line 770
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 762
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lnubia/net/wifi/WifiRssiInfo;

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$002(Lcom/android/server/wifi/WifiWatchdogStateMachine;Lnubia/net/wifi/WifiRssiInfo;)Lnubia/net/wifi/WifiRssiInfo;

    .line 763
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lnubia/net/wifi/WifiRssiInfo;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lnubia/net/wifi/WifiRssiUtils;->calculateSignalLevel(Lnubia/net/wifi/WifiRssiInfo;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$202(Lcom/android/server/wifi/WifiWatchdogStateMachine;I)I

    .line 764
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;
    invoke-static {v0}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lnubia/net/wifi/WifiRssiInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    # getter for: Lcom/android/server/wifi/WifiWatchdogStateMachine;->mRssiInfo:Lnubia/net/wifi/WifiRssiInfo;
    invoke-static {v1}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->access$000(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Lnubia/net/wifi/WifiRssiInfo;

    move-result-object v1

    invoke-virtual {v1}, Lnubia/net/wifi/WifiRssiInfo;->getNewRssi()I

    move-result v1

    invoke-virtual {v0, v1}, Lnubia/net/wifi/WifiRssiInfo;->updateLastSignalRssi(I)V

    .line 765
    invoke-direct {p0}, Lcom/android/server/wifi/WifiWatchdogStateMachine$OnlineWatchState;->handleRssiChange()V

    goto :goto_1

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x21003 -> :sswitch_0
        0x21017 -> :sswitch_1
    .end sparse-switch
.end method
