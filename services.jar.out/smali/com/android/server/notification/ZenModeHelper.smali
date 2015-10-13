.class public Lcom/android/server/notification/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$Callback;,
        Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final REPEAT_CALLS_ENABLE:Ljava/lang/String; = "zte_Profile_sleep_white_list_enabled"

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"

.field private static final TIMING_ZEN_MODE:Ljava/lang/String; = "timing_zen_mode"


# instance fields
.field private final MAX_COUNT:I

.field private final MAX_TIME_DURATION:J

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ZenModeHelper$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultConfig:Landroid/service/notification/ZenModeConfig;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLastRepeatCalls:Z

.field private mIsLastZenMode:Z

.field private mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

.field private mNumber2IncomingTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreviousRingerMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRingerModeChanged:Ljava/lang/Runnable;

.field private final mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

.field private mZenMode:I

.field muteCalls:Z

.field private number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "ZenModeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    .line 93
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->MAX_COUNT:I

    .line 94
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/notification/ZenModeHelper;->MAX_TIME_DURATION:J

    .line 95
    iput-boolean v4, p0, Lcom/android/server/notification/ZenModeHelper;->mIsLastRepeatCalls:Z

    .line 96
    iput-boolean v4, p0, Lcom/android/server/notification/ZenModeHelper;->mIsLastZenMode:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/server/notification/ZenModeHelper;->muteCalls:Z

    .line 638
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$1;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeChanged:Ljava/lang/Runnable;

    .line 701
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/ZenModeHelper$2;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    .line 107
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    .line 109
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 110
    new-instance v1, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    .line 111
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mSettingsObserver:Lcom/android/server/notification/ZenModeHelper$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->observe()V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    new-instance v1, Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-direct {v1, p1, p2, p0}, Lcn/nubia/server/notification/LastZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->handleRingerModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper;)Lcn/nubia/server/notification/LastZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->clearRepeatCallsIncomingTimes(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ZenModeHelper;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mRingerModeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private allowRestrickNumber(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "allow":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 588
    .local v2, "currTime":J
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 589
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .end local v1    # "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    return v0

    .line 593
    :cond_0
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/notification/ZenModeHelper;->in5minites(JLjava/lang/String;)Z

    move-result v0

    .line 594
    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/notification/ZenModeHelper;->updateTimesArray(JLjava/lang/String;)V

    goto :goto_0
.end method

.method private audienceMatches(F)Z
    .locals 4
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 539
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v2, :pswitch_data_0

    .line 551
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 543
    :pswitch_1
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 545
    :pswitch_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 548
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->number:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->customizeMatches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private callRestrictions()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeHelper;->muteCalls:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    iget-boolean v5, p0, Lcom/android/server/notification/ZenModeHelper;->muteCalls:Z

    if-eqz v5, :cond_1

    :goto_1
    invoke-virtual {v1, v4, v6, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 364
    return-void

    :cond_0
    move v1, v3

    .line 358
    goto :goto_0

    :cond_1
    move v2, v3

    .line 361
    goto :goto_1
.end method

.method private clearRepeatCallsIncomingTimes(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/android/server/notification/ZenModeHelper;->mIsLastZenMode:Z

    if-eq v0, p1, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 696
    iput-boolean p1, p0, Lcom/android/server/notification/ZenModeHelper;->mIsLastZenMode:Z

    .line 698
    :cond_0
    return-void
.end method

.method private customizeMatches(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 558
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->customizeContacts:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 560
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v2, v4

    .line 570
    :goto_0
    return v2

    .line 563
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 565
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 566
    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_2
    move v2, v4

    .line 570
    goto :goto_0
.end method

.method private dispatchOnConfigChanged()V
    .locals 3

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 438
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onConfigChanged()V

    goto :goto_0

    .line 440
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private dispatchOnZenModeChanged()V
    .locals 3

    .prologue
    .line 443
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$Callback;

    .line 444
    .local v0, "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$Callback;->onZenModeChanged()V

    goto :goto_0

    .line 446
    .end local v0    # "callback":Lcom/android/server/notification/ZenModeHelper$Callback;
    :cond_0
    return-void
.end method

.method private handleRingerModeChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 413
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 416
    .local v1, "ringerMode":I
    const/4 v0, -0x1

    .line 417
    .local v0, "newZen":I
    if-nez v1, :cond_3

    .line 418
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    const/4 v0, 0x1

    .line 429
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 430
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v1, v2, v0}, Lcom/android/server/notification/ZenLog;->traceFollowRingerMode(III)V

    .line 431
    const-string v2, "ringerMode"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 434
    .end local v0    # "newZen":I
    .end local v1    # "ringerMode":I
    :cond_1
    return-void

    .line 421
    .restart local v0    # "newZen":I
    .restart local v1    # "ringerMode":I
    :cond_2
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v2, v4, :cond_0

    .line 422
    const/4 v0, 0x2

    goto :goto_0

    .line 424
    :cond_3
    if-eq v1, v4, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :cond_4
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v2, v4, :cond_0

    .line 427
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private in5minites(JLjava/lang/String;)Z
    .locals 15
    .param p1, "currentTime"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 600
    const/4 v2, 0x0

    .line 601
    .local v2, "allow":Z
    iget-object v9, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 602
    .local v8, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 603
    const-wide/16 v4, -0x1

    .line 604
    .local v4, "minTime":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 605
    .local v6, "time":J
    const-wide/16 v10, -0x1

    cmp-long v9, v4, v10

    if-nez v9, :cond_0

    .line 606
    move-wide v4, v6

    goto :goto_0

    .line 608
    :cond_0
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 611
    .end local v6    # "time":J
    :cond_1
    sub-long v10, p1, v4

    const-wide/32 v12, 0x493e0

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    const/4 v2, 0x1

    .line 613
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "minTime":J
    :cond_2
    :goto_1
    return v2

    .line 611
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "minTime":J
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 453
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 485
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 486
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 489
    :goto_0
    return v2

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    const-string v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 477
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 478
    sget-boolean v1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 477
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 480
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 459
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 493
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRepeatNumberCallEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zte_Profile_sleep_white_list_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 449
    const-string v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 124
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110003

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 125
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 126
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 127
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 132
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v0

    .line 132
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    :goto_1
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 247
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 248
    .local v1, "notification":Landroid/app/Notification;
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "mmsNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->number:Ljava/lang/String;

    .line 253
    .end local v0    # "mmsNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    const-string v2, "!audienceMatches"

    invoke-static {p1, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x1

    .line 257
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateTimesArray(JLjava/lang/String;)V
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v6, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 618
    .local v1, "times":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 619
    const-wide/16 v2, -0x1

    .line 620
    .local v2, "minTime":J
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 621
    .local v4, "time":J
    const-wide/16 v6, -0x1

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 622
    move-wide v2, v4

    goto :goto_0

    .line 623
    :cond_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 624
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 626
    :cond_2
    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 627
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 628
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "minTime":J
    .end local v4    # "time":J
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mNumber2IncomingTimes:Ljava/util/Map;

    invoke-interface {v6, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    return-void
.end method

.method private static zenModeFromListenerInterruptionFilter(II)I
    .locals 0
    .param p0, "listenerInterruptionFilter"    # I
    .param p1, "defValue"    # I

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_0

    .line 168
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 162
    .restart local p1    # "defValue":I
    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 164
    :pswitch_1
    const/4 p1, 0x1

    goto :goto_0

    .line 166
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/server/notification/ZenModeHelper$Callback;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mZenMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 371
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPreviousRingerMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public getConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method public getLastExitCondition()I
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/LastZenModeHelper;->getLastExitCondition()I

    move-result v0

    return v0
.end method

.method public getLastSilentExitCondition()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/LastZenModeHelper;->getLastSilentExitCondition()I

    move-result v0

    return v0
.end method

.method public getLastZenMode()I
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v0}, Lcn/nubia/server/notification/LastZenModeHelper;->getLastZenMode()I

    move-result v0

    return v0
.end method

.method public getLastZenModeHelper()Lcn/nubia/server/notification/LastZenModeHelper;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    return-object v0
.end method

.method public getZenMode()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    return v0
.end method

.method public getZenModeListenerInterruptionFilter()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v0, :pswitch_data_0

    .line 154
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 152
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 468
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedRinging()Z
    .locals 2

    .prologue
    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "needRinging":Z
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->isRepeatNumberCallEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper;->number:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->allowRestrickNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 582
    :goto_0
    return v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .locals 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p4, "contactsTimeoutMs"    # I
    .param p5, "timeoutAffinity"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 504
    iget v3, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 506
    .local v3, "zen":I
    const-string v6, "number"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->number:Ljava/lang/String;

    .line 509
    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 535
    :cond_0
    :goto_0
    return v5

    .line 510
    :cond_1
    if-ne v3, v4, :cond_6

    .line 515
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v6, v6, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v6, :cond_4

    .line 516
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->isNeedRinging()Z

    move-result v1

    .line 517
    .local v1, "needRinging":Z
    iget-boolean v6, p0, Lcom/android/server/notification/ZenModeHelper;->muteCalls:Z

    if-eqz v6, :cond_2

    .line 518
    if-nez v1, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/notification/ZenModeHelper;->muteCalls:Z

    .line 520
    :cond_2
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->callRestrictions()V

    move v5, v1

    .line 521
    goto :goto_0

    :cond_3
    move v4, v5

    .line 518
    goto :goto_1

    .line 524
    .end local v1    # "needRinging":Z
    :cond_4
    if-eqz p3, :cond_6

    .line 525
    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 531
    .local v0, "contactAffinity":F
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->audienceMatches(F)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->isNeedRinging()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_5
    move v5, v4

    goto :goto_0

    .end local v0    # "contactAffinity":F
    :cond_6
    move v5, v4

    .line 535
    goto :goto_0
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 378
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_1

    .line 380
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "timing_zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 381
    .local v1, "timingZenMode":Z
    :goto_0
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->timingZenMode:Z

    if-eq v2, v1, :cond_0

    .line 382
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->timingZenMode:Z

    .line 385
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 387
    .end local v1    # "timingZenMode":Z
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 380
    goto :goto_0
.end method

.method public requestFromListener(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    const/4 v1, -0x1

    .line 173
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenModeHelper;->zenModeFromListenerInterruptionFilter(II)I

    move-result v0

    .line 174
    .local v0, "newZen":I
    if-eq v0, v1, :cond_0

    .line 175
    const-string v1, "listener"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public setAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v1, 0x1

    .line 398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 409
    :cond_1
    :goto_0
    return v1

    .line 399
    :cond_2
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v2, p1}, Lcom/android/server/notification/ZenLog;->traceConfig(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 402
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v2}, Lcn/nubia/server/notification/LastZenModeHelper;->saveLastExitCondition()V

    .line 404
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 405
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnConfigChanged()V

    .line 406
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "val":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "zen_mode_config_etag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 408
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->updateZenMode()V

    goto :goto_0
.end method

.method public setLastDownTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/server/notification/LastZenModeHelper;->setLastDownTime(J)V

    .line 727
    return-void
.end method

.method public setZenMode(ILjava/lang/String;)V
    .locals 2
    .param p1, "zenModeValue"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->traceSetZenMode(ILjava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    return-void
.end method

.method public shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget v2, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_2

    .line 204
    const-string v0, "!allowCalls"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 205
    goto :goto_0

    .line 186
    :pswitch_1
    const-string v0, "none"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 187
    goto :goto_0

    .line 207
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 209
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_4

    .line 211
    const-string v0, "!allowMessages"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/notification/LastZenModeHelper;->isIntercepted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 216
    goto :goto_0

    .line 219
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldInterceptAudience(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 233
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_7

    .line 234
    const-string v0, "allowEvents"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;

    invoke-virtual {v0, p1}, Lcn/nubia/server/notification/LastZenModeHelper;->isIntercepted(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_0

    .line 238
    :cond_7
    const-string v0, "!priority"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 239
    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateZenMode()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 270
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "zen_mode"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, "mode":I
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v1, v5, :cond_0

    .line 273
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {v5, v1}, Lcom/android/server/notification/ZenLog;->traceUpdateZenMode(II)V

    .line 275
    :cond_0
    iput v1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 276
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_4

    move v4, v6

    .line 289
    .local v4, "zen":Z
    :goto_0
    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v5, :cond_5

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/notification/ZenModeHelper;->muteCalls:Z

    .line 290
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->callRestrictions()V

    .line 307
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v5, :cond_3

    .line 308
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 309
    .local v2, "ringerMode":I
    const/4 v0, -0x1

    .line 310
    .local v0, "forcedRingerMode":I
    iget v5, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v5, v10, :cond_6

    .line 311
    if-eqz v2, :cond_2

    .line 312
    iput v2, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    .line 313
    sget-boolean v5, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "ZenModeHelper"

    const-string v8, "Silencing ringer"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_1
    const/4 v0, 0x0

    .line 336
    :cond_2
    :goto_2
    if-eq v0, v9, :cond_8

    if-eq v0, v6, :cond_8

    .line 337
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 338
    invoke-static {v0}, Lcom/android/server/notification/ZenLog;->traceSetRingerMode(I)V

    .line 351
    .end local v0    # "forcedRingerMode":I
    .end local v2    # "ringerMode":I
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper;->dispatchOnZenModeChanged()V

    .line 352
    return-void

    .end local v4    # "zen":Z
    :cond_4
    move v4, v7

    .line 276
    goto :goto_0

    .restart local v4    # "zen":Z
    :cond_5
    move v5, v7

    .line 289
    goto :goto_1

    .line 317
    .restart local v0    # "forcedRingerMode":I
    .restart local v2    # "ringerMode":I
    :cond_6
    if-nez v2, :cond_2

    .line 318
    sget-boolean v5, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "ZenModeHelper"

    const-string v8, "Unsilencing ringer"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_7
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getLastRingerMode()I

    move-result v0

    .line 325
    iput v9, p0, Lcom/android/server/notification/ZenModeHelper;->mPreviousRingerMode:I

    goto :goto_2

    .line 339
    :cond_8
    if-eq v0, v9, :cond_3

    if-ne v0, v6, :cond_3

    .line 340
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nubia_last_ringer_volume"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 341
    .local v3, "value":I
    if-eqz v3, :cond_9

    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isRingerModeSet()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 342
    :cond_9
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7}, Landroid/media/AudioManager;->setRingerMode(IZ)V

    .line 343
    invoke-static {v0}, Lcom/android/server/notification/ZenLog;->traceSetRingerMode(I)V

    goto :goto_3

    .line 345
    :cond_a
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v10, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 346
    const-string v5, "ZenLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set ringer stream volume to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, p1}, Landroid/service/notification/ZenModeConfig;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 391
    return-void
.end method
