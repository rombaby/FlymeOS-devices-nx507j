.class public Lcn/nubia/internal/policy/impl/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

.field private mExceptionManager:Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;

.field private mHandler:Landroid/os/Handler;

.field private mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

.field private mObserveCallback:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager$ObserveCallback;

.field private mObserverManager:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;

.field private mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

.field private mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

.field private mServiceCtrl:Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

.field private mUpdateCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

.field private needTurnOffScreen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager$1;-><init>(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcn/nubia/internal/policy/impl/SmartFaceManager$2;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager$2;-><init>(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mObserveCallback:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager$ObserveCallback;

    .line 99
    new-instance v0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;-><init>(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mUpdateCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    .line 179
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 180
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    .line 181
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-direct {v0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    .line 182
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    .line 183
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    .line 184
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mObserverManager:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;

    .line 185
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;

    invoke-direct {v0, p1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mExceptionManager:Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;

    .line 186
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->start()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleShowLattice()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->onStop()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleDismiss()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleNotifyScreenOn()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleUpdateRotation(Z)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleTurnOffScreen()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->controlSmartFaceFunc(Z)V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleSetFlag()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/internal/policy/impl/SmartFaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/SmartFaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->setNeedTurnOffScreen(Z)V

    return-void
.end method

.method private controlSmartFaceFunc(Z)V
    .locals 1
    .param p1, "needRun"    # Z

    .prologue
    .line 208
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->isServiceRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->onResume()V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->isServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->onStop()V

    goto :goto_0
.end method

.method private handleDismiss()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;->dismiss()V

    .line 164
    :cond_0
    return-void
.end method

.method private handleNotifyScreenOn()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;->openUnLockScreen(Z)V

    .line 176
    return-void
.end method

.method private handleSetFlag()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;->setEverSmartFaceNearFlag()V

    .line 155
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;->show()V

    .line 145
    :cond_0
    return-void
.end method

.method private handleShowLattice()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;->showLattice()V

    .line 150
    :cond_0
    return-void
.end method

.method private handleTurnOffScreen()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    iget-boolean v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->needTurnOffScreen:Z

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;->turnOffScreen(Z)V

    .line 159
    return-void
.end method

.method private handleUpdateRotation(Z)V
    .locals 1
    .param p1, "oriention"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mManagerWapper:Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerWapper;->updateRotation(Z)V

    .line 168
    return-void
.end method

.method private isKeyEventIntercepted()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 234
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    .line 235
    .local v0, "flag":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isServiceStart()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;->bindServiceSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;->isWindowShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onResume()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->register()V

    .line 249
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;->onResume()V

    .line 250
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->maybeCreateListenerService(Z)V

    .line 251
    return-void
.end method

.method private onStop()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/16 v1, 0xb

    .line 254
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    :cond_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->unRegister()V

    .line 261
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;->onStop()V

    .line 262
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mServiceCtrl:Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->maybeCreateListenerService(Z)V

    .line 263
    return-void
.end method

.method private registerCallback()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mSensorMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mUpdateCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/SensorMonitor;->registerCallback(Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;)V

    .line 202
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mUpdateCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->registerCallback(Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mExceptionManager:Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mUpdateCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;->registerCallback(Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;)V

    .line 204
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mObserverManager:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mObserveCallback:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager$ObserveCallback;

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;->registerCallback(Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager$ObserveCallback;)V

    .line 205
    return-void
.end method

.method private setNeedTurnOffScreen(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->needTurnOffScreen:Z

    .line 172
    return-void
.end method


# virtual methods
.method public disableHapticFeedback()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->disableHapticFeedback(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    .line 219
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mExceptionManager:Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;

    invoke-virtual {v2, p1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExceptionManager;->forceExit(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-wide v0

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 226
    :sswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->isServiceStart()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->isKeyEventIntercepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x1b -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public needRotationScreen()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->needRotationScreen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->registerCallback()V

    .line 196
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->onResume()V

    .line 197
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mObserverManager:Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/observe/ObserverManager;->observe()V

    .line 198
    return-void
.end method

.method public startSmartFaceService()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager;->mDelegate:Lcn/nubia/internal/policy/impl/smartface/viewloader/SmartFaceServiceDelegate;

    .line 192
    return-void
.end method
