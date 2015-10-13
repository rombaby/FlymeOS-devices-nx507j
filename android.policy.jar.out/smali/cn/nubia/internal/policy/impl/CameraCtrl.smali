.class public Lcn/nubia/internal/policy/impl/CameraCtrl;
.super Ljava/lang/Object;
.source "CameraCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final ON_TICK_TIME_FOR_SEND_INTENT:J = 0x1f4L

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "CameraCtrl"


# instance fields
.field private final mCameraLongPress:Ljava/lang/Runnable;

.field private mCleckCount:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyCleckTime:J

.field private mKeyCode:I

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolumeUpCleckCount:I

.field private mVolumeUpCleckTime:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyguard_locked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcn/nubia/internal/policy/impl/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.camera"

    const-string v3, "com.android.camera.Camera"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcn/nubia/internal/policy/impl/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 41
    iput-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    iput v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 43
    const/16 v0, 0x19

    iput v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCode:I

    .line 44
    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    .line 45
    iput v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 46
    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    .line 49
    new-instance v0, Lcn/nubia/internal/policy/impl/CameraCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/CameraCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/CameraCtrl;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcn/nubia/internal/policy/impl/CameraCtrl$2;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/CameraCtrl$2;-><init>(Lcn/nubia/internal/policy/impl/CameraCtrl;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 64
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/CameraCtrl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/CameraCtrl;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/CameraCtrl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/CameraCtrl;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/CameraCtrl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/CameraCtrl;

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->startCamera()V

    return-void
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    .line 200
    :try_start_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 202
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const-string v2, "com.android.camera"

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "mActivityManager":Landroid/app/ActivityManager;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close Camera filed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCaptureCameraSettingKeyCode()I
    .locals 8

    .prologue
    .line 209
    const/16 v2, 0x19

    .line 211
    .local v2, "keyCode":I
    const/4 v1, 0x0

    .line 213
    .local v1, "flashlighgtContext":Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v6, "com.android.camera"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 215
    const-string v5, "capture_camera_keycode"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 217
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v5, "camera_keycode"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 218
    .local v4, "state":I
    move v2, v4

    .line 222
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "state":I
    :goto_0
    return v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CameraCtrl"

    const-string v6, "isCanEnterCamera"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserTime()J
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getVolumeUpUserTime()J
    .locals 4

    .prologue
    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 70
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "CameraCtrl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVibrator:Landroid/os/Vibrator;

    .line 73
    return-void
.end method

.method private isCameraRunning()Z
    .locals 7

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "flag":Z
    :try_start_0
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 294
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 295
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 296
    const-string v5, "com.android.camera"

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    const/4 v1, 0x1

    .line 303
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :goto_0
    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CameraCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check Camera filed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isCanEnterCamera()Z
    .locals 6

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 244
    .local v0, "bconfilc":Z
    :try_start_0
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "visitor"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 245
    .local v2, "state":I
    const-string v3, "CameraCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    if-nez v2, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 254
    .end local v2    # "state":I
    :goto_0
    return v0

    .line 249
    .restart local v2    # "state":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    .end local v2    # "state":I
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "CameraCtrl"

    const-string v4, "isCanEnterCamera failed!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_0
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v0

    goto :goto_0
.end method

.method private keyguardIsShowingTq()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardIsShowingTq()Z

    move-result v0

    goto :goto_0
.end method

.method private sendHomeIntentToCamera()V
    .locals 4

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.homeKey"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "in":Landroid/content/Intent;
    const-string v2, "com.android.camera"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "send home intent failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setScreenOn()V
    .locals 4

    .prologue
    .line 280
    const-string v2, "CameraCtrl"

    const-string v3, "setScreenOn"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 283
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v2, 0x10000006

    const-string v3, "CameraCtrl"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 286
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 287
    return-void
.end method

.method private startCamera()V
    .locals 6

    .prologue
    .line 258
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->closeCamera()V

    .line 260
    :try_start_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->setScreenOn()V

    .line 263
    :cond_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x2d

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 264
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->isKeyguardSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcn/nubia/internal/policy/impl/CameraCtrl;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 266
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const-string v2, "is_camera_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 271
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->isKeyguardSecure()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dismissKeyguardLw()V

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 264
    :cond_2
    sget-object v1, Lcn/nubia/internal/policy/impl/CameraCtrl;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "startCamera failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private startCaptureCamearService()V
    .locals 6

    .prologue
    .line 179
    :try_start_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 182
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.captureCamera.CaptureCameraService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "in":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "in":Landroid/content/Intent;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraCtrl"

    const-string v3, "send captrueCamera intent failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    .line 97
    .local v0, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    .line 99
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->keyguardIsShowingTq()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->isCanEnterCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->startCamera()V

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->sendHomeIntentToCamera()V

    .line 107
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 114
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    .line 115
    .local v1, "up":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_0

    .line 116
    if-eqz v0, :cond_5

    .line 117
    if-nez p3, :cond_0

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->isCanEnterCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 121
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    :cond_0
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget v3, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCode:I

    if-ne v2, v3, :cond_1

    .line 130
    if-eqz v0, :cond_1

    .line 131
    iget v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 132
    iget v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    .line 146
    :cond_1
    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x18

    if-ne v2, v3, :cond_2

    .line 147
    if-eqz v0, :cond_2

    .line 148
    iget v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 149
    iget v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    .line 163
    :cond_2
    :goto_4
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 113
    .end local v0    # "down":Z
    .end local v1    # "up":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    .restart local v0    # "down":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 125
    .restart local v1    # "up":Z
    :cond_5
    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCameraLongPress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 134
    :cond_6
    iget v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->getUserTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 136
    const-string v2, "CameraCtrl"

    const-string v3, "CameraCtrl send captureCamera intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->startCaptureCamearService()V

    .line 138
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 139
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    goto :goto_3

    .line 141
    :cond_7
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mCleckCount:I

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mKeyCleckTime:J

    goto :goto_3

    .line 151
    :cond_8
    iget v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->getVolumeUpUserTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_9

    .line 153
    const-string v2, "CameraCtrl"

    const-string v3, "CameraCtrl send captureCamera intent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/CameraCtrl;->startCaptureCamearService()V

    .line 155
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_4

    .line 158
    :cond_9
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckCount:I

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/internal/policy/impl/CameraCtrl;->mVolumeUpCleckTime:J

    goto :goto_4
.end method
