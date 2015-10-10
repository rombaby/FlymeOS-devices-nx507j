.class public Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAccelerometer:Landroid/preference/SwitchPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

.field private mDozePreference:Landroid/preference/SwitchPreference;

.field private mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

.field private mHardware:Lmokee/hardware/MKHardwareManager;

.field private mLcdDensityPreference:Landroid/preference/ListPreference;

.field private mLiftToWakePreference:Landroid/preference/SwitchPreference;

.field private mListViewAnimation:Landroid/preference/ListPreference;

.field private mListViewInterpolator:Landroid/preference/ListPreference;

.field private mProximityWakePreference:Landroid/preference/SwitchPreference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mTapToWake:Landroid/preference/SwitchPreference;

.field private mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 750
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$5;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 137
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 146
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)Lcom/flyme/deviceoriginalsettings/FontDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/res/Resources;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .param p1, "screenTimeoutPreference"    # Landroid/preference/ListPreference;

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 428
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 429
    .local v4, "maxTimeout":J
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-nez v11, :cond_1

    .line 463
    :goto_1
    return-void

    .line 428
    .end local v4    # "maxTimeout":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 432
    .restart local v4    # "maxTimeout":J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 433
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 434
    .local v10, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v3, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v6, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 437
    aget-object v11, v10, v2

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 438
    .local v8, "timeout":J
    cmp-long v11, v8, v4

    if-gtz v11, :cond_2

    .line 439
    aget-object v11, v1, v2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 443
    .end local v8    # "timeout":J
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 444
    :cond_4
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 445
    .local v7, "userPreference":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 449
    int-to-long v12, v7

    cmp-long v11, v12, v4

    if-gtz v11, :cond_6

    .line 450
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 462
    .end local v7    # "userPreference":I
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 451
    .restart local v7    # "userPreference":I
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-nez v11, :cond_5

    .line 455
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 462
    .end local v7    # "userPreference":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private getCurrentDensity()I
    .locals 3

    .prologue
    .line 314
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 317
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 321
    :goto_0
    return v2

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 321
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_0
.end method

.method private getDefaultDensity()I
    .locals 3

    .prologue
    .line 303
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 306
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 310
    :goto_0
    return v2

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 310
    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_0
.end method

