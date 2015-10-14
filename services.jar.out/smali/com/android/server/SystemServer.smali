.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field public static final SMARTSHOW_MANAGER_SERVICE:Ljava/lang/String; = "com.powermo.smartshow.frameworks.SmartShowManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field SmartShowManagerInit:Ljava/lang/reflect/Method;

.field SmartShowManagerService:Ljava/lang/Class;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field mSmartShowManager:Ljava/lang/Object;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    .line 133
    iput-object v0, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 134
    iput-object v0, p0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    .line 208
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 336
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 195
    const-string v1, "sys.android.reboot"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "androidRebootFlag":Ljava/lang/String;
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys.android.reboot flag  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "SystemServer"

    const-string v2, "Android SystemServer reboot"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v1, "SystemServer"

    const-string v2, "About to start catchreboot service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v1, "ctl.start"

    const-string v2, "catchreboot"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    new-instance v1, Lcom/android/server/SystemServer;

    invoke-direct {v1}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v1}, Lcom/android/server/SystemServer;->run()V

    .line 204
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 318
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 321
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 324
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 325
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 332
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 327
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    return-void
.end method

.method private run()V
    .locals 8

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 217
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 222
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 232
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 237
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 238
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 247
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 251
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 255
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 259
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 262
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 265
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 268
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 271
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 276
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 279
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 282
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 283
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 288
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtFirst()V

    .line 292
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 294
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startNubiaServicesAtLast()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 309
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :catch_0
    move-exception v6

    .line 297
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 351
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/Installer;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 354
    sget-boolean v3, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v3, :cond_0

    .line 355
    const-string v3, "SystemServer"

    const-string v6, "Load SmartShowManager"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v6, "com.powermo.smartshow.frameworks.SmartShowManagerService"

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    .line 358
    iget-object v3, p0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 359
    .local v1, "ctor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 360
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    .line 361
    const-string v6, "SmartShowManager"

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 372
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 378
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 382
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 386
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iput-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 389
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x64

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 392
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "cryptState":Ljava/lang/String;
    const-string v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 394
    const-string v3, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 402
    :cond_1
    :goto_1
    const-string v3, "SystemServer"

    const-string v6, "Package Manager"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v3, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v6, v7, v3, v4}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 405
    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 406
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 408
    const-string v3, "SystemServer"

    const-string v4, "User Service"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v3, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 412
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 415
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 418
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->loadConfig()V

    .line 420
    return-void

    .line 362
    .end local v0    # "cryptState":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 363
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "System"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load SmartShowManager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    goto/16 :goto_0

    .line 396
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_2
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    const-string v3, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_1

    :cond_3
    move v3, v5

    .line 403
    goto :goto_2
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 430
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 433
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 434
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 438
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 439
    return-void
.end method

