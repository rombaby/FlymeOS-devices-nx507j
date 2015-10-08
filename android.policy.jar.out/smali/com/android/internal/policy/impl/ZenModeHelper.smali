.class public Lcom/android/internal/policy/impl/ZenModeHelper;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioManager:Landroid/media/AudioManagerInternal;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private final mContext:Landroid/content/Context;

.field private mEffectsSuppressed:Z

.field private mPreviousRingerMode:I

.field private mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mPreviousRingerMode:I

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    .line 56
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/ZenModeHelper;->readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 58
    return-void
.end method

.method private applyRestrictions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    iget v4, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_0

    move v1, v2

    .line 114
    .local v1, "zen":Z
    :goto_0
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/ZenModeHelper;->applyRestrictions(ZI)V

    .line 117
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v4, v4, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v4, :cond_1

    move v4, v2

    :goto_1
    const/4 v5, 0x6

    invoke-direct {p0, v4, v5}, Lcom/android/internal/policy/impl/ZenModeHelper;->applyRestrictions(ZI)V

    .line 120
    iget v4, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 121
    .local v0, "muteAlarms":Z
    :goto_2
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/ZenModeHelper;->applyRestrictions(ZI)V

    .line 122
    return-void

    .end local v0    # "muteAlarms":Z
    .end local v1    # "zen":Z
    :cond_0
    move v1, v3

    .line 111
    goto :goto_0

    .restart local v1    # "zen":Z
    :cond_1
    move v4, v3

    .line 117
    goto :goto_1

    :cond_2
    move v0, v3

    .line 120
    goto :goto_2
.end method

.method private applyRestrictions(ZI)V
    .locals 6
    .param p1, "mute"    # Z
    .param p2, "usage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "exceptionPackages":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v5, 0x3

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, p2, v1, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x1c

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v1, v4, p2, v2, v0}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    .line 132
    return-void

    :cond_0
    move v1, v3

    .line 126
    goto :goto_0

    :cond_1
    move v2, v3

    .line 129
    goto :goto_1
.end method

.method private applyZenToRingerMode()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 85
    iget-object v2, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {v2}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result v1

    .line 88
    .local v1, "ringerModeInternal":I
    move v0, v1

    .line 89
    .local v0, "newRingerModeInternal":I
    iget v2, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mZenMode:I

    packed-switch v2, :pswitch_data_0

    .line 105
    :cond_2
    :goto_1
    if-eq v0, v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v3, "ZenModeHelper"

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    goto :goto_0

    .line 91
    :pswitch_0
    if-eqz v1, :cond_2

    .line 92
    iput v1, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mPreviousRingerMode:I

    .line 93
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    :pswitch_1
    if-nez v1, :cond_2

    .line 99
    iget v2, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mPreviousRingerMode:I

    if-eq v2, v3, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mPreviousRingerMode:I

    .line 101
    :goto_2
    iput v3, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mPreviousRingerMode:I

    goto :goto_1

    .line 99
    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readDefaultConfig(Landroid/content/res/Resources;)Landroid/service/notification/ZenModeConfig;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const v3, 0x1110003

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 64
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 65
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 66
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 73
    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    :goto_0
    return-object v0

    .line 71
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 73
    :goto_1
    new-instance v0, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ZenModeHelper"

    const-string v4, "Error reading default zen mode config from resource"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method


# virtual methods
.method public setZenMode(I)V
    .locals 3
    .param p1, "zenMode"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mZenMode:I

    if-ne v0, p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 78
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mZenMode:I

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget v2, p0, Lcom/android/internal/policy/impl/ZenModeHelper;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ZenModeHelper;->applyZenToRingerMode()V

    .line 81
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ZenModeHelper;->applyRestrictions()V

    goto :goto_0
.end method
