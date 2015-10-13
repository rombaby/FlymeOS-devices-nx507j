.class public Lcn/nubia/server/A2iService;
.super Lcn/nubia/server/NubiaSystemService;
.source "A2iService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/A2iService$A2iSettingManager;,
        Lcn/nubia/server/A2iService$BinderService;
    }
.end annotation


# static fields
.field private static final A2I_INTENT:Ljava/lang/String; = "a2i.intent.action.EVENT"

.field public static final A2I_TRIGGER_MODE:Ljava/lang/String; = "a2i_trigger_mode"

.field public static final A2I_USER1_VOICE_APP:Ljava/lang/String; = "a2i_user1_voice_app"

.field public static final A2I_USER1_VOICE_ENABLED:Ljava/lang/String; = "a2i_user1_voice_enabled"

.field public static final A2I_USER2_VOICE_APP:Ljava/lang/String; = "a2i_user2_voice_app"

.field public static final A2I_USER2_VOICE_ENABLED:Ljava/lang/String; = "a2i_user2_voice_enabled"

.field public static final A2I_USER3_VOICE_APP:Ljava/lang/String; = "a2i_user3_voice_app"

.field public static final A2I_USER3_VOICE_ENABLED:Ljava/lang/String; = "a2i_user3_voice_enabled"

.field public static final A2I_USER4_VOICE_APP:Ljava/lang/String; = "a2i_user4_voice_app"

.field public static final A2I_USER4_VOICE_ENABLED:Ljava/lang/String; = "a2i_user4_voice_enabled"

.field public static final A2I_USER_INDEP_VOICE_ENABLED:Ljava/lang/String; = "a2i_user_indep_voice_enabled"

.field private static final FAILURE:I = -0x1

.field private static final MATCHED_PATTERN_ID_USER1:I = 0x1

.field private static final MATCHED_PATTERN_ID_USER2:I = 0x2

.field private static final MATCHED_PATTERN_ID_USER3:I = 0x3

.field private static final MATCHED_PATTERN_ID_USER4:I = 0x4

.field private static final MATCHED_PATTERN_ID_USER_INDEP:I = 0x5

.field private static final MAX_TRAINING_COUNT:I = 0x3

.field private static final SERVICE_NAME:Ljava/lang/String; = "a2i"

.field private static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "A2iService"

.field private static final TRAINING_COUNT_MASK:I = 0x3

.field private static final TRAINING_SCORE_GOOD:I = 0x0

.field private static final TRAINING_SCORE_HIGH_VOLUME:I = 0x1

.field private static final TRAINING_SCORE_INCONSISTENT:I = 0x80

.field private static final TRAINING_SCORE_LONG_CMD:I = 0x4

.field private static final TRAINING_SCORE_LOW_VOLUME:I = 0x2

.field private static final TRAINING_SCORE_MASK:I = 0xff00

.field private static final TRAINING_SCORE_NOISY_ENV:I = 0x10

.field private static final TRAINING_SCORE_SHIFT:I = 0x8

.field private static final TRAINING_SCORE_SHORT_CMD:I = 0x8

.field private static final TRAINING_SCORE_SIMPLE_CMD:I = 0x20


# instance fields
.field private mA2iServiceAvailable:Z

