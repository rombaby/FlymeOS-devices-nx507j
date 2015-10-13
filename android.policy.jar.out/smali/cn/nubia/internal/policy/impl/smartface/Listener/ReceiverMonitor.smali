.class public Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;
.super Ljava/lang/Object;
.source "ReceiverMonitor.java"


# static fields
.field private static final ACTION_SAMRTFACE_STATE_CHANGED:Ljava/lang/String; = "com.nubia.smartface.state.changed"

.field private static final APP_IS_DIEPLAY_KEY:Ljava/lang/String; = "display"

.field private static final APP_PKGNAME_KEY:Ljava/lang/String; = "packageName"

.field private static final DEBUG:Z = false

.field private static final MSG_PHONE_STATE_CHANGED:I = 0xa

.field private static final MSG_SMART_FACE_STATE_CHANGED:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ReceiverUpdateMonitor"

.field private static volatile sInstance:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private isDismissKeyguard:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneState:I

.field mSmartfaceAppNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    .line 35
    iput v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    .line 37
    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->isDismissKeyguard:Z

    .line 39
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$1;-><init>(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$2;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor$2;-><init>(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->initReceiver()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->putAppViewMap(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->handleSmartFaceViewStateChanged()V

    return-void
.end method

.method private dismissSmartFaceMain()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->dismissSmartFaceScreen()V

    .line 199
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    sget-object v0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->sInstance:Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;

    return-object v0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleSmartFaceViewStateChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->isOtherSmartViewShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    .line 169
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 175
    invoke-direct {p0, v2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 176
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->showSmartFaceMain()V

    .line 177
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0

    .line 178
    :cond_2
    iget v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 180
    invoke-direct {p0, v2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 181
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->showLatticeMain()V

    .line 182
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0

    .line 183
    :cond_3
    iget v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 185
    invoke-direct {p0, v2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 186
    invoke-virtual {p0, v2}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setIsDismissKeyguard(Z)V

    goto :goto_0

    .line 188
    :cond_4
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    goto :goto_0
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    .line 103
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "com.nubia.smartface.state.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private putAppViewMap(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method private setNeedTurnOffScreen(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0, p1}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->setNeedTurnOffScreen(Z)V

    .line 195
    return-void
.end method

.method private showLatticeMain()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->showSmartFaceLatticeScreen()V

    .line 207
    return-void
.end method

.method private showSmartFaceMain()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    invoke-interface {v0}, Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;->showSmartFaceScreen()V

    .line 203
    return-void
.end method


# virtual methods
.method public getIsDismissKeyguard()Z
    .locals 1

    .prologue
    .line 246
    iget-boolean v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->isDismissKeyguard:Z

    return v0
.end method

.method public getPhoneState()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    return v0
.end method

.method protected handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 129
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iput v3, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    .line 138
    :cond_0
    :goto_0
    :try_start_0
    iget v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-nez v1, :cond_7

    .line 139
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 140
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 141
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->showSmartFaceMain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 132
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iput v4, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    goto :goto_0

    .line 134
    :cond_3
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iput v2, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    goto :goto_0

    .line 142
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 144
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->showLatticeMain()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 145
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->getSmartFaceDisplayFlag(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 146
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    goto :goto_1

    .line 148
    :cond_6
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V

    goto :goto_1

    .line 150
    :cond_7
    iget v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mPhoneState:I

    if-ne v1, v2, :cond_1

    .line 153
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/internal/policy/impl/smartface/util/SysPropUtils;->isSmartFaceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->setNeedTurnOffScreen(Z)V

    .line 155
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->dismissSmartFaceMain()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public isOtherSmartViewShow()Z
    .locals 5

    .prologue
    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "result":Z
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, "key":Ljava/lang/Object;
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 221
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mSmartfaceAppNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 222
    .local v3, "temp":Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 227
    .end local v1    # "key":Ljava/lang/Object;
    .end local v3    # "temp":Z
    :cond_3
    return v2
.end method

.method public register()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    :cond_0
    return-void
.end method

.method public registerCallback(Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;)V
    .locals 0
    .param p1, "l"    # Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    .prologue
    .line 98
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mCallback:Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;

    .line 99
    return-void
.end method

.method public setIsDismissKeyguard(Z)V
    .locals 0
    .param p1, "isDismissKeyguard"    # Z

    .prologue
    .line 250
    iput-boolean p1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->isDismissKeyguard:Z

    .line 251
    return-void
.end method

.method public unRegister()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/Listener/ReceiverMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 120
    :cond_0
    return-void
.end method
