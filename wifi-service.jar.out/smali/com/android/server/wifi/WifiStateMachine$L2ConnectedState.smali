.class Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 6977
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 10

    .prologue
    .line 6980
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$17708(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 6981
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6982
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v1, 0x20053

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(III)V

    .line 6984
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6985
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "Have NetworkAgent when entering L2Connected"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 6986
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 6988
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$10400(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)Z

    .line 6990
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6991
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v0}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTcpBufferSizes:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$17800(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 6993
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v0, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/wifi/WifiStateMachine;->access$600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "WifiNetworkAgent"

    iget-object v5, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v5}, Lcom/android/server/wifi/WifiStateMachine;->access$6600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkCapabilitiesFilter:Landroid/net/NetworkCapabilities;
    invoke-static {v6}, Lcom/android/server/wifi/WifiStateMachine;->access$2300(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v7}, Lcom/android/server/wifi/WifiStateMachine;->access$17900(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/LinkProperties;

    move-result-object v7

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DEFAULT_SCORE:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$18000()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;-><init>(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mNetworkAgent:Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;
    invoke-static {v9, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$6702(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;)Lcom/android/server/wifi/WifiStateMachine$WifiNetworkAgent;

    .line 7000
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v1, "L2ConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->clearCurrentConfigBSSID(Ljava/lang/String;)V

    .line 7001
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 7010
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7012
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leaving L2ConnectedState state nid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7013
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7014
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7017
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$5400(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 7018
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v1}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7020
    :cond_2
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 20
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7024
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v12, v0, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 7026
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 7298
    const/4 v12, 0x0

    .line 7301
    :goto_0
    return v12

    .line 7028
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->handlePreDhcpSetup()V

    .line 7301
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v12, 0x1

    goto :goto_0

    .line 7031
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 7032
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 7033
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v13, "WifiStateMachine DHCP successful"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7034
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/net/DhcpResults;

    const/4 v14, 0x1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Success(Landroid/net/DhcpResults;I)V
    invoke-static {v13, v12, v14}, Lcom/android/server/wifi/WifiStateMachine;->access$18100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/DhcpResults;I)V

    goto :goto_1

    .line 7037
    :cond_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 7038
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7039
    const/4 v3, -0x1

    .line 7040
    .local v3, "count":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 7041
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_3

    .line 7042
    iget v3, v2, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 7044
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine DHCP failure count="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7046
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "count":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIPv4Failure(I)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$18200(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto :goto_1

    .line 7051
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$18300(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7052
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendConnectedState()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$18400(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7053
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$18500(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$18600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7056
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleIpConfigurationLost()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$18700(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7057
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$18800(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7060
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7061
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$18900(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7064
    :sswitch_6
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 7065
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiNative:Lcom/android/server/wifi/WifiNative;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$3900(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiNative;->disconnect()Z

    .line 7066
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x1

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mTemporarilyDisconnectWifi:Z
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$3502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7067
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$15800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$19000(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7071
    :sswitch_7
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 7072
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x20049

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    .line 7073
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v12, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$19100(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 7074
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 7075
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->noteWifiDisabledWhileAssociated()V

    goto/16 :goto_1

    .line 7080
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_DEFERRED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$6400()I

    move-result v13

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7081
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v12, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$19200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 7084
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->isScanAllowed(I)Z
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$19300(Lcom/android/server/wifi/WifiStateMachine;I)Z

    move-result v12

    if-nez v12, :cond_6

    .line 7086
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v13, "L2ConnectedState: ignore scan"

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$19400(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7087
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 7090
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN source "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " txSuccessRate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%.2f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rxSuccessRate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%.2f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " targetRoamBSSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mTargetRoamBSSID:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$8600(Lcom/android/server/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " RSSI="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7096
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, -0x2

    if-ne v12, v13, :cond_17

    .line 7097
    const/4 v11, 0x0

    .line 7098
    .local v11, "tryFullBandScan":Z
    const/4 v7, 0x0

    .line 7099
    .local v7, "restrictChannelList":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7100
    .local v8, "now_ms":J
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 7101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN with age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " interval="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maxinterval="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/32 v14, 0x493e0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7106
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    if-eqz v12, :cond_f

    .line 7107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/server/wifi/WifiConfigStore;->enableFullBandScanWhenAssociated:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    sub-long v12, v8, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_9

    .line 7110
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 7111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN try full band scan age="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19500(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    sub-long v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " interval="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " maxinterval="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/32 v14, 0x493e0

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7116
    :cond_8
    const/4 v11, 0x1

    .line 7119
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    iget-wide v12, v12, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForFullScans:I

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    iget-wide v12, v12, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForFullScans:I

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_c

    .line 7124
    :cond_a
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 7125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v13, "WifiStateMachine CMD_START_SCAN prevent full band scan due to pkt rate"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7128
    :cond_b
    const/4 v11, 0x0

    .line 7131
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    iget-wide v12, v12, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->maxTxPacketForPartialScans:I

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    iget-wide v12, v12, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->maxRxPacketForPartialScans:I

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_f

    .line 7136
    :cond_d
    const/4 v7, 0x1

    .line 7137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wifi/WifiConfigStore;->alwaysEnableScansWhileAssociated:I

    if-nez v12, :cond_f

    .line 7138
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 7139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN source "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ...and ignore scans"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tx="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%.2f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " rx="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%.2f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7144
    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_REFUSED:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$19700()I

    move-result v13

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2902(Lcom/android/server/wifi/WifiStateMachine;I)I

    .line 7145
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 7150
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12}, Lcom/android/server/wifi/WifiStateMachine;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 7151
    .local v4, "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 7152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN full="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7155
    :cond_10
    if-eqz v4, :cond_16

    .line 7156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_11

    .line 7159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v13

    iget v13, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedPartialScanPeriodMilli:I

    int-to-long v14, v13

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v12, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$19602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7162
    :cond_11
    if-eqz v11, :cond_13

    .line 7163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v12, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$19502(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_12

    .line 7167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v13

    iget v13, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/16 v16, 0x8

    div-long v14, v14, v16

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v12, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$19602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7171
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 7172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN bump interval ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7176
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v12, v13, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 7179
    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v12, v4, v7}, Lcom/android/server/wifi/WifiStateMachine;->startScanForConfiguration(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v12

    if-nez v12, :cond_0

    .line 7181
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 7182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v13, "WifiStateMachine starting scan,  did not find channels -> full"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7185
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->lastFullBandConnectedTimeMilli:J
    invoke-static {v12, v8, v9}, Lcom/android/server/wifi/WifiStateMachine;->access$19502(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7186
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v14

    iget v14, v14, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanMaxIntervalMilli:I

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-gez v12, :cond_15

    .line 7189
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v13

    iget v13, v13, Lcom/android/server/wifi/WifiConfigStore;->associatedFullScanBackoff:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    const-wide/16 v16, 0x8

    div-long v14, v14, v16

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v12, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->access$19602(Lcom/android/server/wifi/WifiStateMachine;J)J

    .line 7193
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_15

    .line 7194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "WifiStateMachine CMD_START_SCAN bump interval ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->fullBandConnectedTimeIntervalMilli:J
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$19600(Lcom/android/server/wifi/WifiStateMachine;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7198
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v12, v13, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 7203
    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v13, "CMD_START_SCAN : connected mode and no configuration"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->MESSAGE_HANDLING_STATUS_HANDLING_ERROR:I
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$19800()I

    move-result v13

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->messageHandlingStatus:I
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$2902(Lcom/android/server/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 7208
    .end local v4    # "currentConfiguration":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "restrictChannelList":Z
    .end local v8    # "now_ms":J
    .end local v11    # "tryFullBandScan":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleScanRequest(ILandroid/os/Message;)V
    invoke-static {v12, v13, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$11400(Lcom/android/server/wifi/WifiStateMachine;ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 7213
    :sswitch_a
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 7214
    .local v6, "netId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v12

    if-eq v12, v6, :cond_0

    .line 7217
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 7222
    .end local v6    # "netId":I
    :sswitch_b
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v13

    if-ne v12, v13, :cond_0

    .line 7223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/server/wifi/WifiConfigStore;->enableChipWakeUpWhenAssociated:Z

    if-eqz v12, :cond_1b

    .line 7224
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VVDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$19900()Z

    move-result v12

    if-eqz v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " get link layer stats "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiLinkLayerStatsSupported:I
    invoke-static {v14}, Lcom/android/server/wifi/WifiStateMachine;->access$20000(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 7225
    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->VDBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$100()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->getWifiLinkLayerStats(Z)Landroid/net/wifi/WifiLinkLayerStats;

    move-result-object v10

    .line 7226
    .local v10, "stats":Landroid/net/wifi/WifiLinkLayerStats;
    if-eqz v10, :cond_1a

    .line 7228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v12

    const/16 v13, -0x7f

    if-eq v12, v13, :cond_1a

    iget v12, v10, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    if-eqz v12, :cond_19

    iget v12, v10, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    if-nez v12, :cond_1a

    .line 7231
    :cond_19
    const/4 v10, 0x0

    .line 7235
    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7236
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->calculateWifiScore(Landroid/net/wifi/WifiLinkLayerStats;)V
    invoke-static {v12, v10}, Lcom/android/server/wifi/WifiStateMachine;->access$20200(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiLinkLayerStats;)V

    .line 7238
    .end local v10    # "stats":Landroid/net/wifi/WifiLinkLayerStats;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x20053

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v15}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0xbb8

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 7241
    # getter for: Lcom/android/server/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiStateMachine;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v13

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$20300(Lcom/android/server/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 7247
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/server/wifi/WifiConfigStore;->enableRssiPollWhenAssociated:Z

    if-eqz v12, :cond_1d

    .line 7248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_1c

    const/4 v12, 0x1

    :goto_2
    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$1602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7252
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # operator++ for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$17708(Lcom/android/server/wifi/WifiStateMachine;)I

    .line 7253
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$1600(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 7255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v14, 0x20053

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mRssiPollToken:I
    invoke-static {v15}, Lcom/android/server/wifi/WifiStateMachine;->access$17700(Lcom/android/server/wifi/WifiStateMachine;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/android/server/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v13

    const-wide/16 v14, 0xbb8

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_1

    .line 7248
    :cond_1c
    const/4 v12, 0x0

    goto :goto_2

    .line 7250
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$1602(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    goto :goto_3

    .line 7259
    :cond_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->cleanWifiScore()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$20400(Lcom/android/server/wifi/WifiStateMachine;)V

    goto/16 :goto_1

    .line 7263
    :sswitch_d
    new-instance v5, Landroid/net/wifi/RssiPacketCountInfo;

    invoke-direct {v5}, Landroid/net/wifi/RssiPacketCountInfo;-><init>()V

    .line 7264
    .local v5, "info":Landroid/net/wifi/RssiPacketCountInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchRssiLinkSpeedAndFrequencyNative()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$20100(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v12

    iput v12, v5, Landroid/net/wifi/RssiPacketCountInfo;->rssi:I

    .line 7266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->fetchPktcntNative(Landroid/net/wifi/RssiPacketCountInfo;)V
    invoke-static {v12, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$20500(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/RssiPacketCountInfo;)V

    .line 7267
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v13, 0x25015

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v12, v0, v13, v5}, Lcom/android/server/wifi/WifiStateMachine;->access$1500(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 7270
    .end local v5    # "info":Landroid/net/wifi/RssiPacketCountInfo;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$14500(Lcom/android/server/wifi/WifiStateMachine;)Z

    move-result v12

    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/server/wifi/WifiConfigStore;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/server/wifi/WifiConfigStore;->enableLinkDebouncing:Z

    if-eqz v12, :cond_1f

    .line 7273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_DELAYED_NETWORK_DISCONNECT and not debouncing - ignore "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7275
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 7277
    :cond_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CMD_DELAYED_NETWORK_DISCONNECT and debouncing - disconnect "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 7280
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/4 v13, 0x0

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->linkDebouncing:Z
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$14502(Lcom/android/server/wifi/WifiStateMachine;Z)Z

    .line 7285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$7600(Lcom/android/server/wifi/WifiStateMachine;)V

    .line 7286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;
    invoke-static {v13}, Lcom/android/server/wifi/WifiStateMachine;->access$11000(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v13

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->access$20600(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 7290
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_20

    .line 7291
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v13, "Associated command w/o BSSID"

    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7294
    :cond_20
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    # setter for: Lcom/android/server/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5302(Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 7295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiStateMachine$L2ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v12}, Lcom/android/server/wifi/WifiStateMachine;->access$5600(Lcom/android/server/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7026
    :sswitch_data_0
    .sparse-switch
        0x20047 -> :sswitch_9
        0x20048 -> :sswitch_7
        0x20049 -> :sswitch_5
        0x20050 -> :sswitch_8
        0x20052 -> :sswitch_c
        0x20053 -> :sswitch_b
        0x20057 -> :sswitch_e
        0x2008a -> :sswitch_3
        0x2008b -> :sswitch_4
        0x20093 -> :sswitch_f
        0x2300c -> :sswitch_6
        0x24003 -> :sswitch_1
        0x25001 -> :sswitch_a
        0x25014 -> :sswitch_d
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_2
    .end sparse-switch
.end method