.method static final startDefaultTheme(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1351
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.thememanager"

    const-string v3, "cn.nubia.thememanager.DefaultThemeService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1353
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1354
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1364
    const/4 v4, 0x0

    .line 1365
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1366
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1369
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1372
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1373
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1375
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1377
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1378
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1379
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1388
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1381
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1382
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1385
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1386
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startNubiaServicesAtFirst()V
    .locals 2

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServicesAtFirst(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V

    .line 1392
    return-void
.end method

.method private startNubiaServicesAtLast()V
    .locals 2

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcn/nubia/server/NubiaServer;->startServicesAtLast(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V

    .line 1396
    return-void
.end method

.method private startOtherServices()V
    .locals 113

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 447
    .local v4, "context":Landroid/content/Context;
    const/16 v33, 0x0

    .line 448
    .local v33, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v49, 0x0

    .line 449
    .local v49, "contentService":Lcom/android/server/content/ContentService;
    const/16 v103, 0x0

    .line 450
    .local v103, "vibrator":Lcom/android/server/VibratorService;
    const/16 v35, 0x0

    .line 451
    .local v35, "alarm":Landroid/app/IAlarmManager;
    const/16 v83, 0x0

    .line 452
    .local v83, "mountService":Lcom/android/server/MountService;
    const/4 v8, 0x0

    .line 453
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 454
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v85, 0x0

    .line 455
    .local v85, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 456
    .local v45, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v86, 0x0

    .line 457
    .local v86, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v95, 0x0

    .line 458
    .local v95, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v112, 0x0

    .line 459
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v40, 0x0

    .line 460
    .local v40, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v102, 0x0

    .line 461
    .local v102, "usb":Lcom/android/server/usb/UsbService;
    const/16 v93, 0x0

    .line 462
    .local v93, "serial":Lcom/android/server/SerialService;
    const/16 v89, 0x0

    .line 463
    .local v89, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v42, 0x0

    .line 464
    .local v42, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v71, 0x0

    .line 465
    .local v71, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v98, 0x0

    .line 466
    .local v98, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v47, 0x0

    .line 467
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v38, 0x0

    .line 468
    .local v38, "audioService":Landroid/media/AudioService;
    const/16 v82, 0x0

    .line 471
    .local v82, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v67, 0x0

    .line 474
    .local v67, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 475
    .local v63, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 476
    .local v60, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 477
    .local v58, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 478
    .local v65, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 479
    .local v59, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 480
    .local v64, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 481
    .local v62, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 482
    .local v61, "disableNetwork":Z
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    .line 483
    .local v73, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v53

    .line 485
    .local v53, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 488
    .local v57, "disableAtlas":Z
    :try_start_0
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 491
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 494
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v99, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v99

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_41

    .line 496
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v99, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v5, "telephony.registry"

    move-object/from16 v0, v99

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 498
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 501
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 506
    :try_start_2
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v34, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 508
    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v5, "account"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_47
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_42

    move-object/from16 v33, v34

    .line 513
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v49

    .line 517
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 520
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v104, Lcom/android/server/VibratorService;

    move-object/from16 v0, v104

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 522
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .local v104, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v5, "vibrator"

    move-object/from16 v0, v104

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 524
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v48, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_43

    .line 526
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v5, "consumer_ir"

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 529
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v35

    .line 532
    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v108

    .line 534
    .local v108, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v108

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 536
    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v72, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_44

    .line 539
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v72, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_29

    const/4 v5, 0x1

    move v6, v5

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v5, :cond_2a

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v72

    invoke-static {v4, v0, v6, v5, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v112

    .line 543
    const-string v5, "window"

    move-object/from16 v0, v112

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 544
    const-string v5, "input"

    move-object/from16 v0, v72

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 547
    sget-boolean v5, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    if-nez v5, :cond_0

    .line 549
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->SmartShowManagerService:Ljava/lang/Class;

    const-string v6, "init"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Lcom/android/server/am/ActivityManagerService;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-class v11, Lcom/android/server/wm/WindowManagerService;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-class v11, Lcom/android/server/display/DisplayManagerService;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->SmartShowManagerInit:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSmartShowManager:Ljava/lang/Object;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v112, v9, v10

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 558
    :cond_0
    :goto_4
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v5, v113

    invoke-static {v0, v5}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeMoveWindowService(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v112

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 560
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v72

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    invoke-virtual/range {v72 .. v72}, Lcom/android/server/input/InputManagerService;->start()V

    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "SystemServer"

    const-string v6, "Edge Pointer Event Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v68, Lcn/nubia/server/edge/EdgePointerEventService;

    move-object/from16 v0, v68

    move-object/from16 v1, v112

    move-object/from16 v2, v72

    invoke-direct {v0, v4, v1, v2}, Lcn/nubia/server/edge/EdgePointerEventService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    .line 567
    .end local v67    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .local v68, "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :try_start_a
    const-string v5, "nubia.edge.touch"

    move-object/from16 v0, v68

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_45

    move-object/from16 v67, v68

    .line 572
    .end local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v67    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    :cond_1
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 577
    if-eqz v73, :cond_2b

    .line 578
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    :goto_5
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .line 596
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v108    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    :goto_6
    const/16 v96, 0x0

    .line 597
    .local v96, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v91, 0x0

    .line 598
    .local v91, "notification":Landroid/app/INotificationManager;
    const/16 v69, 0x0

    .line 599
    .local v69, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v106, 0x0

    .line 600
    .local v106, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v75, 0x0

    .line 601
    .local v75, "location":Lcom/android/server/LocationManagerService;
    const/16 v50, 0x0

    .line 602
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v100, 0x0

    .line 603
    .local v100, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v77, 0x0

    .line 604
    .local v77, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v36, 0x0

    .line 605
    .local v36, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v79, 0x0

    .line 608
    .local v79, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 612
    :try_start_c
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v70, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v70

    move-object/from16 v1, v112

    invoke-direct {v0, v4, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    .line 614
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v70, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string v5, "input_method"

    move-object/from16 v0, v70

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_40

    move-object/from16 v69, v70

    .line 620
    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_e
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    .line 630
    :cond_2
    :goto_8
    :try_start_f
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    .line 635
    :goto_9
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    .line 636
    if-nez v63, :cond_3

    const-string v5, "0"

    const-string v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 643
    :try_start_10
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v84, Lcom/android/server/MountService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7

    .line 645
    .end local v83    # "mountService":Lcom/android/server/MountService;
    .local v84, "mountService":Lcom/android/server/MountService;
    :try_start_11
    const-string v5, "mount"

    move-object/from16 v0, v84

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3f

    move-object/from16 v83, v84

    .line 653
    .end local v84    # "mountService":Lcom/android/server/MountService;
    .restart local v83    # "mountService":Lcom/android/server/MountService;
    :cond_3
    :goto_a
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8

    .line 666
    :goto_b
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v5, v6, v9, v10, v11}, Landroid/app/IActivityManager;->showAppOptimizeMessage(Ljava/lang/CharSequence;IIZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3e

    .line 674
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_32

    .line 675
    if-nez v62, :cond_5

    .line 677
    :try_start_14
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v78, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v78

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_9

    .line 679
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_15
    const-string v5, "lock_settings"

    move-object/from16 v0, v78

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3d

    move-object/from16 v77, v78

    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_5
    if-nez v64, :cond_6

    :try_start_16
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v97, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v97

    move-object/from16 v1, v112

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a

    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v97, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_17
    const-string v5, "statusbar"

    move-object/from16 v0, v97

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3c

    move-object/from16 v96, v97

    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v62, :cond_7

    :try_start_18
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b

    :cond_7
    :goto_f
    if-nez v61, :cond_8

    :try_start_19
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_c

    :cond_8
    :goto_10
    if-nez v62, :cond_9

    :try_start_1a
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v101, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v101

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_d

    .end local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v101, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v5, "textservices"

    move-object/from16 v0, v101

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3b

    move-object/from16 v100, v101

    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v61, :cond_31

    :try_start_1c
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v87, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_e

    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1d
    const-string v5, "network_score"

    move-object/from16 v0, v87

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3a

    move-object/from16 v86, v87

    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v88, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v88

    move-object/from16 v1, v35

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_f

    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v88, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1f
    const-string v5, "netstats"

    move-object/from16 v0, v88

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_39

    move-object/from16 v7, v88

    .end local v88    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_20
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10

    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_21
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_38

    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymePppoeAndSambaService(Lcom/android/server/SystemServer;)V

    :try_start_22
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_11

    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_23
    const-string v5, "connectivity"

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_37

    move-object/from16 v45, v46

    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_24
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v95

    const-string v5, "servicediscovery"

    move-object/from16 v0, v95

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_12

    :goto_16
    :try_start_25
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_13

    :goto_17
    if-nez v62, :cond_b

    :try_start_26
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    :cond_b
    :goto_18
    if-eqz v83, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_c

    invoke-virtual/range {v83 .. v83}, Lcom/android/server/MountService;->waitForAsecScan()V

    :cond_c
    if-eqz v33, :cond_d

    :try_start_27
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_15

    :cond_d
    :goto_19
    if-eqz v49, :cond_e

    :try_start_28
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_16

    :cond_e
    :goto_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v91

    move-object/from16 v0, v91

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v59, :cond_f

    :try_start_29
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v76, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_17

    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .local v76, "location":Lcom/android/server/LocationManagerService;
    :try_start_2a
    const-string v5, "location"

    move-object/from16 v0, v76

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_36

    move-object/from16 v75, v76

    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    :goto_1b
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v51, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_18

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v51, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2c
    const-string v5, "country_detector"

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_35

    move-object/from16 v50, v51

    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_f
    :goto_1c
    if-nez v62, :cond_10

    :try_start_2d
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_19

    :cond_10
    :goto_1d
    :try_start_2e
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1a

    :goto_1e
    if-nez v62, :cond_11

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_11

    :try_start_2f
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v107, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v107

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1b

    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v107, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_30
    const-string v5, "wallpaper"

    move-object/from16 v0, v107

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_34

    move-object/from16 v106, v107

    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_11
    :goto_1f
    if-nez v60, :cond_12

    const-string v5, "0"

    const-string v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    :try_start_31
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v39, Landroid/media/AudioService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1c

    .end local v38    # "audioService":Landroid/media/AudioService;
    .local v39, "audioService":Landroid/media/AudioService;
    :try_start_32
    const-string v5, "audio"

    move-object/from16 v0, v39

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_33

    move-object/from16 v38, v39

    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v38    # "audioService":Landroid/media/AudioService;
    :cond_12
    :goto_20
    if-nez v62, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_13
    if-nez v60, :cond_14

    :try_start_33
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v71

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    :cond_14
    :goto_21
    if-nez v62, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_16
    :try_start_34
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v94, Lcom/android/server/SerialService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1e

    .end local v93    # "serial":Lcom/android/server/SerialService;
    .local v94, "serial":Lcom/android/server/SerialService;
    :try_start_35
    const-string v5, "serial"

    move-object/from16 v0, v94

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_32

    move-object/from16 v93, v94

    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v93    # "serial":Lcom/android/server/SerialService;
    :cond_17
    :goto_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v62, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_1a
    :try_start_36
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    :goto_23
    :try_start_37
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    :goto_24
    if-nez v61, :cond_1b

    :try_start_38
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v90, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .end local v89    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v89, v90

    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v89    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1b
    :goto_25
    if-nez v60, :cond_1c

    :try_start_39
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v43, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3a
    const-string v5, "commontime_management"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_31

    move-object/from16 v42, v43

    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1c
    :goto_26
    if-nez v61, :cond_1d

    :try_start_3b
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    :cond_1d
    :goto_27
    if-nez v62, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_1e
    if-nez v62, :cond_1f

    if-nez v57, :cond_1f
    
    goto :goto_flyme_0

    :try_start_3c
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v37, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v37, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3d
    const-string v5, "assetatlas"

    move-object/from16 v0, v37

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_30

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1f
    :goto_28
    :goto_flyme_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_22
    if-nez v62, :cond_23

    :try_start_3e
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v80, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_25

    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3f
    const-string v5, "media_router"

    move-object/from16 v0, v80

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2f

    move-object/from16 v79, v80

    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :try_start_40
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    :cond_23
    :goto_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v74

    .local v74, "isWipowerEnabled":Z
    if-eqz v74, :cond_2f

    :try_start_41
    const-string v32, "wbc_service"

    .local v32, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v110, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v110

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v110, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v110

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v109

    .local v109, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v109

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    .local v52, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v111

    .local v111, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "wbc_service"

    check-cast v111, Landroid/os/IBinder;

    .end local v111    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v111

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .end local v32    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v109    # "wbcClass":Ljava/lang/Class;
    .end local v110    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2b
    if-eqz v53, :cond_24

    :try_start_42
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v55, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v55, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v54

    .local v54, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v52

    .restart local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v56

    .local v56, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "DigitalPen"

    check-cast v56, Landroid/os/IBinder;

    .end local v56    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v56

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .end local v52    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v54    # "digitalPenClass":Ljava/lang/Class;
    .end local v55    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    .end local v74    # "isWipowerEnabled":Z
    :cond_24
    :goto_2c
    if-nez v62, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_25
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v92

    .local v92, "safeMode":Z
    if-eqz v92, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v82

    .end local v82    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v82, Lcom/android/server/MmsServiceBroker;

    .restart local v82    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v5, v112

    move-object/from16 v6, v106

    invoke-static {v0, v5, v6}, Lcom/android/server/SystemServer$FlymeInjector;->startFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_43
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    :goto_2e
    if-eqz v77, :cond_26

    :try_start_44
    invoke-virtual/range {v77 .. v77}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    :cond_26
    :goto_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_45
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    :goto_30
    if-eqz v92, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_27
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .local v44, "config":Landroid/content/res/Configuration;
    new-instance v81, Landroid/util/DisplayMetrics;

    invoke-direct/range {v81 .. v81}, Landroid/util/DisplayMetrics;-><init>()V

    .local v81, "metrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v105

    check-cast v105, Landroid/view/WindowManager;

    .local v105, "w":Landroid/view/WindowManager;
    invoke-interface/range {v105 .. v105}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v81

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v44

    move-object/from16 v1, v81

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    :goto_31
    :try_start_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2d

    :goto_32
    :try_start_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v92

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2e

    :goto_33
    move-object/from16 v12, v83

    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v45

    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v86

    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v106

    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v69

    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v75

    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v50

    .local v23, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v24, v89

    .local v24, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v25, v42

    .local v25, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v26, v100

    .local v26, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v96

    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v27, v36

    .local v27, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v28, v71

    .local v28, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v29, v98

    .local v29, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v79

    .local v30, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v38

    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v31, v82

    .local v31, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$2;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v31}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    return-void

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v24    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v25    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v26    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v27    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v28    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v29    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v30    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v31    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v91    # "notification":Landroid/app/INotificationManager;
    .end local v92    # "safeMode":Z
    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v105    # "w":Landroid/view/WindowManager;
    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v66

    .local v66, "e":Ljava/lang/Throwable;
    :goto_34
    :try_start_49
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v66

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_0

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v66

    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v66, "e":Ljava/lang/RuntimeException;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_35
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v66

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .end local v66    # "e":Ljava/lang/RuntimeException;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "watchdog":Lcom/android/server/Watchdog;
    :cond_29
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_2

    :cond_2a
    const/4 v5, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v66

    .local v66, "e":Ljava/lang/Throwable;
    :try_start_4a
    const-string v5, "failed to init smartshow"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v66

    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_35

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2c
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2d

    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2d
    if-eqz v58, :cond_2e

    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2e
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v41, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_3

    .end local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v41, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_4b
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_46

    move-object/from16 v40, v41

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_5

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .end local v108    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v91    # "notification":Landroid/app/INotificationManager;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v66

    move-object/from16 v3, v85

    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v66

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v66    # "e":Ljava/lang/Throwable;
    .restart local v74    # "isWipowerEnabled":Z
    :catch_27
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v66    # "e":Ljava/lang/Throwable;
    :cond_2f
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :catch_28
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v66    # "e":Ljava/lang/Throwable;
    .end local v74    # "isWipowerEnabled":Z
    .restart local v92    # "safeMode":Z
    :cond_30
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2d

    :catch_29
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v66    # "e":Ljava/lang/Throwable;
    .restart local v44    # "config":Landroid/content/res/Configuration;
    .restart local v81    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v105    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v66    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v66

    .restart local v66    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v44    # "config":Landroid/content/res/Configuration;
    .end local v66    # "e":Ljava/lang/Throwable;
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v81    # "metrics":Landroid/util/DisplayMetrics;
    .end local v92    # "safeMode":Z
    .end local v105    # "w":Landroid/view/WindowManager;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_2f
    move-exception v66

    move-object/from16 v79, v80

    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_46

    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_30
    move-exception v66

    move-object/from16 v36, v37

    .end local v37    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_45

    .end local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_31
    move-exception v66

    move-object/from16 v42, v43

    .end local v43    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v42    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_44

    .end local v93    # "serial":Lcom/android/server/SerialService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    :catch_32
    move-exception v66

    move-object/from16 v93, v94

    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v93    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_43

    .end local v38    # "audioService":Landroid/media/AudioService;
    .restart local v39    # "audioService":Landroid/media/AudioService;
    :catch_33
    move-exception v66

    move-object/from16 v38, v39

    .end local v39    # "audioService":Landroid/media/AudioService;
    .restart local v38    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_42

    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_34
    move-exception v66

    move-object/from16 v106, v107

    .end local v107    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_41

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_35
    move-exception v66

    move-object/from16 v50, v51

    .end local v51    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_40

    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :catch_36
    move-exception v66

    move-object/from16 v75, v76

    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3f

    .end local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_37
    move-exception v66

    move-object/from16 v45, v46

    .end local v46    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v45    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3e

    :catch_38
    move-exception v66

    goto/16 :goto_3d

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_39
    move-exception v66

    move-object/from16 v7, v88

    .end local v88    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3c

    .end local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3a
    move-exception v66

    move-object/from16 v86, v87

    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v86    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3b

    .end local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3b
    move-exception v66

    move-object/from16 v100, v101

    .end local v101    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3a

    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_3c
    move-exception v66

    move-object/from16 v96, v97

    .end local v97    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_39

    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_3d
    move-exception v66

    move-object/from16 v77, v78

    .line 684
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_38

    :catch_3e
    move-exception v5

    goto/16 :goto_c

    .end local v83    # "mountService":Lcom/android/server/MountService;
    .restart local v84    # "mountService":Lcom/android/server/MountService;
    :catch_3f
    move-exception v66

    move-object/from16 v83, v84

    .end local v84    # "mountService":Lcom/android/server/MountService;
    .restart local v83    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_37

    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_40
    move-exception v66

    move-object/from16 v69, v70

    .end local v70    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_36

    .end local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v75    # "location":Lcom/android/server/LocationManagerService;
    .end local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v91    # "notification":Landroid/app/INotificationManager;
    .end local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_41
    move-exception v66

    goto/16 :goto_35

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_42
    move-exception v66

    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :catch_43
    move-exception v66

    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :catch_44
    move-exception v66

    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v67    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v108    # "watchdog":Lcom/android/server/Watchdog;
    :catch_45
    move-exception v66

    move-object/from16 v67, v68

    .end local v68    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    .restart local v67    # "edgePointerService":Lcn/nubia/server/edge/EdgePointerEventService;
    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v103    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v104    # "vibrator":Lcom/android/server/VibratorService;
    :catch_46
    move-exception v66

    move-object/from16 v47, v48

    .end local v48    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v98, v99

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v71, v72

    .end local v72    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v40, v41

    .end local v41    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v40    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v103, v104

    .end local v104    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v103    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_35

    .end local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_47
    move-exception v66

    move-object/from16 v33, v34

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v33    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_34

    .end local v99    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v36    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v69    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v75    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v91    # "notification":Landroid/app/INotificationManager;
    .restart local v96    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v98    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v100    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v106    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_31
    move-object/from16 v3, v85

    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_17

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_32
    move-object/from16 v3, v85

    .line 756
    .end local v85    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2c
.end method

.method static final startPresetPackageInstall(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "cn.nubia.presetpackageinstaller"

    const-string v3, "cn.nubia.presetpackageinstaller.PresetPackageService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1357
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1359
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1360
    return-void
.end method

.method getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method getSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
