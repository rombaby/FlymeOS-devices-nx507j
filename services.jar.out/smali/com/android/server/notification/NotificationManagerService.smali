.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field static final JUNK_SCORE:I = -0x3e8

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x7

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x8

.field static final MESSAGE_RANKING_CONFIG_CHANGE:I = 0x5

.field static final MESSAGE_RECONSIDER_RANKING:I = 0x4

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x6

.field static final MESSAGE_TIMEOUT:I = 0x2

.field private static final MY_PID:I

.field private static final MY_UID:I

.field static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final REASON_DELEGATE_CANCEL:I = 0x2

.field private static final REASON_DELEGATE_CANCEL_ALL:I = 0x3

.field private static final REASON_DELEGATE_CLICK:I = 0x1

.field private static final REASON_DELEGATE_ERROR:I = 0x4

.field private static final REASON_GROUP_SUMMARY_CANCELED:I = 0xc

.field private static final REASON_LISTENER_CANCEL:I = 0xa

.field private static final REASON_LISTENER_CANCEL_ALL:I = 0xb

.field private static final REASON_NOMAN_CANCEL:I = 0x8

.field private static final REASON_NOMAN_CANCEL_ALL:I = 0x9

.field private static final REASON_PACKAGE_BANNED:I = 0x7

.field private static final REASON_PACKAGE_CHANGED:I = 0x5

.field private static final REASON_USER_STOPPED:I = 0x6

.field static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field static final SCORE_INTERRUPTION_THRESHOLD:I = -0xa

.field static final SCORE_ONGOING_HIGHER:Z = false

.field static final SHORT_DELAY:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field protected mBlackWhiteList:Lcom/android/server/notification/NotificationBlackWhiteList;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBuzzBeepBlinked:Ljava/lang/Runnable;

.field private mCallState:I

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDefaultVibrationPattern:[J

.field private mDisableNotificationEffects:Z

.field private mEffectsSuppressor:Landroid/content/ComponentName;

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field mLedNotification:Lcom/android/server/notification/NotificationRecord;

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mNotificationHelper:Lcn/nubia/server/notification/NotificationHelper;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPulseEnabled:Z

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field mSoundNotification:Lcom/android/server/notification/NotificationRecord;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

.field mVibrator:Landroid/os/Vibrator;

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 246
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 247
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return-void

    .line 143
    nop

    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 808
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 198
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    .line 241
    new-instance v0, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 495
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 653
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 787
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    .line 999
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 1659
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 809
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800()V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ZenModeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 125
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;)Lcn/nubia/server/notification/NotificationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationHelper:Lcn/nubia/server/notification/NotificationHelper;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleRankingConfigChange()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/notification/NotificationManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 2213
    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .locals 5
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 2043
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 2054
    :goto_0
    return-object v0

    .line 2045
    :cond_0
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2047
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 2050
    :cond_1
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2051
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_0

    .line 2053
    :cond_2
    const-string v0, "NotificationService"

    const-string v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    goto :goto_0
.end method

