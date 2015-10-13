.class public Lcn/nubia/server/breathinglight/BreathingLightService;
.super Lcn/nubia/server/NubiaSystemService;
.source "BreathingLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;,
        Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;
    }
.end annotation


# static fields
.field public static final COLOR_BLUE:I = 0x3

.field public static final COLOR_GREEN:I = 0x2

.field public static final COLOR_RED:I = 0x1

.field public static final KEYGUARD_DRAG_RELEASE:I = 0x2

.field public static final KEYGUARD_DRAG_START:I = 0x1

.field public static final LEFT:I = 0x20

.field public static final LIGHT_ALWAYS_OFF:I = 0x2

.field public static final LIGHT_ALWAYS_ON:I = 0x1

.field public static final LIGHT_BLINK:I = 0x3

.field public static final LIGHT_BLINK_ONCE:I = 0x6

.field public static final LIGHT_IC_OFF:I = 0x0

.field public static final LIGHT_RESERVE:I = 0x7

.field public static final LIGHT_TURN_OFF:I = 0x5

.field public static final LIGHT_TURN_ON:I = 0x4

.field public static final MESSAGE_SCREEN_OFF:I = 0x64

.field public static final MIDDLE:I = 0x10

.field public static final MSG_SET_LIGHT:I = 0x64

.field public static final PRESS_KEY:I = 0x3

.field public static final PROXIMITY_SCREEN_OFF:I = 0x6

.field public static final PROXIMITY_SCREEN_ON:I = 0x7

.field public static final RIGHT:I = 0x8

.field public static final SCENE_KEYGUARD_LOCKED:I = 0x2

.field public static final SCENE_SCREEN_IDLE:I = 0x3

.field public static final SCENE_SCREEN_OFF:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "nubia.breathinglight"

.field public static final SHUTDOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BreathingLightService"

.field public static final TIME_0:I = 0x0

.field public static final TIME_1:I = 0x1

.field public static final TIME_2:I = 0x2

.field public static final TIME_3:I = 0x3

.field public static final TIME_4:I = 0x4

.field public static final TIME_5:I = 0x5

.field public static final TIME_6:I = 0x6

.field public static final TIME_7:I = 0x7

.field public static final TOUCH_SCREEN:I = 0x4


# instance fields
.field private bootCompleted:Z

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

.field private mCallJNIThread:Landroid/os/HandlerThread;

.field private mContext:Landroid/content/Context;

.field private mLastFrequency:I

.field private mLastLights:I

.field private mLastMode:I

.field private mMainHandler:Landroid/os/Handler;

.field private mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

.field private mNotifition:Landroid/app/INotificationManager;

.field private mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

.field private mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

.field private mSystemReceiver:Landroid/content/BroadcastReceiver;

.field private shutdown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted:Z

    .line 37
    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->shutdown:Z

    .line 181
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightService$1;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMainHandler:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightService$2;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BreathLightCallJNI"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIThread:Landroid/os/HandlerThread;

    .line 99
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/MissEventObserver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->checkBatteryState()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightStateMachine;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightService;)Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bootCompleted()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted:Z

    .line 150
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->handleBootCompeleted()V

    .line 152
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/MissEventObserver;->handleBootCompleted()V

    .line 153
    return-void
.end method

