.class public Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BreathingLightStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;,
        Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;
    }
.end annotation


# static fields
.field public static final CMD_REQUEST_APP_MSG:I = 0x69

.field public static final CMD_REQUEST_CHARGED:I = 0x6b

.field public static final CMD_REQUEST_CHARGING:I = 0x6a

.field public static final CMD_REQUEST_ENTER_SINGLE_UI_MODE:I = 0x6f

.field public static final CMD_REQUEST_EXIT_SINGLE_UI_MODE:I = 0x70

.field public static final CMD_REQUEST_KEYGUARD_DRAG_RELEASE:I = 0x65

.field public static final CMD_REQUEST_KEYGUARD_DRAG_START:I = 0x64

.field public static final CMD_REQUEST_KEY_EVENT:I = 0x66

.field public static final CMD_REQUEST_MISS_EVENT:I = 0x68

.field public static final CMD_REQUEST_MOTION_EVENT:I = 0x67

.field public static final CMD_REQUEST_PROXIMITY_SCREEN_OFF:I = 0x6d

.field public static final CMD_REQUEST_PROXIMITY_SCREEN_ON:I = 0x6e

.field public static final CMD_REQUEST_SCENE:I = 0xc8

.field public static final CMD_REQUEST_SET_BRIGHTNESS:I = 0x6c

.field public static final CMD_STATE_BOOT_COMPLETE:I = 0x4

.field public static final CMD_STATE_KEYGUARD_UNLOCK:I = 0x3

.field public static final CMD_STATE_SCREEN_OFF:I = 0x2

.field public static final CMD_STATE_SCREEN_ON:I = 0x1

.field private static final MSG_TURN_OFF_LIGHT:I = 0x3ea

.field private static final MSG_TURN_ON_LIGHT:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "BreathingLightStateMachine"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

.field private mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

.field private mInputEventThread:Landroid/os/HandlerThread;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

.field private final mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

.field private final mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

.field private final mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 52
    const-string v0, "BreathingLightStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    .line 46
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    .line 47
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    .line 48
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    .line 49
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    .line 53
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 56
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 59
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BreathLightCallJNI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    .line 60
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;-><init>(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    .line 63
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mDefaultState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 66
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 67
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnState;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->getCurrentStateName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleEnterSingleUiMode()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleExitSingleUiMode()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardUnlock()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardDragStart()V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyguardDragRelease()V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleKeyEvent()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMotionEvent()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleSetBrightnesss()V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)Lcn/nubia/server/breathinglight/BreathingLightService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOn()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleMissEvent()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCharging()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleCharged()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleScreenOff()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOff()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/server/breathinglight/BreathingLightStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .prologue
    .line 14
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->handleProximityScreenOn()V

    return-void
.end method

.method private getCurrentStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleBootCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    const-string v0, "BreathingLightStateMachine"

    const-string v1, "handleBootCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 182
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handleCharged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    const/16 v0, 0x10

    .line 234
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 235
    return-void
.end method

.method private handleCharging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    const/16 v0, 0x10

    .line 229
    .local v0, "lights":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 230
    return-void
.end method

.method private handleEnterSingleUiMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 300
    return-void
.end method

.method private handleExitSingleUiMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 305
    return-void
.end method

.method private handleKeyEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 249
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v0

    .line 252
    .local v0, "frequency":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    const/16 v1, 0x28

    .line 254
    .local v1, "lights":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4, v1, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    const/16 v1, 0x38

    .line 258
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    .end local v0    # "frequency":I
    .end local v1    # "lights":I
    :cond_0
    return-void
.end method

.method private handleKeyguardDragRelease()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 246
    return-void
.end method

.method private handleKeyguardDragStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 240
    return-void
.end method

.method private handleKeyguardUnlock()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isSingleUiModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 218
    return-void
.end method

.method private handleMissEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v3, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v0

    .line 222
    .local v0, "frequency":I
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v4, v0, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 225
    return-void
.end method

.method private handleMotionEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5, v5}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v0

    .line 269
    .local v0, "frequency":I
    const/16 v1, 0x28

    .line 272
    .local v1, "lights":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 273
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4, v1, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 275
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mInputEventHandler:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 280
    .end local v0    # "frequency":I
    .end local v1    # "lights":I
    :cond_0
    return-void
.end method

.method private handleProximityScreenOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2, v2, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 290
    return-void
.end method

.method private handleProximityScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 295
    return-void
.end method

.method private handleScreenOff()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "BreathingLightStateMachine"

    const-string v1, "handleScreenOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOffState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOffState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 210
    return-void
.end method

.method private handleScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    const-string v0, "BreathingLightStateMachine"

    const-string v1, "handleScreenOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isSingleUiModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnLockedState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnLockedState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 205
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mSCreenOnNormalState:Lcn/nubia/server/breathinglight/BreathingLightStateMachine$SCreenOnNormalState;

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method private handleSetBrightnesss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 285
    return-void
.end method
