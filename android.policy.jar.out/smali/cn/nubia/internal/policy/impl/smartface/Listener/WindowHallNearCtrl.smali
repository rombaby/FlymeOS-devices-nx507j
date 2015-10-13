.class public Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;
.super Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;
.source "WindowHallNearCtrl.java"


# static fields
.field private static final KEEP_SCREEN_ON_TIME:J = 0x3e8L


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private doCloseLeather()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->setNeedTurnOffScreen(Z)V

    .line 27
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->getPhoneState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->mReceiverMonitor:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->showSmartFaceMain()V

    .line 30
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->triggerPhoneWindowNear()V

    .line 33
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->hasGloveFeather()Z

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 35
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    .line 36
    return-void
.end method

.method private showSmartFaceMain()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->showSmartFaceScreen()V

    .line 40
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->goToSleep(J)V

    .line 41
    return-void
.end method


# virtual methods
.method public doOperationOnUI()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 22
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/WindowHallNearCtrl;->doCloseLeather()V

    .line 23
    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
