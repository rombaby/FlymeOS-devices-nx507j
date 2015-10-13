.class public Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;
.super Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;
.source "ExitHallNearCtrl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/smartface/Listener/HallNearCtrl;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public dealWhenOpenAndStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceScreen()V

    .line 23
    invoke-virtual {p0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;->setSmartFaceDisplayFlagWallper(Z)V

    .line 25
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;->trrigerPhoneWindowFar()V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;->hasGloveFeather()Z

    move-result v0

    invoke-static {v1, v0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealGLoveNodeForSmartFace(ZZ)V

    .line 27
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealScreenSlideNodeForSmartFace(ZZ)V

    .line 28
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/smartface/util/NubiaFeaturesUtils;->dealScreenNode(Z)V

    .line 29
    return-void
.end method

.method public doOperationOnUI()V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->setSmartFaceDisplayFlag(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ExitHallNearCtrl;->dealWhenOpenAndStop()V

    .line 19
    return-void
.end method

.method public getSmartFaceDisplayFlag()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
