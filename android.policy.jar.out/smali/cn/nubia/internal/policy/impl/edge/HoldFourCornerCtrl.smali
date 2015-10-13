.class public Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;
.super Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;
.source "HoldFourCornerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;,
        Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HoldCornerCtrl"


# instance fields
.field private final CORNER_SWITCH_OFF:I

.field private final CORNER_SWITCH_ON:I

.field private final ROTATION_0:I

.field private final ROTATION_180:I

.field private final ROTATION_270:I

.field private final ROTATION_90:I

.field private mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

.field private mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

.field private mOrientationThread:Landroid/os/HandlerThread;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p3, "edgeGestureManager"    # Lcn/nubia/edgegesture/EdgeGestureManager;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/internal/policy/impl/edge/EdgeGestureBaseCtrl;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcn/nubia/edgegesture/EdgeGestureManager;)V

    .line 25
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->CORNER_SWITCH_OFF:I

    .line 26
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->CORNER_SWITCH_ON:I

    .line 32
    iput v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->ROTATION_0:I

    .line 33
    iput v3, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->ROTATION_90:I

    .line 34
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->ROTATION_180:I

    .line 35
    const/4 v1, 0x3

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->ROTATION_270:I

    .line 159
    new-instance v1, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;

    invoke-direct {v1, p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->initOrientationListener()V

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mEdgeGestureManager:Lcn/nubia/edgegesture/EdgeGestureManager;

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2, p0}, Lcn/nubia/edgegesture/EdgeGestureManager;->detect([Ljava/lang/Integer;Lcn/nubia/edgegesture/EdgeGestureListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    return-object v0
.end method

.method private doHoldCornerGesture()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->getProposedRotation()I

    move-result v0

    .line 101
    .local v0, "orientation":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->showHoldCornerGestureGuideIfNeed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->luncherCamera()V

    .line 106
    :cond_1
    return-void
.end method

.method private getGestureSwitchState()I
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "nubia_edge_hold_four_corner"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private initOrientationListener()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoldCornerCtrl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    .line 61
    new-instance v0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationHandler:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$OrientationHandler;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;-><init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    .line 64
    return-void
.end method

.method private isCameraApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, "com.android.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private luncherCamera()V
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isCameraApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    const v5, 0x304000e

    const v6, 0x304000f

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 120
    .local v3, "opts":Landroid/app/ActivityOptions;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const v4, 0x10304000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const-string v4, "com.android.camera"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :try_start_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "opts":Landroid/app/ActivityOptions;
    :cond_0
    :goto_0
    return-void

    .line 129
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "opts":Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 132
    .local v1, "el":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private showHoldCornerGestureGuideIfNeed()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialogHelper;->showTipsDialog(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method canHandleEdgeGestureNow()Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->getCurrentRunAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "currentApp":Ljava/lang/String;
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->getGestureSwitchState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isSystemUIApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isSetupWizardApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->isCameraApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->disable()V

    .line 75
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->enable()V

    .line 78
    const/4 v1, 0x1

    goto :goto_0
.end method

.method handleEdgeGesture(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 90
    packed-switch p1, :pswitch_data_0

    .line 95
    const-string v0, "HoldCornerCtrl"

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

    .line 97
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->doHoldCornerGesture()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