.method private buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 31
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1865
    const/4 v11, 0x0

    .line 1866
    .local v11, "buzzBeepBlinked":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    .line 1868
    .local v21, "notification":Landroid/app/Notification;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/notification/NotificationRecord;->score:I

    const/16 v5, -0xa

    if-lt v4, v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v12, 0x1

    .line 1870
    .local v12, "canInterrupt":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1871
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " canInterrupt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intercept="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 1879
    .local v26, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    .line 1881
    .local v14, "currentUser":I
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1885
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v15

    .line 1886
    .local v15, "disableEffects":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 1887
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 1889
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    .line 1891
    .local v24, "smsRingtone":Z
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, v21

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_e

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    if-eq v4, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_3
    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_e

    .line 1900
    const/16 v17, 0x0

    .line 1901
    .local v17, "hasValidSound":Z
    if-eqz v15, :cond_4

    if-eqz v24, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v4, :cond_b

    .line 1902
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 1905
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isNotificationSettingsEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mBlackWhiteList:Lcom/android/server/notification/NotificationBlackWhiteList;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationBlackWhiteList;->isAllowNotify(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2040
    .end local v17    # "hasValidSound":Z
    :cond_5
    :goto_1
    return-void

    .line 1868
    .end local v12    # "canInterrupt":Z
    .end local v14    # "currentUser":I
    .end local v15    # "disableEffects":Ljava/lang/String;
    .end local v24    # "smsRingtone":Z
    .end local v26    # "token":J
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1881
    .restart local v12    # "canInterrupt":Z
    .restart local v26    # "token":J
    :catchall_0
    move-exception v4

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1915
    .restart local v14    # "currentUser":I
    .restart local v15    # "disableEffects":Ljava/lang/String;
    .restart local v17    # "hasValidSound":Z
    .restart local v24    # "smsRingtone":Z
    :cond_7
    move-object/from16 v0, v21

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_8

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_8
    const/16 v28, 0x1

    .line 1920
    .local v28, "useDefaultSound":Z
    :goto_2
    const/16 v25, 0x0

    .line 1922
    .local v25, "soundUri":Landroid/net/Uri;
    if-eqz v28, :cond_14

    .line 1923
    sget-object v25, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1926
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 1927
    .local v23, "resolver":Landroid/content/ContentResolver;
    const-string v4, "notification_sound"

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    const/16 v17, 0x1

    .line 1934
    .end local v23    # "resolver":Landroid/content/ContentResolver;
    :cond_9
    :goto_3
    if-eqz v17, :cond_b

    .line 1935
    move-object/from16 v0, v21

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_16

    const/16 v20, 0x1

    .line 1938
    .local v20, "looping":Z
    :goto_4
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v4, :cond_17

    .line 1939
    move-object/from16 v0, v21

    iget-object v10, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 1943
    .local v10, "audioAttributes":Landroid/media/AudioAttributes;
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    .line 1946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v10}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1951
    .local v18, "identity":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v22

    .line 1953
    .local v22, "player":Landroid/media/IRingtonePlayer;
    if-eqz v22, :cond_a

    .line 1956
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v20

    invoke-interface {v0, v1, v4, v2, v10}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1958
    const/4 v11, 0x1

    .line 1962
    :cond_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1969
    .end local v10    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v18    # "identity":J
    .end local v20    # "looping":Z
    .end local v22    # "player":Landroid/media/IRingtonePlayer;
    .end local v25    # "soundUri":Landroid/net/Uri;
    .end local v28    # "useDefaultSound":Z
    :cond_b
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->isNotificationSettingsEnable()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mBlackWhiteList:Lcom/android/server/notification/NotificationBlackWhiteList;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationBlackWhiteList;->isAllowNotify(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1976
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_18

    const/16 v16, 0x1

    .line 1980
    .local v16, "hasCustomVibrate":Z
    :goto_7
    if-nez v16, :cond_19

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_19

    const/4 v13, 0x1

    .line 1987
    .local v13, "convertSoundToVibration":Z
    :goto_8
    move-object/from16 v0, v21

    iget v4, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    const/16 v29, 0x1

    .line 1990
    .local v29, "useDefaultVibrate":Z
    :goto_9
    if-nez v29, :cond_c

    if-nez v13, :cond_c

    if-eqz v16, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_e

    .line 1993
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    .line 1995
    if-nez v29, :cond_d

    if-eqz v13, :cond_1d

    .line 1998
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2000
    .restart local v18    # "identity":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    :goto_a
    move-object/from16 v0, v21

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1c

    const/4 v8, 0x0

    :goto_b
    invoke-static/range {v21 .. v21}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2005
    const/4 v11, 0x1

    .line 2007
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2023
    .end local v13    # "convertSoundToVibration":Z
    .end local v16    # "hasCustomVibrate":Z
    .end local v17    # "hasValidSound":Z
    .end local v18    # "identity":J
    .end local v29    # "useDefaultVibrate":Z
    :cond_e
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v30

    .line 2024
    .local v30, "wasShowLights":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2025
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2027
    :cond_f
    move-object/from16 v0, v21

    iget v4, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1f

    if-eqz v12, :cond_1f

    .line 2028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2029
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2030
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v4, :cond_10

    .line 2031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v4}, Lcom/android/server/lights/Light;->pulse()V

    .line 2033
    :cond_10
    const/4 v11, 0x1

    .line 2037
    :cond_11
    :goto_d
    if-eqz v11, :cond_5

    .line 2038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mBuzzBeepBlinked:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1915
    .end local v30    # "wasShowLights":Z
    .restart local v17    # "hasValidSound":Z
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 1927
    .restart local v23    # "resolver":Landroid/content/ContentResolver;
    .restart local v25    # "soundUri":Landroid/net/Uri;
    .restart local v28    # "useDefaultSound":Z
    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1929
    .end local v23    # "resolver":Landroid/content/ContentResolver;
    :cond_14
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_9

    .line 1930
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v25, v0

    .line 1931
    if-eqz v25, :cond_15

    const/16 v17, 0x1

    :goto_e
    goto/16 :goto_3

    :cond_15
    const/16 v17, 0x0

    goto :goto_e

    .line 1935
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 1941
    .restart local v20    # "looping":Z
    :cond_17
    sget-object v10, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .restart local v10    # "audioAttributes":Landroid/media/AudioAttributes;
    goto/16 :goto_5

    .line 1960
    .restart local v18    # "identity":J
    :catch_0
    move-exception v4

    .line 1962
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    :catchall_1
    move-exception v4

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1976
    .end local v10    # "audioAttributes":Landroid/media/AudioAttributes;
    .end local v18    # "identity":J
    .end local v20    # "looping":Z
    .end local v25    # "soundUri":Landroid/net/Uri;
    .end local v28    # "useDefaultSound":Z
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 1980
    .restart local v16    # "hasCustomVibrate":Z
    :cond_19
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 1987
    .restart local v13    # "convertSoundToVibration":Z
    :cond_1a
    const/16 v29, 0x0

    goto/16 :goto_9

    .line 2000
    .restart local v18    # "identity":J
    .restart local v29    # "useDefaultVibrate":Z
    :cond_1b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_a

    :cond_1c
    const/4 v8, -0x1

    goto/16 :goto_b

    .line 2007
    :catchall_2
    move-exception v4

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2009
    .end local v18    # "identity":J
    :cond_1d
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/Notification;->vibrate:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_e

    .line 2012
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, v21

    iget v8, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_1e

    const/4 v8, 0x0

    :goto_f
    invoke-static/range {v21 .. v21}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 2016
    const/4 v11, 0x1

    goto/16 :goto_c

    .line 2012
    :cond_1e
    const/4 v8, -0x1

    goto :goto_f

    .line 2034
    .end local v13    # "convertSoundToVibration":Z
    .end local v16    # "hasCustomVibrate":Z
    .end local v17    # "hasValidSound":Z
    .end local v29    # "useDefaultVibrate":Z
    .restart local v30    # "wasShowLights":Z
    :cond_1f
    if-eqz v30, :cond_11

    .line 2035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_d
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 2722
    packed-switch p0, :pswitch_data_0

    .line 2726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2723
    :pswitch_0
    const-string v0, "CALL_STATE_IDLE"

    goto :goto_0

    .line 2724
    :pswitch_1
    const-string v0, "CALL_STATE_RINGING"

    goto :goto_0

    .line 2725
    :pswitch_2
    const-string v0, "CALL_STATE_OFFHOOK"

    goto :goto_0

    .line 2722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V
    .locals 16
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;

    .prologue
    .line 2578
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v15

    .line 2579
    .local v15, "n":Landroid/app/Notification;
    invoke-virtual {v15}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2604
    :cond_0
    return-void

    .line 2583
    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2584
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    .line 2586
    .local v6, "userId":I
    if-eqz v3, :cond_0

    .line 2591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2592
    .local v11, "N":I
    add-int/lit8 v14, v11, -0x1

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_0

    .line 2593
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 2594
    .local v12, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v13, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2595
    .local v13, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupChild()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2597
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v10, p4

    invoke-static/range {v1 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 2600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2601
    const/4 v1, 0x0

    const/16 v2, 0xc

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 2592
    :cond_2
    add-int/lit8 v14, v14, -0x1

    goto :goto_0
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I

    .prologue
    const/4 v7, 0x0

    .line 2330
    if-eqz p2, :cond_0

    .line 2331
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 2333
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2343
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_1

    .line 2344
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 2345
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 2349
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    if-ne v4, p1, :cond_3

    .line 2350
    iput-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2353
    .local v2, "identity":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v1

    .line 2354
    .local v1, "player":Landroid/media/IRingtonePlayer;
    if-eqz v1, :cond_2

    .line 2355
    invoke-interface {v1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2359
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2364
    .end local v1    # "player":Landroid/media/IRingtonePlayer;
    .end local v2    # "identity":J
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    if-ne v4, p1, :cond_4

    .line 2365
    iput-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2368
    .restart local v2    # "identity":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2371
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    .end local v2    # "identity":J
    :cond_4
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2377
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-ne v4, p1, :cond_5

    .line 2378
    iput-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2382
    :cond_5
    packed-switch p3, :pswitch_data_0

    .line 2397
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerCancelUnknown(Lcom/android/server/notification/NotificationRecord;)V

    .line 2401
    :goto_2
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 2405
    return-void

    .line 2334
    :catch_0
    move-exception v0

    .line 2337
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2357
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    .restart local v2    # "identity":J
    :catch_1
    move-exception v4

    .line 2359
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2371
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2387
    .end local v2    # "identity":J
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2

    .line 2391
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2

    .line 2394
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerCancelDueToClick(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2

    .line 2382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static checkCallerIsSystem()V
    .locals 3

    .prologue
    .line 2695
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2696
    return-void

    .line 2698
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 2702
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2719
    :cond_0
    return-void

    .line 2705
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2707
    .local v2, "uid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2709
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_2

    .line 2710
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 2717
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2712
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2713
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 2306
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_0

    .line 1544
    const-string v0, "booleanState"

    .line 1552
    :goto_0
    return-object v0

    .line 1546
    :cond_0
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1547
    const-string v0, "listenerHints"

    goto :goto_0

    .line 1549
    :cond_1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1550
    const-string v0, "callState"

    goto :goto_0

    .line 1552
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .locals 2
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method private getActiveNotificationKeys(Landroid/service/notification/INotificationListener;)[Ljava/lang/String;
    .locals 7
    .param p1, "token"    # Landroid/service/notification/INotificationListener;

    .prologue
    .line 1526
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v5, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    .line 1527
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1529
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1530
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1531
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1532
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1533
    .local v4, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1534
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1537
    .end local v4    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 1537
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .prologue
    .line 795
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 796
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 804
    .end local p3    # "def":[J
    :goto_0
    return-object p3

    .line 799
    .restart local p3    # "def":[J
    :cond_0
    array-length v4, v0

    if-le v4, p2, :cond_1

    move v2, p2

    .line 800
    .local v2, "len":I
    :goto_1
    new-array v3, v2, [J

    .line 801
    .local v3, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 802
    aget v4, v0, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 801
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 799
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "out":[J
    :cond_1
    array-length v2, v0

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "out":[J
    :cond_2
    move-object p3, v3

    .line 804
    goto :goto_0
.end method

.method private handleListenerHintsChanged(I)V
    .locals 2
    .param p1, "hints"    # I

    .prologue
    .line 2246
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2247
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 2248
    monitor-exit v1

    .line 2249
    return-void

    .line 2248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .locals 2
    .param p1, "interruptionFilter"    # I

    .prologue
    .line 2252
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 2254
    monitor-exit v1

    .line 2255
    return-void

    .line 2254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleRankingConfigChange()V
    .locals 8

    .prologue
    .line 2188
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 2189
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2190
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2191
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v4, v0, [I

    .line 2192
    .local v4, "visibilities":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2193
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2194
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2195
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v5

    aput v5, v4, v1

    .line 2196
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 2192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2198
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 2199
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2200
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2201
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget v5, v4, v1

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    if-eq v5, v7, :cond_2

    .line 2203
    :cond_1
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    .line 2204
    monitor-exit v6

    .line 2208
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    return-void

    .line 2198
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2207
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v6

    goto :goto_2

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "visibilities":[I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .locals 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 2158
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/server/notification/RankingReconsideration;

    if-nez v9, :cond_1

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2159
    :cond_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/notification/RankingReconsideration;

    .line 2160
    .local v5, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 2162
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v10

    .line 2163
    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 2164
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_2

    .line 2165
    monitor-exit v10

    goto :goto_0

    .line 2181
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 2167
    .restart local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v2

    .line 2168
    .local v2, "indexBefore":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 2169
    .local v4, "interceptBefore":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v8

    .line 2170
    .local v8, "visibilityBefore":I
    invoke-virtual {v5, v6}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2171
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2172
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 2173
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v1

    .line 2174
    .local v1, "indexAfter":I
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    .line 2175
    .local v3, "interceptAfter":Z
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v7

    .line 2176
    .local v7, "visibilityAfter":I
    if-ne v2, v1, :cond_3

    if-ne v4, v3, :cond_3

    if-eq v8, v7, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 2178
    .local v0, "changed":Z
    :goto_1
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 2179
    invoke-direct {p0, v6}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2181
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    if-eqz v0, :cond_0

    .line 2183
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->scheduleSendRankingUpdate()V

    goto :goto_0

    .line 2176
    .end local v0    # "changed":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleSavePolicyFile()V
    .locals 7

    .prologue
    .line 419
    const-string v3, "NotificationService"

    const-string v4, "handleSavePolicyFile"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v4

    .line 423
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 430
    .local v2, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 431
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "utf-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 432
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 433
    const/4 v3, 0x0

    const-string v5, "notification-policy"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const/4 v3, 0x0

    const-string v5, "version"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 436
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 437
    const/4 v3, 0x0

    const-string v5, "notification-policy"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 438
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 439
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 445
    .end local v2    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "NotificationService"

    const-string v5, "Failed to save policy file"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    monitor-exit v4

    goto :goto_1

    .line 444
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 440
    .restart local v2    # "stream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 441
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "NotificationService"

    const-string v5, "Failed to save policy file, restoring backup"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private handleSendRankingUpdate()V
    .locals 2

    .prologue
    .line 2227
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked()V

    .line 2229
    monitor-exit v1

    .line 2230
    return-void

    .line 2229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleTimeout(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 2115
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2116
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .line 2117
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 2118
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 2120
    :cond_0
    monitor-exit v2

    .line 2121
    return-void

    .line 2120
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private importOldBlockDb()V
    .locals 6

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 932
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 933
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 934
    .local v2, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 936
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 937
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 938
    :catch_0
    move-exception v4

    goto :goto_0

    .line 942
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 943
    return-void
.end method

.method private static isCallerSystem()Z
    .locals 1

    .prologue
    .line 2691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v0

    return v0
.end method

.method private isNotificationSettingsEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notificationsettings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUidSystem(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    .line 2686
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2687
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 2787
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2788
    const/4 v0, 0x0

    .line 2791
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listenForCallState()V
    .locals 3

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2739
    return-void
.end method

.method private loadPolicyFile()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 366
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 367
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    const/4 v1, 0x0

    .line 371
    .local v1, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 372
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 373
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 377
    const/4 v5, 0x1

    .line 378
    .local v5, "version":I
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    if-eq v4, v10, :cond_4

    .line 379
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "tag":Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    .line 381
    const-string v6, "notification-policy"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 382
    const/4 v6, 0x0

    const-string v8, "version"

    invoke-interface {v2, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 396
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 397
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 399
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_0
    move-exception v6

    .line 408
    :try_start_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 410
    :goto_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    return-void

    .line 384
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v5    # "version":I
    :cond_1
    :try_start_3
    const-string v6, "blocked-packages"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    :cond_2
    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v10, :cond_0

    .line 386
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 387
    const-string v6, "package"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 388
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 401
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "tag":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_1
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "NotificationService"

    const-string v8, "Unable to read notification policy"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 408
    :try_start_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 410
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "infile":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 390
    .restart local v1    # "infile":Ljava/io/FileInputStream;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "tag":Ljava/lang/String;
    .restart local v4    # "type":I
    .restart local v5    # "version":I
    :cond_3
    :try_start_6
    const-string v6, "blocked-packages"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    goto :goto_1

    .line 408
    .end local v3    # "tag":Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 403
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "type":I
    .end local v5    # "version":I
    :catch_2
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v6, "NotificationService"

    const-string v8, "Unable to parse notification policy"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 408
    :try_start_9
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 405
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 406
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_a
    const-string v6, "NotificationService"

    const-string v8, "Unable to parse notification policy"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 408
    :try_start_b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v6

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .locals 11
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 2748
    const/4 v7, -0x1

    .line 2749
    .local v7, "speedBumpIndex":I
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2750
    .local v0, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2751
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2752
    .local v2, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 2753
    .local v8, "visibilityOverrides":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 2754
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 2755
    .local v6, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v9, p1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2753
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2758
    :cond_1
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2759
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2760
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v9

    const/16 v10, -0x3e8

    if-eq v9, v10, :cond_3

    .line 2764
    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2768
    :cond_3
    const/4 v9, -0x1

    if-ne v7, v9, :cond_0

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v9

    if-gtz v9, :cond_0

    iget-object v9, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v9, v9, Landroid/app/Notification;->priority:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    .line 2777
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto :goto_1

    .line 2780
    .end local v6    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2781
    .local v5, "keysAr":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 2782
    .local v3, "interceptedKeysAr":[Ljava/lang/String;
    new-instance v9, Landroid/service/notification/NotificationRankingUpdate;

    invoke-direct {v9, v5, v3, v8, v7}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)V

    return-object v9
.end method

.method private noteNotificationOp(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifications are disabled by AppOps for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    .line 2475
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

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

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, -0x1

    .line 2460
    if-eq p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .locals 3
    .param p1, "listenerInterruptionFilter"    # I

    .prologue
    const/16 v2, 0x8

    .line 2238
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 2239
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2243
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x7

    .line 2233
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 2234
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2235
    return-void
.end method

.method private scheduleSendRankingUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 2221
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 2222
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2223
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2224
    return-void
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .prologue
    .line 2106
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2107
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2108
    .local v2, "m":Landroid/os/Message;
    iget v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-wide/16 v0, 0xdac

    .line 2109
    .local v0, "delay":J
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2110
    return-void

    .line 2108
    .end local v0    # "delay":J
    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method

.method private updateEffectsSuppressorLocked()V
    .locals 4

    .prologue
    .line 984
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 986
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    :goto_1
    return-void

    .line 984
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 987
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressor:Landroid/content/ComponentName;

    .line 988
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private updateInterruptionFilterLocked()V
    .locals 2

    .prologue
    .line 993
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 994
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_0

    .line 997
    :goto_0
    return-void

    .line 995
    :cond_0
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 996
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    goto :goto_0
.end method

.method private updateListenerHintsLocked()V
    .locals 2

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 978
    .local v0, "hints":I
    :goto_0
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_1

    .line 981
    :goto_1
    return-void

    .line 977
    .end local v0    # "hints":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 979
    .restart local v0    # "hints":I
    :cond_1
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 980
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    goto :goto_1
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    .line 2680
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2681
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2682
    monitor-exit v1

    .line 2683
    return-void

    .line 2682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z

    .prologue
    .line 2538
    if-nez p5, :cond_1

    const/4 v8, 0x0

    .line 2539
    .local v8, "listenerName":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v7, p4

    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 2542
    const/4 v11, 0x0

    .line 2543
    .local v11, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2544
    .local v10, "N":I
    add-int/lit8 v12, v10, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_5

    .line 2545
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 2546
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz p6, :cond_2

    .line 2547
    move/from16 v0, p3

    invoke-direct {p0, v13, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2544
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 2538
    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v10    # "N":I
    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p5

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 2551
    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v10    # "N":I
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v12    # "i":I
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    move/from16 v0, p3

    invoke-direct {p0, v13, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2556
    :cond_3
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x22

    if-nez v1, :cond_0

    .line 2558
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2559
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-direct {p0, v13, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    .line 2561
    if-nez v11, :cond_4

    .line 2562
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2564
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_4
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2567
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2568
    .local v9, "M":I
    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_7

    .line 2569
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    move/from16 v0, p2

    invoke-direct {p0, v1, p1, v0, v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    .line 2568
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2567
    .end local v9    # "M":I
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 2572
    .restart local v9    # "M":I
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2573
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "mustHaveFlags"    # I
    .param p5, "mustNotHaveFlags"    # I
    .param p6, "doit"    # Z
    .param p7, "userId"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 2486
    if-nez p9, :cond_1

    const/4 v8, 0x0

    .local v8, "listenerName":Ljava/lang/String;
    :goto_0
    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    .line 2487
    invoke-static/range {v1 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 2491
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2493
    .local v10, "N":I
    const/4 v11, 0x0

    .line 2494
    .local v11, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    add-int/lit8 v12, v10, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_7

    .line 2495
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 2496
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    move/from16 v0, p7

    invoke-direct {p0, v13, v0}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 2494
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 2486
    .end local v8    # "listenerName":Ljava/lang/String;
    .end local v10    # "N":I
    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1
    move-object/from16 v0, p9

    iget-object v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 2500
    .restart local v8    # "listenerName":Ljava/lang/String;
    .restart local v10    # "N":I
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v12    # "i":I
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    :try_start_1
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    if-eqz p3, :cond_0

    .line 2503
    :cond_3
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p4

    move/from16 v0, p4

    if-ne v1, v0, :cond_0

    .line 2506
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v1

    and-int v1, v1, p5

    if-nez v1, :cond_0

    .line 2509
    if-eqz p3, :cond_4

    iget-object v1, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2512
    :cond_4
    if-nez v11, :cond_5

    .line 2513
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2515
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_5
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    if-nez p6, :cond_6

    .line 2517
    const/4 v1, 0x1

    monitor-exit v2

    .line 2532
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_3
    return v1

    .line 2519
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2520
    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-direct {p0, v13, v1, v0}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZI)V

    goto :goto_2

    .line 2533
    .end local v10    # "N":I
    .end local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v12    # "i":I
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2522
    .restart local v10    # "N":I
    .restart local v11    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v12    # "i":I
    :cond_7
    if-eqz p6, :cond_8

    if-eqz v11, :cond_8

    .line 2523
    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2524
    .local v9, "M":I
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v9, :cond_8

    .line 2525
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    move/from16 v0, p2

    invoke-direct {p0, v1, p1, v0, v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;)V

    .line 2524
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2529
    .end local v9    # "M":I
    :cond_8
    if-eqz v11, :cond_9

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 2532
    :cond_9
    if-eqz v11, :cond_a

    const/4 v1, 0x1

    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_5
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 14
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 2419
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$8;

    move-object v1, p0

    move-object/from16 v2, p11

    move v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v12, p8

    invoke-direct/range {v0 .. v12}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZ)V

    invoke-virtual {v13, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2453
    return-void
.end method

.method cancelToastLocked(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 2085
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2087
    .local v1, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2095
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 2096
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 2102
    :cond_0
    return-void

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 1556
    const-string v7, "Current Notification Manager state"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1557
    if-eqz p2, :cond_0

    .line 1558
    const-string v7, " (filtered to "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v7, ")"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    :cond_0
    const/16 v7, 0x3a

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 1562
    if-eqz p2, :cond_1

    iget-boolean v7, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    .line 1564
    .local v6, "zenOnly":Z
    :goto_0
    if-nez v6, :cond_4

    .line 1565
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1566
    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1567
    .local v0, "N":I
    if-lez v0, :cond_3

    .line 1568
    const-string v7, "  Toast Queue:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1570
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1562
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v6    # "zenOnly":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1572
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v6    # "zenOnly":Z
    :cond_2
    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1574
    .end local v1    # "i":I
    :cond_3
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1577
    .end local v0    # "N":I
    :cond_4
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1578
    if-nez v6, :cond_d

    .line 1579
    :try_start_1
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1580
    .restart local v0    # "N":I
    if-lez v0, :cond_7

    .line 1581
    const-string v7, "  Notification List:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 1583
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 1584
    .local v4, "nr":Lcom/android/server/notification/NotificationRecord;
    if-eqz p2, :cond_5

    iget-object v7, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-nez v7, :cond_5

    .line 1582
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1574
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1585
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    :try_start_3
    const-string v7, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, p1, v7, v9}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_3

    .line 1653
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "nr":Lcom/android/server/notification/NotificationRecord;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 1587
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_6
    :try_start_4
    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    .end local v1    # "i":I
    :cond_7
    if-nez p2, :cond_a

    .line 1591
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1592
    if-lez v0, :cond_9

    .line 1593
    const-string v7, "  Lights List:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_8

    .line 1595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1597
    :cond_8
    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    .end local v1    # "i":I
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mUseAttentionLight="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mNotificationPulseEnabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSoundNotification="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotification:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mVibrateNotification="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotification:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mDisableNotificationEffects="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mCallState="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mSystemReady="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1607
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  mArchive="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1609
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v1, 0x0

    .line 1610
    .restart local v1    # "i":I
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1611
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 1612
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_c

    invoke-virtual {p2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1613
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x5

    if-lt v1, v7, :cond_b

    .line 1615
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "    ..."

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_d
    if-nez v6, :cond_e

    .line 1622
    const-string v7, "\n  Usage Stats:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1623
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1626
    :cond_e
    if-eqz p2, :cond_f

    if-eqz v6, :cond_10

    .line 1627
    :cond_f
    const-string v7, "\n  Zen Mode:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1630
    const-string v7, "\n  Zen Log:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1631
    const-string v7, "    "

    invoke-static {p1, v7}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1634
    :cond_10
    if-nez v6, :cond_13

    .line 1635
    const-string v7, "\n  Ranking Config:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1636
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v9, "    "

    invoke-virtual {v7, p1, v9, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1638
    const-string v7, "\n  Notification listeners:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1639
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1640
    const-string v7, "    mListenerHints: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 1641
    const-string v7, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1642
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1643
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 1644
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/ArraySet;

    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1645
    .local v3, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-lez v1, :cond_11

    const/16 v7, 0x2c

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 1646
    :cond_11
    iget-object v7, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1643
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1648
    .end local v3    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_12
    const/16 v7, 0x29

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 1651
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_13
    const-string v7, "\n  Condition providers:"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 1653
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1654
    return-void
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    .locals 24
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "idOut"    # [I
    .param p9, "incomingUserId"    # I

    .prologue
    .line 1699
    invoke-static/range {p1 .. p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1700
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/NotificationManagerService;->isUidSystem(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/16 v18, 0x1

    .line 1701
    .local v18, "isSystemNotification":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->access$3100(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Ljava/lang/String;)Z

    move-result v22

    .line 1703
    .local v22, "isNotificationFromListener":Z
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "enqueueNotification"

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 v4, p9

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1705
    .local v7, "userId":I
    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 1709
    .local v17, "user":Landroid/os/UserHandle;
    if-nez v18, :cond_4

    if-nez v22, :cond_4

    .line 1710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1711
    const/16 v20, 0x0

    .line 1712
    .local v20, "count":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1713
    .local v19, "N":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 1714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/notification/NotificationRecord;

    .line 1715
    .local v23, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1716
    add-int/lit8 v20, v20, 0x1

    .line 1717
    const/16 v2, 0x32

    move/from16 v0, v20

    if-lt v0, v2, :cond_2

    .line 1718
    const-string v2, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package has already posted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifications.  Not showing more.  package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    monitor-exit v3

    .line 1857
    .end local v19    # "N":I
    .end local v20    # "count":I
    .end local v21    # "i":I
    .end local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    return-void

    .line 1700
    .end local v7    # "userId":I
    .end local v17    # "user":Landroid/os/UserHandle;
    .end local v18    # "isSystemNotification":Z
    .end local v22    # "isNotificationFromListener":Z
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1713
    .restart local v7    # "userId":I
    .restart local v17    # "user":Landroid/os/UserHandle;
    .restart local v18    # "isSystemNotification":Z
    .restart local v19    # "N":I
    .restart local v20    # "count":I
    .restart local v21    # "i":I
    .restart local v22    # "isNotificationFromListener":Z
    .restart local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 1724
    .end local v23    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    .end local v19    # "N":I
    .end local v20    # "count":I
    .end local v21    # "i":I
    :cond_4
    const-string v2, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "DownloadManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1731
    :cond_5
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p6

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1735
    :cond_6
    if-eqz p1, :cond_7

    if-nez p7, :cond_8

    .line 1736
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null not allowed: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1724
    .restart local v20    # "count":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1739
    .end local v20    # "count":I
    :cond_8
    move-object/from16 v0, p7

    iget v2, v0, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_9

    .line 1740
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->isValid()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1741
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid notification (): pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " notification="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1746
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$7;

    move-object/from16 v9, p0

    move-object/from16 v10, p7

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p5

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-direct/range {v8 .. v18}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;Z)V

    invoke-virtual {v2, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1856
    const/4 v2, 0x0

    aput p6, p8, v2

    goto/16 :goto_2
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2670
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2671
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2672
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2676
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 2671
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2676
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 2645
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 2646
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2647
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 2648
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 2649
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, p3, :cond_1

    .line 2647
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2652
    :cond_1
    if-nez p2, :cond_3

    .line 2653
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2661
    :cond_2
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2665
    .end local v0    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_2
    return v0

    .line 2657
    .restart local v0    # "i":I
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 2665
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4
    const/4 v0, -0x1

    goto :goto_2
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;

    .prologue
    .line 2126
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2127
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 2128
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2129
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2130
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2131
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .line 2135
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_1
    return v1

    .line 2129
    .restart local v1    # "i":I
    .restart local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2135
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method keepProcessAliveLocked(I)V
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 2141
    const/4 v4, 0x0

    .line 2142
    .local v4, "toastCount":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 2143
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2144
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2145
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2146
    .local v3, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    .line 2147
    add-int/lit8 v4, v4, 0x1

    .line 2144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2151
    .end local v3    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2155
    :goto_2
    return-void

    .line 2151
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 2152
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 947
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 952
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 953
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setAudioManager(Landroid/media/AudioManager;)V

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 958
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 959
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 15

    .prologue
    const/16 v14, 0x11

    const/4 v13, 0x0

    .line 813
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 815
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 816
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "appops"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager;

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 817
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "vibrator"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 819
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 820
    new-instance v8, Lcom/android/server/notification/NotificationBlackWhiteList;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/notification/NotificationBlackWhiteList;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mBlackWhiteList:Lcom/android/server/notification/NotificationBlackWhiteList;

    .line 821
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 824
    const v8, 0x1070031

    :try_start_0
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 828
    .local v1, "extractorNames":[Ljava/lang/String;
    :goto_0
    new-instance v8, Lcom/android/server/notification/RankingHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    invoke-direct {v8, v9, v10, v1}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 831
    new-instance v8, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 832
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v9, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v9, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 845
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "system"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 846
    .local v7, "systemDir":Ljava/io/File;
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 847
    new-instance v8, Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 849
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->importOldBlockDb()V

    .line 851
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-direct {v8, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 852
    new-instance v8, Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/notification/ZenModeHelper;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 855
    new-instance v8, Lcn/nubia/server/notification/NotificationHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v8, v9, v10, v11}, Lcn/nubia/server/notification/NotificationHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationHelper:Lcn/nubia/server/notification/NotificationHelper;

    .line 857
    const-class v8, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {p0, v8}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 858
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v8, v9}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 860
    const-class v8, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v8}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    .line 861
    .local v3, "lights":Lcom/android/server/lights/LightsManager;
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 862
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 864
    const v8, 0x10600ff

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 866
    const v8, 0x10e0042

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 868
    const v8, 0x10e0043

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 871
    const v8, 0x107002e

    sget-object v9, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v5, v8, v14, v9}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultVibrationPattern:[J

    .line 876
    const v8, 0x107002f

    sget-object v9, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v5, v8, v14, v9}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 881
    const v8, 0x1120026

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 887
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_0

    .line 889
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 891
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v8}, Lcom/android/server/notification/ZenModeHelper;->updateZenMode()V

    .line 893
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 894
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 897
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 898
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 899
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 900
    const-string v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    const-string v8, "android.intent.action.USER_STOPPED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 903
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 904
    const-string v8, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 906
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 907
    .local v4, "pkgFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 909
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 910
    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 911
    const-string v8, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 912
    const-string v8, "package"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 914
    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 915
    .local v6, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 917
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v8, p0, v9}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 919
    new-instance v8, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v9, 0x10e0049

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 922
    const-string v8, "notification"

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 923
    const-class v8, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 924
    return-void

    .line 825
    .end local v1    # "extractorNames":[Ljava/lang/String;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "lights":Lcom/android/server/lights/LightsManager;
    .end local v4    # "pkgFilter":Landroid/content/IntentFilter;
    .end local v6    # "sdFilter":Landroid/content/IntentFilter;
    .end local v7    # "systemDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-array v1, v13, [Ljava/lang/String;

    .restart local v1    # "extractorNames":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public savePolicyFile()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 414
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 415
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    .line 416
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 2310
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 2311
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2326
    :goto_0
    return-void

    .line 2315
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2317
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2318
    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2319
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 2320
    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2321
    .local v2, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2322
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2325
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method setNotificationsEnabledForPackageImpl(Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 964
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v0, "en"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "abling notifications for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0xb

    if-eqz p3, :cond_2

    move v0, v4

    :goto_1
    invoke-virtual {v1, v2, p2, p1, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 970
    if-nez p3, :cond_0

    .line 971
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 974
    :cond_0
    return-void

    .line 964
    :cond_1
    const-string v0, "dis"

    goto :goto_0

    :cond_2
    move v0, v6

    .line 966
    goto :goto_1
.end method

.method showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2059
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2060
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_0

    .line 2063
    :try_start_0
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    .line 2064
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    :cond_0
    return-void

    .line 2066
    :catch_0
    move-exception v0

    .line 2067
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2071
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 2072
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2074
    :cond_1
    iget v3, v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveLocked(I)V

    .line 2075
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 2076
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .restart local v2    # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto :goto_0

    .line 2078
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method updateLightsLocked()V
    .locals 8

    .prologue
    .line 2610
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-nez v5, :cond_0

    .line 2612
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2613
    .local v4, "n":I
    if-lez v4, :cond_0

    .line 2614
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iput-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    .line 2619
    .end local v4    # "n":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v5, :cond_2

    .line 2620
    :cond_1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v5}, Lcom/android/server/lights/Light;->turnOff()V

    .line 2621
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 2640
    :goto_0
    return-void

    .line 2623
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLedNotification:Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 2624
    .local v3, "ledno":Landroid/app/Notification;
    iget v0, v3, Landroid/app/Notification;->ledARGB:I

    .line 2625
    .local v0, "ledARGB":I
    iget v2, v3, Landroid/app/Notification;->ledOnMS:I

    .line 2626
    .local v2, "ledOnMS":I
    iget v1, v3, Landroid/app/Notification;->ledOffMS:I

    .line 2627
    .local v1, "ledOffMS":I
    iget v5, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3

    .line 2628
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationColor:I

    .line 2629
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOn:I

    .line 2630
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mDefaultNotificationLedOff:I

    .line 2632
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v5, :cond_4

    .line 2634
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6, v2, v1}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .line 2638
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v5, v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightPulse(III)V

    goto :goto_0
.end method
