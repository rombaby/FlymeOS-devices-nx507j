.class public Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "EdgeGestureFuncsCtrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeGestureFuncsCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoubleSideCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

.field private mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

.field private mHoldAndHoldCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

.field private mHoldAndTapCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;

.field private mHoldCornerCtrl:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

.field private mLoopSideCtrl:Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mSingleSideCtrl:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 27
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/edgegesture/EdgeGestureManager;->getDefaultManager(Landroid/content/Context;)Lcn/nubia/edgegesture/EdgeGestureManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    .line 29
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mSingleSideCtrl:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    .line 30
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mDoubleSideCtrl:Lcn/nubia/internal/policy/impl/edge/DoubleSideCtrl;

    .line 31
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldAndHoldCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;

    .line 32
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldCornerCtrl:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .line 33
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mLoopSideCtrl:Lcn/nubia/internal/policy/impl/edge/LoopSideCtrl;

    .line 34
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->isNeedListenerHoldAndTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mHoldAndTapCtrl:Lcn/nubia/internal/policy/impl/edge/HoldAndTapCtrl;

    .line 37
    :cond_0
    return-void
.end method

.method private isNeedListenerHoldAndTap()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "hand_hold_and_click"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