.field private mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/A2iService;->mLock:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/A2iService;->mA2iServiceAvailable:Z

    .line 263
    new-instance v0, Lcn/nubia/server/A2iService$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/A2iService$2;-><init>(Lcn/nubia/server/A2iService;)V

    iput-object v0, p0, Lcn/nubia/server/A2iService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 247
    iput-object p1, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;

    .line 249
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/A2iService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/server/A2iService;->startA2iObserver()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    invoke-static {p0}, Lcn/nubia/server/A2iService;->nativeValidateUserData(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    invoke-static {p0}, Lcn/nubia/server/A2iService;->nativeRemoveUserData(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/server/A2iService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/server/A2iService;->showA2iToast()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/server/A2iService;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcn/nubia/server/A2iService;->updateA2iNotification()V

    return-void
.end method

.method static synthetic access$1400(IZ)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Z

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcn/nubia/server/A2iService;->nativeEnableDetection(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    invoke-static {p0}, Lcn/nubia/server/A2iService;->nativeSetTriggerMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    invoke-static {p0}, Lcn/nubia/server/A2iService;->nativeSaveUserData(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/server/A2iService;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/A2iService;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService;->sendErrorUserdataEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/server/A2iService;Lcn/nubia/server/A2iService$A2iSettingManager;)Lcn/nubia/server/A2iService$A2iSettingManager;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/A2iService;
    .param p1, "x1"    # Lcn/nubia/server/A2iService$A2iSettingManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/server/A2iService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/server/A2iService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/server/A2iService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/server/A2iService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/server/A2iService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService;

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/server/A2iService;Landroid/os/UEventObserver$UEvent;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/A2iService;
    .param p1, "x1"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService;->handleA2iEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method static synthetic access$900(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 59
    invoke-static {p0}, Lcn/nubia/server/A2iService;->nativeLoadUserData(I)I

    move-result v0

    return v0
.end method

.method private handleA2iEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v8, 0x1

    .line 282
    const-string v5, "EVENT_CLASS"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "eventClass":Ljava/lang/String;
    const-string v5, "fff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleA2iEvent: eventClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v5, "APPCODE_READY"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 287
    invoke-direct {p0}, Lcn/nubia/server/A2iService;->loadSettingData()V

    .line 288
    const-string v5, "fff"

    const-string v6, "handleA2iEvent APPCODE_READY"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-boolean v8, p0, Lcn/nubia/server/A2iService;->mA2iServiceAvailable:Z

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const-string v5, "VOICE_TRIGGER"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    const-string v5, "EVENT_CODE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, "triggerId":I
    invoke-direct {p0, v4}, Lcn/nubia/server/A2iService;->handleVoiceTrigger(I)V

    goto :goto_0

    .line 293
    .end local v4    # "triggerId":I
    :cond_2
    const-string v5, "TRAINING_INFO"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    const-string v5, "EVENT_CODE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 295
    .local v2, "info":I
    and-int/lit8 v0, v2, 0x3

    .line 296
    .local v0, "count":I
    const v5, 0xff00

    and-int/2addr v5, v2

    shr-int/lit8 v3, v5, 0x8

    .line 298
    .local v3, "score":I
    invoke-direct {p0, v0, v3}, Lcn/nubia/server/A2iService;->sendTrainingEvent(II)V

    .line 299
    const-string v5, "fff"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Training info: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", score: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v5, 0x3

    if-ne v0, v5, :cond_0

    .line 303
    iget-object v5, p0, Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v5, v8}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainingState(Z)V

    goto :goto_0
.end method

.method private handleVoiceTrigger(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 374
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 375
    iget-object v1, p0, Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/A2iService$5;

    invoke-direct {v2, p0}, Lcn/nubia/server/A2iService$5;-><init>(Lcn/nubia/server/A2iService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v1, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->getRegisteredAppName(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "packName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    :cond_1
    const-string v1, "A2iService"

    const-string v2, "No app registered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcn/nubia/server/A2iService$6;

    invoke-direct {v2, p0, v0}, Lcn/nubia/server/A2iService$6;-><init>(Lcn/nubia/server/A2iService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private loadSettingData()V
    .locals 2

    .prologue
    .line 309
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 312
    invoke-direct {p0, v0}, Lcn/nubia/server/A2iService;->updateUserSetting(I)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    invoke-direct {p0}, Lcn/nubia/server/A2iService;->updateTriggerMode()V

    .line 316
    return-void
.end method

.method private static native nativeEnableDetection(IZ)I
.end method

.method private static native nativeInit()Ljava/lang/String;
.end method

.method private static native nativeLoadUserData(I)I
.end method

.method private static native nativeRemoveUserData(I)I
.end method

.method private static native nativeSaveUserData(I)I
.end method

.method private static native nativeSetTrainingMode(I)I
.end method

.method private static native nativeSetTriggerMode(I)I
.end method

.method private static native nativeValidateUserData(I)I
.end method

.method private sendErrorUserdataEvent(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 434
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/server/A2iService;->getA2iIntentInternal()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "error_userdata"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    iget-object v1, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 438
    return-void
.end method

.method private sendTrainingEvent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "score"    # I

    .prologue
    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/nubia/server/A2iService;->getA2iIntentInternal()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "training_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    const-string v1, "training_score"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 431
    return-void
.end method

.method private showA2iToast()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x30c005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    return-void
.end method

.method private startA2iObserver()I
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcn/nubia/server/A2iService;->nativeInit()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "ueventPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 256
    const/4 v1, -0x1

    .line 260
    :goto_0
    return v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/A2iService;->mUEventObserver:Landroid/os/UEventObserver;

    invoke-virtual {v1, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 260
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateA2iNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x30c005c

    .line 411
    iget-object v3, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 413
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x302005b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 419
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 421
    .local v0, "noti":Landroid/app/NotificationManager;
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v5, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 422
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v5, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 423
    return-void
.end method

.method private updateTriggerMode()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/A2iService$4;

    invoke-direct {v1, p0}, Lcn/nubia/server/A2iService$4;-><init>(Lcn/nubia/server/A2iService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void
.end method

.method private updateUserSetting(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/A2iService$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/A2iService$3;-><init>(Lcn/nubia/server/A2iService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method private validateUserData(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 319
    invoke-static {p1}, Lcn/nubia/server/A2iService;->nativeValidateUserData(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 320
    const-string v0, "A2iService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getA2iIntentInternal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const-string v0, "a2i.intent.action.EVENT"

    return-object v0
.end method

.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 129
    const-string v0, "a2i"

    invoke-virtual {p0, v0}, Lcn/nubia/server/A2iService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "a2i"

    return-object v0
.end method

.method public getTrainingResultInternal(I)Ljava/lang/String;
    .locals 4
    .param p1, "score"    # I

    .prologue
    .line 206
    iget-object v2, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, "r":Landroid/content/res/Resources;
    const-string v1, ""

    .line 209
    .local v1, "result":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c005e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c005f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    :cond_1
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_2

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c0060

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_2
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c0061

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_3
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_4

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c0062

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_4
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_5

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c0063

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_5
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_6

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x30c0064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    return-object v1
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 138
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcn/nubia/server/A2iService;->mPowerManager:Landroid/os/PowerManager;

    .line 139
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "A2iService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    iget-object v0, p0, Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;

    new-instance v1, Lcn/nubia/server/A2iService$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/A2iService$1;-><init>(Lcn/nubia/server/A2iService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public isServiceAvailableInternal()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcn/nubia/server/A2iService;->mA2iServiceAvailable:Z

    return v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 120
    const-string v0, "A2iService"

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

    .line 121
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcn/nubia/server/A2iService;->init()V

    .line 115
    const-string v0, "a2i"

    new-instance v1, Lcn/nubia/server/A2iService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/server/A2iService$BinderService;-><init>(Lcn/nubia/server/A2iService;Lcn/nubia/server/A2iService$1;)V

    invoke-virtual {p0, v0, v1}, Lcn/nubia/server/A2iService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 116
    return-void
.end method

.method public setTrainingModeInternal(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 199
    invoke-static {p1}, Lcn/nubia/server/A2iService;->nativeSetTrainingMode(I)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
