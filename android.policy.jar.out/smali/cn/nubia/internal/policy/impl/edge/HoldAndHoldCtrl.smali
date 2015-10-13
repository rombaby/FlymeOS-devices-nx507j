.class public Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "HoldAndHoldCtrl.java"


# static fields
.field private static final KEYGUARD_SETTING_FLAG:Ljava/lang/String; = "nubia_edge_keyguard_setting_flag"

.field private static final NUBIA_OVERLAY_DISPLAY_MODE_EXTERNAL:Ljava/lang/String; = "single_ui_mode_external"

.field private static final SU_MODE_EXTERNAL_INVALID:I = 0x64

.field private static final SU_MODE_EXTERNAL_LEFT_A:I = 0xa

.field private static final SU_MODE_EXTERNAL_LEFT_B:I = 0xb

.field private static final SU_MODE_EXTERNAL_RIGHT_A:I = 0x0

.field private static final SU_MODE_EXTERNAL_RIGHT_B:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HoldAndHoldCtrl"


# instance fields
.field private final HOLD_AND_HOLD_SWITCH_OFF:I

.field private final HOLD_AND_HOLD_SWITCH_SCREENSHOT:I

.field private final HOLD_AND_HOLD_SWITCH_SINGLEUI:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 14
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->HOLD_AND_HOLD_SWITCH_OFF:I

    .line 15
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->HOLD_AND_HOLD_SWITCH_SCREENSHOT:I

    .line 16
    iput v5, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->HOLD_AND_HOLD_SWITCH_SINGLEUI:I

    .line 23
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeGestureListener;)V

    .line 28
    return-void
.end method

.method private doHoldAndHold()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getPinchGestureSwitch()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->showHoldAndHoldGuideIfNeed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->takeScreenshot()V

    .line 69
    :cond_0
    return-void
.end method

.method private doSingleHandHold(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getPinchGestureSwitch()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->showHoldAndHoldGuideIfNeed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->setSingleMode(I)V

    .line 78
    :cond_0
    return-void
.end method

.method private getPinchGestureSwitch()I
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "nubia_edge_hold_hold"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isKeyguardGestureSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 43
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "nubia_edge_keyguard_setting_flag"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "flag":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private setSingleMode(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 103
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 104
    const-string v0, "HoldAndHoldCtrl"

    const-string v1, "setSingleMode left hand!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->startLeftSingleUI()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 107
    const-string v0, "HoldAndHoldCtrl"

    const-string v1, "setSingleMode right hand!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->startRightSingleUI()V

    goto :goto_0
.end method

.method private showHoldAndHoldGuideIfNeed()Z
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method

.method private takeScreenshot()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "currentApp":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->getPinchGestureSwitch()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->isKeyguardGestureSetting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleEdgeGesture(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_0

    .line 59
    :pswitch_0
    const-string v0, "HoldAndHoldCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not listen this type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    return-void

    .line 52
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->doHoldAndHold()V

    goto :goto_0

    .line 56
    :pswitch_2
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->doSingleHandHold(I)V

    goto :goto_0

    .line 50
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public startLeftSingleUI()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 134
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "single_ui_mode_external"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "mode":I
    if-ne v1, v4, :cond_0

    .line 138
    const-string v2, "single_ui_mode_external"

    const/16 v3, 0xb

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v2, "single_ui_mode_external"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public startRightSingleUI()V
    .locals 4

    .prologue
    .line 121
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldAndHoldCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 122
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v2, "single_ui_mode_external"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, "mode":I
    if-nez v1, :cond_0

    .line 125
    const-string v2, "single_ui_mode_external"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v2, "single_ui_mode_external"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