.method private checkBatteryState()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 168
    const-string v2, "BreathingLightService"

    const-string v3, "checkBatteryState entry!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isChargeSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    invoke-virtual {v2}, Lcn/nubia/server/breathinglight/MissEventObserver;->isUseingMiddleLight()Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result v1

    .line 171
    .local v1, "plugged":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    .line 173
    .local v0, "level":I
    if-lez v1, :cond_1

    if-ge v0, v4, :cond_1

    .line 174
    const/16 v2, 0x6a

    invoke-virtual {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 179
    .end local v0    # "level":I
    .end local v1    # "plugged":I
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v0    # "level":I
    .restart local v1    # "plugged":I
    :cond_1
    if-lez v1, :cond_0

    if-lt v0, v4, :cond_0

    .line 176
    const/16 v2, 0x6b

    invoke-virtual {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0
.end method

.method private setLightWhenShutdown()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    iput-boolean v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->shutdown:Z

    .line 127
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 128
    const/16 v0, 0x10

    const/4 v1, 0x4

    invoke-virtual {p0, v2, v3, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightFrequency(III)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightService;->setBreathingLightState(IIII)V

    .line 129
    return-void
.end method


# virtual methods
.method native getCurrentModeJNI()I
.end method

.method public getLightBrightness()I
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getMinGradeJNI()I

    move-result v0

    return v0
.end method

.method public getLightFrequency(III)I
    .locals 2
    .param p1, "fadeTime"    # I
    .param p2, "fullOnTime"    # I
    .param p3, "fullOffTime"    # I

    .prologue
    const/4 v1, 0x7

    .line 250
    if-gez p1, :cond_3

    .line 251
    const/4 p1, 0x0

    .line 257
    :cond_0
    :goto_0
    if-gez p2, :cond_4

    .line 258
    const/4 p2, 0x0

    .line 264
    :cond_1
    :goto_1
    if-gez p3, :cond_5

    .line 265
    const/4 p3, 0x0

    .line 270
    :cond_2
    :goto_2
    shl-int/lit8 v0, p1, 0x8

    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0

    .line 252
    :cond_3
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 253
    const/4 p1, 0x5

    goto :goto_0

    .line 259
    :cond_4
    if-le p2, v1, :cond_1

    .line 260
    const/4 p2, 0x7

    goto :goto_1

    .line 266
    :cond_5
    if-le p3, v1, :cond_2

    .line 267
    const/4 p3, 0x7

    goto :goto_2
.end method

.method native getMinGradeJNI()I
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 347
    const-string v0, "nubia.breathinglight"

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    const-string v0, "nubia.breathinglight"

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 105
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNotifition:Landroid/app/INotificationManager;

    .line 106
    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSystemReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    new-instance v1, Lcn/nubia/server/breathinglight/BreathingLightSettings;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .line 117
    new-instance v1, Lcn/nubia/server/breathinglight/MissEventObserver;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mNotifition:Landroid/app/INotificationManager;

    invoke-direct {v1, v2, p0, v3, v4}, Lcn/nubia/server/breathinglight/MissEventObserver;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/app/INotificationManager;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mMissEventObserver:Lcn/nubia/server/breathinglight/MissEventObserver;

    .line 119
    new-instance v1, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;-><init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V

    iput-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    .line 120
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->start()V

    .line 121
    return-void
.end method

.method public isBootCompleted()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->bootCompleted:Z

    return v0
.end method

.method public isBreathingLightTouchEnable()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isBreathingLightTouchEnable()Z

    move-result v0

    return v0
.end method

.method public isChargeSwitchEnable()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isChargeSwitchEnable()Z

    move-result v0

    return v0
.end method

.method public isSingleUiModeEnable()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isSingleUiModeEnable()Z

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 338
    const-string v0, "BreathingLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->init()V

    .line 333
    const-string v0, "nubia.breathinglight"

    new-instance v1, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightService$BinderService;-><init>(Lcn/nubia/server/breathinglight/BreathingLightService;Lcn/nubia/server/breathinglight/BreathingLightService$1;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 334
    return-void
.end method

.method public requestBreathingLightExtInternal(IIIII)V
    .locals 0
    .param p1, "light"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "scene"    # I
    .param p5, "color"    # I

    .prologue
    .line 400
    return-void
.end method

.method public requestBreathingLightInternal(I)V
    .locals 2
    .param p1, "known"    # I

    .prologue
    .line 356
    iget-boolean v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->shutdown:Z

    if-eqz v0, :cond_1

    .line 357
    const-string v0, "BreathingLightService"

    const-string v1, "reject all request when shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mSettings:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->isSingleUiModeEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    .line 363
    const-string v0, "BreathingLightService"

    const-string v1, "reject all request when single ui mode except shutdown!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 394
    const-string v0, "BreathingLightService"

    const-string v1, "Unknown request type!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 372
    :pswitch_1
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 375
    :pswitch_2
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 380
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->isBreathingLightTouchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 385
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightWhenShutdown()V

    goto :goto_0

    .line 388
    :pswitch_5
    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 391
    :pswitch_6
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public sendRequestToStateMachine(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(I)V

    .line 134
    return-void
.end method

.method public sendRequestToStateMachine(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v1, p1}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 138
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 139
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 140
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mStateMachine:Lcn/nubia/server/breathinglight/BreathingLightStateMachine;

    invoke-virtual {v1, v0}, Lcn/nubia/server/breathinglight/BreathingLightStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 142
    return-void
.end method

.method native setBreathingLightJNI(IIII)V
.end method

.method public setBreathingLightState(IIII)V
    .locals 4
    .param p1, "lights"    # I
    .param p2, "mode"    # I
    .param p3, "frequency"    # I
    .param p4, "color"    # I

    .prologue
    .line 275
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    invoke-virtual {v2}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->isPocessing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastMode:I

    if-ne v2, p2, :cond_0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastLights:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastFrequency:I

    if-ne v2, p3, :cond_0

    .line 278
    const-string v2, "BreathingLightService"

    const-string v3, "setBreathingLightState: repeated process!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :goto_0
    return-void

    .line 282
    :cond_0
    iput p2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastMode:I

    .line 283
    iput p1, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastLights:I

    .line 284
    iput p3, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mLastFrequency:I

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "light"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const-string v2, "mode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    const-string v2, "frequency"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 290
    const-string v2, "color"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 294
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightService;->mCallJNIHandler:Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;

    invoke-virtual {v2, v1}, Lcn/nubia/server/breathinglight/BreathingLightService$CallJNIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setLightBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 240
    const-string v0, "BreathingLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightBrightness: brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setMinGradeJNI(I)V

    .line 242
    return-void
.end method

.method native setMinGradeJNI(I)V
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 353
    return-void
.end method
