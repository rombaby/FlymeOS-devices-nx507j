.class public Lcom/flyme/deviceoriginalsettings/SoundSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;,
        Lcom/flyme/deviceoriginalsettings/SoundSettings$H;,
        Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;,
        Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

.field private mIncreasingRing:Landroid/preference/TwoStatePreference;

.field private mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

.field private final mIncreasingRingVolumeCallback:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference$Callback;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mNotificationPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/preference/Preference;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPhoneRingtonePreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;

.field private mRingPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field private final mVolumeCallback:Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

.field private mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->TAG:Ljava/lang/String;

    .line 607
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$4;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$4;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 92
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;Lcom/flyme/deviceoriginalsettings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeCallback:Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

    .line 93
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference$Callback;

    .line 103
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;Lcom/flyme/deviceoriginalsettings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    .line 104
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;

    .line 105
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;Lcom/flyme/deviceoriginalsettings/SoundSettings$1;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mReceiver:Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingerMode:I

    .line 341
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 578
    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeCallback:Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1100(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateNotificationPreferenceState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 255
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 257
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 258
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 260
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 261
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 270
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/flyme/deviceoriginalsettings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private initIncreasingRing(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v1, 0x0

    .line 412
    const-string v0, "increasing_ring"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 414
    const-string v0, "increasing_ring_volume"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    .line 417
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRing:Landroid/preference/TwoStatePreference;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    .line 431
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolumeCallback:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference$Callback;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;->setCallback(Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference$Callback;)V

    goto :goto_0
.end method

.method private initRingtones(Landroid/preference/PreferenceCategory;)V
    .locals 12
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 307
    const-string v6, "ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;

    .line 309
    .local v1, "phoneRingtonePreference":Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVoiceCapable:Z

    if-nez v6, :cond_1

    .line 310
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    iput-object v11, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 334
    :cond_0
    :goto_0
    const-string v6, "notification_ringtone"

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;

    .line 335
    return-void

    .line 313
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    .line 314
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 316
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 317
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    const-string v6, "sounds"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 319
    .local v3, "soundCategory":Landroid/preference/PreferenceCategory;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 320
    new-instance v2, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v11}, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    .local v2, "ringtonePreference":Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;
    const v6, 0x7f0a03ab

    new-array v7, v10, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "title":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {v2, v0}, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;->setSubId(I)V

    .line 325
    invoke-virtual {v2, v9}, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;->setOrder(I)V

    .line 326
    invoke-virtual {v2, v10}, Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;->setRingtoneType(I)V

    .line 327
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "i":I
    .end local v2    # "ringtonePreference":Lcom/flyme/deviceoriginalsettings/DefaultRingtonePreference;
    .end local v3    # "soundCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "title":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPhoneRingtonePreferences:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 436
    const-string v0, "vibrate_when_ringing"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    .line 437
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 438
    sget-object v0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setPersistent(Z)V

    .line 447
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateVibrateWhenRinging()V

    .line 448
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/SoundSettings$3;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    .line 216
    .local v0, "volumePref":Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 221
    .end local v0    # "volumePref":Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;
    :goto_0
    return-object v0

    .line 217
    .restart local v0    # "volumePref":Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeCallback:Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->setCallback(Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference$Callback;)V

    .line 218
    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 219
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v0, p3}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    goto :goto_0
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method private refreshNotificationListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 486
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v1

    .line 488
    .local v1, "total":I
    if-nez v1, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 502
    .end local v1    # "total":I
    :cond_0
    :goto_0
    return-void

    .line 491
    .restart local v1    # "total":I
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/notification/NotificationAccessSettings;->getEnabledListenersCount(Landroid/content/Context;)I

    move-result v0

    .line 492
    .local v0, "n":I
    if-nez v0, :cond_2

    .line 493
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0de7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d000f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEffectsSuppressor()V
    .locals 7

    .prologue
    .line 242
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 243
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 244
    :cond_0
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 245
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    if-eqz v2, :cond_1

    .line 246
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    const v3, 0x1040767

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "text":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 251
    .end local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateRingOrNotificationPreference()V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateNotificationPreferenceState()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 466
    const-string v3, "notification_volume"

    const/4 v4, 0x5

    const v5, 0x108031f

    invoke-direct {p0, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    .line 470
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVoiceCapable:Z

    if-eqz v3, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volume_link_notification"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 474
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    if-eqz v3, :cond_0

    .line 475
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->setEnabled(Z)V

    .line 477
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 481
    .end local v0    # "enabled":Z
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 471
    goto :goto_0

    .restart local v0    # "enabled":Z
    :cond_3
    move v1, v2

    .line 475
    goto :goto_1
.end method

.method private updateRingOrNotificationPreference()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const v0, 0x108031f

    :goto_0
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 232
    :cond_0
    return-void

    .line 226
    :cond_1
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingerMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const v0, 0x1080320

    goto :goto_0

    :cond_2
    const v0, 0x108031e

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 235
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 236
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingerMode:I

    .line 238
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateRingOrNotificationPreference()V

    goto :goto_0
.end method

.method private static updateRingtoneName(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "subId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 366
    if-nez p0, :cond_1

    .line 367
    sget-object v0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->TAG:Ljava/lang/String;

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    :goto_0
    return-object v7

    .line 371
    :cond_1
    if-ne p1, v0, :cond_2

    if-gtz p2, :cond_3

    .line 372
    :cond_2
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 376
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :goto_1
    const v0, 0x1040589

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 379
    const v0, 0x1040587

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 374
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    goto :goto_1

    .line 381
    .restart local v7    # "summary":Ljava/lang/CharSequence;
    :cond_4
    const/4 v6, 0x0

    .line 383
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 391
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 393
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 401
    :cond_6
    if-eqz v6, :cond_0

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 387
    :cond_7
    :try_start_1
    const-string v0, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_2

    .line 396
    :catch_0
    move-exception v0

    .line 401
    if-eqz v6, :cond_0

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 398
    :catch_1
    move-exception v0

    .line 401
    if-eqz v6, :cond_0

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    if-nez v1, :cond_0

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_when_ringing"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    .line 130
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 131
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVoiceCapable:Z

    .line 133
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 135
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 139
    :cond_0
    const v5, 0x7f070051

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->addPreferencesFromResource(I)V

    .line 141
    const-string v5, "volumes"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 142
    .local v4, "volumes":Landroid/preference/PreferenceCategory;
    const-string v5, "sounds"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 143
    .local v2, "sounds":Landroid/preference/PreferenceCategory;
    const-string v5, "vibrate"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 145
    .local v3, "vibrate":Landroid/preference/PreferenceCategory;
    const-string v5, "media_volume"

    const/4 v6, 0x3

    const v7, 0x1080322

    invoke-direct {p0, v5, v6, v7}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    .line 147
    const-string v5, "alarm_volume"

    const/4 v6, 0x4

    const v7, 0x1080313

    invoke-direct {p0, v5, v6, v7}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    .line 149
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVoiceCapable:Z

    if-eqz v5, :cond_2

    .line 150
    const-string v5, "ring_volume"

    const/4 v6, 0x2

    const v7, 0x108031f

    invoke-direct {p0, v5, v6, v7}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mRingPreference:Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    .line 153
    const-string v5, "volume_link_notification"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeLinkNotificationSwitch:Landroid/preference/SwitchPreference;

    .line 160
    :goto_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 161
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    const/16 v5, 0x400

    invoke-virtual {v0, v5}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    const-string v5, "vibration_intensity"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 163
    .local v1, "preference":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    .end local v1    # "preference":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initRingtones(Landroid/preference/PreferenceCategory;)V

    .line 169
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initIncreasingRing(Landroid/preference/PreferenceCategory;)V

    .line 170
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->initVibrateWhenRinging(Landroid/preference/PreferenceCategory;)V

    .line 172
    const-string v5, "manage_notification_access"

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 173
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->refreshNotificationListeners()V

    .line 174
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateRingerMode()V

    .line 175
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateEffectsSuppressor()V

    .line 176
    return-void

    .line 156
    .end local v0    # "hardware":Lmokee/hardware/MKHardwareManager;
    :cond_2
    const-string v5, "ring_volume"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    const-string v5, "volume_link_notification"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 199
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeCallback:Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 200
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->register(Z)V

    .line 204
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mReceiver:Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->register(Z)V

    .line 205
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 180
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->refreshNotificationListeners()V

    .line 182
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->lookupRingtoneNames()V

    .line 183
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateNotificationPreferenceState()V

    .line 184
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->register(Z)V

    .line 185
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mReceiver:Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/SoundSettings$Receiver;->register(Z)V

    .line 186
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateRingOrNotificationPreference()V

    .line 187
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateEffectsSuppressor()V

    .line 188
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;

    .line 189
    .local v1, "volumePref":Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;->onActivityResume()V

    goto :goto_0

    .line 191
    .end local v1    # "volumePref":Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference;
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;->onActivityResume()V

    .line 194
    :cond_1
    return-void
.end method