.method private initPulse(Landroid/preference/PreferenceCategory;)V
    .locals 2
    .param p1, "parent"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    const-string v0, "notification_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    :cond_1
    const-string v0, "battery_light"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 616
    :cond_2
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 617
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 619
    :cond_3
    return-void
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 335
    const v0, 0x1120023

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isLiftToWakeAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 331
    .local v0, "sensors":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x200

    .line 736
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 737
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v1

    .line 738
    .local v1, "mkHardwareManager":Lmokee/hardware/MKHardwareManager;
    invoke-virtual {v1, v5}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    const-string v3, "double_tap_wake_gesture"

    invoke-virtual {v1, v5}, Lmokee/hardware/MKHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 742
    .local v0, "enabled":Z
    invoke-virtual {v1, v5, v0}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 743
    const-string v3, "DisplaySettings"

    const-string v4, "Failed to restore tap-to-wake settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    return-void

    .line 745
    .restart local v0    # "enabled":Z
    :cond_1
    const-string v3, "DisplaySettings"

    const-string v4, "Tap-to-wake settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAccelerometerRotationSwitch()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 342
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayRotationPreferenceDescription()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    if-nez v6, :cond_0

    .line 390
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 354
    .local v3, "rotationEnabled":Z
    :cond_1
    if-nez v3, :cond_2

    .line 355
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0a0148

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 359
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v5, "summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accelerometer_rotation_angles"

    const/16 v8, 0xb

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 365
    .local v2, "mode":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v4, "rotationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 368
    .local v0, "delim":Ljava/lang/String;
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_3

    .line 369
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_3
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_4

    .line 372
    const-string v6, "90"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_4
    and-int/lit8 v6, v2, 0x4

    if-eqz v6, :cond_5

    .line 375
    const-string v6, "180"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_5
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_6

    .line 378
    const-string v6, "270"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 381
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_7

    .line 383
    const-string v0, ", "

    .line 380
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 385
    :cond_7
    const-string v0, " & "

    goto :goto_2

    .line 388
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0a0149

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateLcdDensityPreferenceDescription(I)V
    .locals 5
    .param p1, "currentDensity"    # I

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getDefaultDensity()I

    move-result v1

    if-ne p1, v1, :cond_0

    const v0, 0x7f0a0384

    .line 421
    .local v0, "summaryResId":I
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 422
    return-void

    .line 419
    .end local v0    # "summaryResId":I
    :cond_0
    const v0, 0x7f0a0383

    goto :goto_0
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 524
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->readFontSizePreference(Landroid/preference/Preference;)V

    .line 525
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 528
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_brightness_mode"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 531
    .local v0, "brightnessMode":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 535
    .end local v0    # "brightnessMode":I
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wake_gesture_enabled"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 537
    .local v3, "value":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 541
    .end local v3    # "value":I
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "doze_enabled"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 543
    .restart local v3    # "value":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 547
    .end local v3    # "value":I
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x11200b6

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 550
    .local v1, "defaultValue":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "proximity_on_wake"

    if-eqz v1, :cond_7

    move v4, v5

    :goto_3
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_8

    move v2, v5

    .line 552
    .local v2, "enabled":Z
    :goto_4
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 554
    .end local v1    # "defaultValue":Z
    .end local v2    # "enabled":Z
    :cond_3
    return-void

    .restart local v0    # "brightnessMode":I
    :cond_4
    move v4, v6

    .line 531
    goto :goto_0

    .end local v0    # "brightnessMode":I
    .restart local v3    # "value":I
    :cond_5
    move v4, v6

    .line 537
    goto :goto_1

    :cond_6
    move v4, v6

    .line 543
    goto :goto_2

    .end local v3    # "value":I
    .restart local v1    # "defaultValue":Z
    :cond_7
    move v4, v6

    .line 550
    goto :goto_3

    :cond_8
    move v2, v6

    goto :goto_4
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .param p1, "currentTimeout"    # J

    .prologue
    .line 393
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 395
    .local v3, "preference":Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 397
    const-string v4, ""

    .line 415
    .local v4, "summary":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    return-void

    .line 399
    .end local v4    # "summary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 400
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 401
    .local v5, "values":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 402
    :cond_1
    const-string v4, ""

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 404
    .end local v4    # "summary":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 405
    .local v0, "best":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_4

    .line 406
    aget-object v8, v5, v2

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 407
    .local v6, "timeout":J
    cmp-long v8, p1, v6

    if-ltz v8, :cond_3

    .line 408
    move v0, v2

    .line 405
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v6    # "timeout":J
    :cond_4
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a07db

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "summary":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeLcdDensityPreference(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # I

    .prologue
    .line 564
    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v5

    .line 566
    .local v5, "am":Landroid/app/IActivityManager;
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 568
    .local v3, "wm":Landroid/view/IWindowManager;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$4;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/content/Context;Landroid/view/IWindowManager;ILandroid/app/IActivityManager;)V

    .line 601
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 602
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super/range {p0 .. p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 158
    .local v4, "activity":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 159
    .local v20, "resolver":Landroid/content/ContentResolver;
    invoke-static {v4}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 161
    const v23, 0x7f07001f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 163
    const-string v23, "display"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 165
    .local v12, "displayPrefs":Landroid/preference/PreferenceCategory;
    const-string v23, "interface"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 168
    .local v15, "interfacePrefs":Landroid/preference/PreferenceCategory;
    const-string v23, "display_rotation"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDisplayRotationPreference:Landroid/preference/PreferenceScreen;

    .line 169
    const-string v23, "accelerometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 175
    :cond_0
    const-string v23, "listview_animation"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    .line 176
    const-string v23, "listview_animation"

    const/16 v24, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 178
    .local v16, "listviewanimation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    const-string v23, "listview_interpolator"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    .line 183
    const-string v23, "listview_interpolator"

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 185
    .local v17, "listviewinterpolator":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    const-string v23, "screensaver"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x112006b

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_1
    const-string v23, "screen_timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 197
    const-string v23, "screen_off_timeout"

    const-wide/16 v24, 0x7530

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 199
    .local v8, "currentTimeout":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 205
    const-string v23, "lcd_density"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/ListPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 207
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-eqz v23, :cond_8

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    :cond_2
    :goto_0
    const-string v23, "font_size"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/FontDialogPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/FontDialogPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 248
    const-string v23, "auto_brightness"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 258
    :cond_3
    :goto_1
    const-string v23, "lift_to_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_11

    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->isLiftToWakeAvailable(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 268
    :cond_4
    :goto_2
    const-string v23, "doze"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_12

    invoke-static {v4}, Lcom/flyme/deviceoriginalsettings/Utils;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 277
    :cond_5
    :goto_3
    const-string v23, "double_tap_wake_gesture"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    .line 278
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    move-object/from16 v23, v0

    const/16 v24, 0x200

    invoke-virtual/range {v23 .. v24}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v23

    if-nez v23, :cond_6

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    .line 284
    :cond_6
    const-string v23, "proximity_on_wake"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x11200b5

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v19

    .line 287
    .local v19, "proximityCheckOnWake":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    if-eqz v19, :cond_13

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 296
    :cond_7
    :goto_4
    const-string v23, "wake_when_plugged_or_unplugged"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    .line 299
    const-string v23, "lights"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->initPulse(Landroid/preference/PreferenceCategory;)V

    .line 300
    return-void

    .line 210
    .end local v19    # "proximityCheckOnWake":Z
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getDefaultDensity()I

    move-result v7

    .line 211
    .local v7, "defaultDensity":I
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getCurrentDensity()I

    move-result v5

    .line 212
    .local v5, "currentDensity":I
    const/16 v23, 0xa

    move/from16 v0, v23

    if-lt v5, v0, :cond_9

    const/16 v23, 0x3e8

    move/from16 v0, v23

    if-lt v5, v0, :cond_a

    .line 214
    :cond_9
    move v5, v7

    .line 217
    :cond_a
    const/16 v23, 0x1e0

    move/from16 v0, v23

    if-lt v7, v0, :cond_c

    const/16 v13, 0x28

    .line 218
    .local v13, "factor":I
    :goto_5
    mul-int/lit8 v23, v13, 0x4

    sub-int v18, v7, v23

    .line 219
    .local v18, "minimumDensity":I
    const/4 v6, -0x1

    .line 220
    .local v6, "currentIndex":I
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v10, v0, [Ljava/lang/String;

    .line 221
    .local v10, "densityEntries":[Ljava/lang/String;
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    .line 222
    .local v11, "densityValues":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "idx":I
    :goto_6
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ge v14, v0, :cond_e

    .line 223
    mul-int v23, v13, v14

    add-int v21, v18, v23

    .line 224
    .local v21, "val":I
    move/from16 v0, v21

    if-ne v0, v7, :cond_d

    const v22, 0x7f0a0384

    .line 228
    .local v22, "valueFormatResId":I
    :goto_7
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v10, v14

    .line 229
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v11, v14

    .line 230
    move/from16 v0, v21

    if-ne v5, v0, :cond_b

    .line 231
    move v6, v14

    .line 222
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 217
    .end local v6    # "currentIndex":I
    .end local v10    # "densityEntries":[Ljava/lang/String;
    .end local v11    # "densityValues":[Ljava/lang/String;
    .end local v13    # "factor":I
    .end local v14    # "idx":I
    .end local v18    # "minimumDensity":I
    .end local v21    # "val":I
    .end local v22    # "valueFormatResId":I
    :cond_c
    const/16 v13, 0x14

    goto :goto_5

    .line 224
    .restart local v6    # "currentIndex":I
    .restart local v10    # "densityEntries":[Ljava/lang/String;
    .restart local v11    # "densityValues":[Ljava/lang/String;
    .restart local v13    # "factor":I
    .restart local v14    # "idx":I
    .restart local v18    # "minimumDensity":I
    .restart local v21    # "val":I
    :cond_d
    const v22, 0x7f0a0383

    goto :goto_7

    .line 234
    .end local v21    # "val":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 236
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v6, v0, :cond_f

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 239
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLcdDensityPreference:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 240
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateLcdDensityPreferenceDescription(I)V

    goto/16 :goto_0

    .line 252
    .end local v5    # "currentDensity":I
    .end local v6    # "currentIndex":I
    .end local v7    # "defaultDensity":I
    .end local v10    # "densityEntries":[Ljava/lang/String;
    .end local v11    # "densityValues":[Ljava/lang/String;
    .end local v13    # "factor":I
    .end local v14    # "idx":I
    .end local v18    # "minimumDensity":I
    :cond_10
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_1

    .line 262
    :cond_11
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    goto/16 :goto_2

    .line 272
    :cond_12
    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 290
    .restart local v19    # "proximityCheckOnWake":Z
    :cond_13
    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "proximity_on_wake"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 511
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0d2b

    new-instance v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings$3;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 500
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 502
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 506
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 507
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 665
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "key":Ljava/lang/String;
    const-string v9, "screen_timeout"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 668
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 669
    .local v6, "value":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_off_timeout"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 670
    int-to-long v10, v6

    invoke-direct {p0, v10, v11}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v6    # "value":I
    :cond_0
    :goto_0
    return v8

    .line 671
    :catch_0
    move-exception v1

    .line 672
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "DisplaySettings"

    const-string v9, "could not persist screen timeout setting"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string v9, "lcd_density"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 676
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 677
    .restart local v6    # "value":I
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->writeLcdDensityPreference(Landroid/content/Context;I)V

    .line 678
    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateLcdDensityPreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 679
    .end local v6    # "value":I
    :catch_1
    move-exception v1

    .line 680
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "DisplaySettings"

    const-string v9, "could not persist display density setting"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 682
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const-string v9, "font_size"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 683
    invoke-virtual {p0, p2}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 684
    :cond_3
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAutoBrightnessPreference:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_5

    .line 685
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 686
    .local v0, "auto":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_brightness_mode"

    if-eqz v0, :cond_4

    move v7, v8

    :cond_4
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 688
    .end local v0    # "auto":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mLiftToWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_7

    .line 689
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 690
    .local v6, "value":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wake_gesture_enabled"

    if-eqz v6, :cond_6

    move v7, v8

    :cond_6
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 691
    .end local v6    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mDozePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_9

    .line 692
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 693
    .restart local v6    # "value":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "doze_enabled"

    if-eqz v6, :cond_8

    move v7, v8

    :cond_8
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 694
    .end local v6    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_9
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    if-ne p1, v9, :cond_a

    move-object v7, p2

    .line 695
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 696
    .local v4, "listviewanimation":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 697
    .local v2, "index":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "listview_animation"

    invoke-static {v7, v9, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 699
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 701
    .end local v2    # "index":I
    .end local v4    # "listviewanimation":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_a
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    if-ne p1, v9, :cond_b

    move-object v7, p2

    .line 702
    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 703
    .local v5, "listviewinterpolator":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 704
    .restart local v2    # "index":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "listview_interpolator"

    invoke-static {v7, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mListViewInterpolator:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 708
    .end local v2    # "index":I
    .end local v5    # "listviewinterpolator":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_b
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mProximityWakePreference:Landroid/preference/SwitchPreference;

    if-ne p1, v9, :cond_0

    .line 709
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 710
    .restart local v6    # "value":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "proximity_on_wake"

    if-eqz v6, :cond_c

    move v7, v8

    :cond_c
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 718
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    if-ne p1, v1, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->showDialog(I)V

    .line 726
    :goto_0
    return v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mFontSizePref:Lcom/flyme/deviceoriginalsettings/FontDialogPreference;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/FontDialogPreference;->click()V

    .line 726
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 648
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_0

    .line 649
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v1, 0x200

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    move-result v1

    .line 660
    :goto_0
    return v1

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_2

    .line 651
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wake_when_plugged_or_unplugged"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 655
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_3

    .line 656
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometer:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {v2, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 660
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v0

    .line 656
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 467
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 468
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V

    .line 470
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mTapToWake:Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Lmokee/hardware/MKHardwareManager;->get(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v2, v5}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 477
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 485
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120025

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 488
    .local v1, "wakeUpWhenPluggedOrUnpluggedConfig":Z
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 489
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mWakeWhenPluggedOrUnplugged:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wake_when_plugged_or_unplugged"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 494
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateState()V

    .line 495
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateAccelerometerRotationSwitch()V

    .line 496
    return-void

    :cond_2
    move v2, v4

    .line 489
    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public readFontSizePreference(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 626
    :try_start_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 633
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v2, v3}, Lcom/flyme/deviceoriginalsettings/FontDialogPreference;->getFontSizeDescription(Landroid/content/res/Resources;F)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "fontDesc":Ljava/lang/String;
    const v3, 0x7f0a07ed

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 635
    return-void

    .line 627
    .end local v1    # "fontDesc":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "DisplaySettings"

    const-string v4, "Unable to retrieve font size"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 640
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
