.class public Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/ISettingListener;


# static fields
.field private static final ACTION_SCREEN_SAVER_SHOW:Ljava/lang/String; = "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isScreenSaverShow:Z

.field private mContext:Landroid/content/Context;

.field mDbStatus:Z

.field private mGestureListener:Lnubia/gesture/touch/GestureListener;

.field private mGestureMode:I

.field private mHandler:Landroid/os/Handler;

.field private mMultiFingerMove:Z

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field private mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

.field private pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V
    .locals 3
    .param p1, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v1, "TouchGestureFuncsCtrl"

    iput-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->TAG:Ljava/lang/String;

    .line 190
    new-instance v1, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$3;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 221
    new-instance v1, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$4;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 61
    iput-object p2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.policy.impl.ACTION_SCREEN_SAVER_SHOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mScreenSaverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->isScreenSaverShow:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->isScreenSaverShow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->takeSnot()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->doPalmCoverLockScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lnubia/gesture/touch/GestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)Lcom/android/internal/policy/impl/PhoneWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    return-object v0
.end method

.method private doPalmCoverLockScreen()V
    .locals 6

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "isValid":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 206
    .local v2, "telephonyManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    const-string v3, "TouchGestureFuncsCtrl"

    const-string v4, "palm error because phone"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "telephonyManager":Landroid/telecom/TelecomManager;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v2    # "telephonyManager":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x1

    .line 215
    .end local v2    # "telephonyManager":Landroid/telecom/TelecomManager;
    :goto_1
    if-eqz v1, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "TouchGestureFuncsCtrl"

    const-string v4, "getPhoneInterface() error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private takeSnot()V
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    return-void
.end method


# virtual methods
.method public disableTouchGesture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 178
    iput-object v2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0}, Lnubia/gesture/touch/GestureManager;->unDetect(Lnubia/gesture/touch/GestureListener;)V

    .line 182
    iput-object v2, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 184
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-nez v0, :cond_2

    .line 185
    const-string v0, "persist.sys.gesture.capture"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_2
    return-void
.end method

.method public enableTouchGesture()V
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$1;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl$2;-><init>(Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->pointEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Lnubia/gesture/touch/GestureArg;

    const/4 v1, 0x0

    new-instance v2, Lnubia/gesture/touch/PalmCoverArg;

    invoke-direct {v2}, Lnubia/gesture/touch/PalmCoverArg;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lnubia/gesture/touch/MultiPointArg;

    invoke-direct {v2}, Lnubia/gesture/touch/MultiPointArg;-><init>()V

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureListener:Lnubia/gesture/touch/GestureListener;

    invoke-static {v0, v1}, Lnubia/gesture/touch/GestureManager;->detect([Lnubia/gesture/touch/GestureArg;Lnubia/gesture/touch/GestureListener;)Lnubia/gesture/touch/ListenerClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnubia/gesture/touch/ListenerClient;->setContext(Landroid/content/Context;)V

    .line 169
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "persist.sys.gesture.capture"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method public registerSettingsObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 73
    const-string v0, "multi_point_up"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    const-string v0, "multi_point_right"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    const-string v0, "multi_point_left"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 82
    const-string v0, "palm_cover"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 85
    return-void
.end method

.method public updateSettings()V
    .locals 11

    .prologue
    const/4 v9, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 89
    iget-object v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 90
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v6, "multi_point_up"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 92
    .local v5, "upMove":I
    const-string v6, "palm_cover"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 94
    .local v2, "palmCover":I
    const-string v6, "multi_point_left"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 96
    .local v1, "leftMove":I
    const-string v6, "multi_point_right"

    invoke-static {v3, v6, v7, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 98
    .local v4, "rightMove":I
    const-string v6, "TouchGestureFuncsCtrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "upMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " leftMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rightMove = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    or-int v6, v5, v2

    or-int/2addr v6, v1

    or-int v0, v6, v4

    .line 100
    .local v0, "gestureMode":I
    if-eq v5, v8, :cond_0

    if-eq v1, v8, :cond_0

    if-ne v4, v8, :cond_4

    :cond_0
    move v6, v8

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mMultiFingerMove:Z

    .line 102
    iget-object v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mSwitchAppCtrl:Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;

    if-eq v1, v8, :cond_1

    if-ne v4, v8, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    invoke-virtual {v6, v7}, Lcom/android/internal/policy/impl/MultiFingerSwitchAppCtrl;->setEnable(Z)V

    .line 103
    iget v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eq v6, v0, :cond_3

    .line 104
    iput v0, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureMode:I

    .line 105
    iget v6, p0, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->mGestureMode:I

    if-eqz v6, :cond_5

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->enableTouchGesture()V

    .line 112
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v6, v7

    .line 100
    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/TouchGestureFuncsCtrl;->disableTouchGesture()V

    goto :goto_1
.end method
