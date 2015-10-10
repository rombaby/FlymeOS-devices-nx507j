.class public Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;
.implements Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$SystemPropPoker;
    }
.end annotation


# static fields
.field private static DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbKeysDialog:Landroid/app/Dialog;

.field private mAdbNotify:Landroid/preference/SwitchPreference;

.field private mAdbOverNetwork:Landroid/preference/SwitchPreference;

.field private mAdbTcpDialog:Landroid/app/Dialog;

.field private mAdvancedReboot:Landroid/preference/SwitchPreference;

.field private final mAllPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowMockLocation:Landroid/preference/SwitchPreference;

.field private mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

.field private mAppProcessLimit:Landroid/preference/ListPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBtHciSnoopLog:Landroid/preference/SwitchPreference;

.field private mBugreport:Landroid/preference/Preference;

.field private mBugreportInPower:Landroid/preference/SwitchPreference;

.field private mClearAdbKeys:Landroid/preference/Preference;

.field private mDebugApp:Ljava/lang/String;

.field private mDebugAppPref:Landroid/preference/Preference;

.field private mDebugHwOverdraw:Landroid/preference/ListPreference;

.field private mDebugLayout:Landroid/preference/SwitchPreference;

.field private mDebugViewAttributes:Landroid/preference/SwitchPreference;

.field private mDevelopmentShortcut:Landroid/preference/SwitchPreference;

.field private mDevelopmentTools:Landroid/preference/PreferenceScreen;

.field private mDialogClicked:Z

.field private mDisableOverlays:Landroid/preference/SwitchPreference;

.field private final mDisabledPrefs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mDontPokeProperties:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableAdb:Landroid/preference/SwitchPreference;

.field private mEnableDialog:Landroid/app/Dialog;

.field private mEnableOemUnlock:Landroid/preference/SwitchPreference;

.field private mEnableTerminal:Landroid/preference/SwitchPreference;

.field private mForceHardwareUi:Landroid/preference/SwitchPreference;

.field private mForceHighEndGfx:Landroid/preference/SwitchPreference;

.field private mForceMsaa:Landroid/preference/SwitchPreference;

.field private mForceRtlLayout:Landroid/preference/SwitchPreference;

.field private mHaveDebugSettings:Z

.field private mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

.field private mKeepScreenOn:Landroid/preference/ListPreference;

.field private mKillAppLongpressBack:Landroid/preference/SwitchPreference;

.field private mLastEnabledState:Z

.field private mLogdSize:Landroid/preference/ListPreference;

.field private mOpenGLTraces:Landroid/preference/ListPreference;

.field private mOverlayDisplayDevices:Landroid/preference/ListPreference;

.field private mPassword:Landroid/preference/PreferenceScreen;

.field private mPointerLocation:Landroid/preference/SwitchPreference;

.field private mProcessStats:Landroid/preference/PreferenceScreen;

.field private mQuickBoot:Landroid/preference/SwitchPreference;

.field private final mResetSwitchPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRootAccess:Landroid/preference/ListPreference;

.field private mRootDialog:Landroid/app/Dialog;

.field private mSelectedRootValue:Ljava/lang/Object;

.field private mShowAllANRs:Landroid/preference/SwitchPreference;

.field private mShowCpuUsage:Landroid/preference/SwitchPreference;

.field private mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

.field private mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowNonRectClip:Landroid/preference/ListPreference;

.field private mShowScreenUpdates:Landroid/preference/SwitchPreference;

.field private mShowTouches:Landroid/preference/SwitchPreference;

.field private mSimulateColorSpace:Landroid/preference/ListPreference;

.field private mStrictMode:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

.field private mTrackFrameTime:Landroid/preference/ListPreference;

.field private mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

.field private mUSBAudio:Landroid/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUseAwesomePlayer:Landroid/preference/SwitchPreference;

.field private mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

.field private mWaitForDebugger:Landroid/preference/SwitchPreference;

.field private mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

.field private mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

.field private mWifiDisplayCertification:Landroid/preference/SwitchPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiVerboseLogging:Landroid/preference/SwitchPreference;

.field private mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "262144"

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1979
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$2;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    .line 1949
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAllOptions()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v0

    return v0
.end method

.method private addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 451
    .local v0, "pref":Landroid/preference/ListPreference;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    return-object v0
.end method

.method private confirmEnableOemUnlock()V
    .locals 4

    .prologue
    .line 1531
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;)V

    .line 1539
    .local v0, "onConfirmListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0a1f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0a20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0943

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1546
    return-void
.end method

.method private static currentStrictModeActiveIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 971
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 975
    .local v0, "enabled":Z
    :goto_0
    return v1

    .line 974
    .end local v0    # "enabled":Z
    :cond_0
    const-string v2, "persist.sys.strictmode.visual"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 975
    .restart local v0    # "enabled":Z
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private disableForUser(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    return-void
.end method

.method private dismissDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1843
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1844
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1845
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1849
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1851
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1852
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1853
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    .line 1855
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 1856
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1857
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1859
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 1860
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1861
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1863
    :cond_4
    return-void
.end method

.method private enableVerifierSetting()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 918
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 919
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "adb_enabled"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    .line 934
    :cond_0
    :goto_0
    return v4

    .line 922
    :cond_1
    const-string v6, "package_verifier_enable"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 925
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 926
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .local v3, "verification":Landroid/content/Intent;
    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 929
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 930
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 934
    goto :goto_0
.end method

.method private findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    .line 465
    .local v0, "pref":Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;
    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 466
    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    return-object v0
.end method

.method private findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 473
    .local v0, "pref":Landroid/preference/SwitchPreference;
    if-nez v0, :cond_0

    .line 474
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_0
    const-string v1, "enable_adb"

    if-ne p1, v1, :cond_1

    const-string v1, "charging"

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a02f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 479
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    return-object v0
.end method

.method public static isRootForAppsEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 756
    const-string v4, "persist.sys.root_access"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 757
    .local v1, "value":I
    const-string v4, "init.svc.su_daemon"

    const-string v5, "absent"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "running"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 759
    .local v0, "daemonState":Z
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 523
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method private removePreferenceForProduction(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 514
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 516
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeRootOptionsIfRequired()Z
    .locals 2

    .prologue
    .line 488
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 491
    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetAdbNotifyOptions()V
    .locals 3

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_notify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 792
    return-void
.end method

.method private resetDangerousOptions()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 719
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 720
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 721
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 722
    .local v0, "cb":Landroid/preference/SwitchPreference;
    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {v0, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 724
    invoke-virtual {p0, v4, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 720
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    .end local v0    # "cb":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetDebuggerOptions()V

    .line 728
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    .line 729
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetRootAccessOptions()V

    .line 730
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetAdbNotifyOptions()V

    .line 731
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetVerifyAppsOverUsbOptions()V

    .line 732
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetDevelopmentShortcutOptions()V

    .line 733
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v5, v2, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 734
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v3, v2, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 735
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v2, v3, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V

    .line 737
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->usingDevelopmentColorSpace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 738
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 740
    :cond_2
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    .line 741
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    .line 742
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 743
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAllOptions()V

    .line 744
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDontPokeProperties:Z

    .line 745
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 746
    return-void
.end method

.method private static resetDebuggerOptions()V
    .locals 4

    .prologue
    .line 871
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 873
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_shortcut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 677
    return-void
.end method

.method private resetRootAccessOptions()V
    .locals 4

    .prologue
    .line 777
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, "oldValue":Ljava/lang/String;
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "service.adb.root"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 783
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 787
    return-void
.end method

.method private resetVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "verifier_verify_adb_installs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 904
    return-void
.end method

.method private setPrefsEnabledState(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 527
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 529
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 529
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 531
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAllOptions()V

    .line 532
    return-void
.end method

.method private static showEnableOemUnlockPreference()Z
    .locals 2

    .prologue
    .line 943
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I

    .prologue
    .line 1771
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0a0a1d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0a1e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 938
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAdbOverNetwork()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_port"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 693
    .local v3, "port":I
    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 695
    .local v1, "enabled":Z
    :cond_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v6, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 697
    const/4 v4, 0x0

    .line 699
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 700
    const-string v6, "wifi"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v5

    .line 703
    .local v5, "wifiManager":Landroid/net/wifi/IWifiManager;
    :try_start_0
    invoke-interface {v5}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 709
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 710
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "hostAddress":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 716
    .end local v2    # "hostAddress":Ljava/lang/String;
    :goto_1
    return-void

    .line 704
    .restart local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "DevelopmentSettings"

    const-string v7, "wifiManager, getConnectionInfo()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 714
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "wifiManager":Landroid/net/wifi/IWifiManager;
    :cond_2
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    const v7, 0x7f0a0177

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private updateAdvancedRebootOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 670
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "advanced_reboot"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 672
    return-void
.end method

.method private updateAllOptions()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 597
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 598
    .local v1, "cr":Landroid/content/ContentResolver;
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 599
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    const-string v2, "adb_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {p0, v5, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 601
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    const-string v2, "adb_notify"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 603
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 604
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 605
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v6, "com.android.terminal"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {p0, v5, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 609
    :cond_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    invoke-virtual {p0, v5, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 611
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 612
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    const-string v2, "bluetooth_hci_log"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {p0, v5, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 614
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/Utils;->isOemUnlockEnabled(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 617
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    const-string v2, "mock_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {p0, v5, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 619
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    const-string v2, "debug_view_attributes"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_6
    invoke-virtual {p0, v5, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 621
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    const-string v5, "enable_quickboot"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    :goto_7
    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 622
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateHdcpValues()V

    .line 623
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updatePasswordSummary()V

    .line 624
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 625
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateStrictModeVisualOptions()V

    .line 626
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updatePointerLocationOptions()V

    .line 627
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateShowTouchesOptions()V

    .line 628
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateFlingerOptions()V

    .line 629
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateCpuUsageOptions()V

    .line 630
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateHardwareUiOptions()V

    .line 631
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateMsaaOptions()V

    .line 632
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 633
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 634
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateShowHwScreenUpdatesOptions()V

    .line 635
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateShowHwLayersUpdatesOptions()V

    .line 636
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 637
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateDebugLayoutOptions()V

    .line 638
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAnimationScaleOptions()V

    .line 639
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 640
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 641
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateImmediatelyDestroyActivitiesOptions()V

    .line 642
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAppProcessLimitOptions()V

    .line 643
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateShowAllANRsOptions()V

    .line 644
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 645
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 646
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateForceRtlOptions()V

    .line 647
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 648
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateWifiDisplayCertificationOptions()V

    .line 649
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateWifiVerboseLoggingOptions()V

    .line 650
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateWifiAggressiveHandoverOptions()V

    .line 651
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateWifiAllowScansWithTrafficOptions()V

    .line 652
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSimulateColorSpace()V

    .line 653
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateUseNuplayerOptions()V

    .line 654
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateUSBAudioOptions()V

    .line 655
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 656
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAdvancedRebootOptions()V

    .line 657
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateDevelopmentShortcutOptions()V

    .line 658
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    .line 659
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateHighEndGfxOptions()V

    .line 661
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 599
    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 601
    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 605
    goto/16 :goto_2

    :cond_6
    move v2, v4

    .line 609
    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 612
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 617
    goto/16 :goto_5

    :cond_9
    move v2, v4

    .line 619
    goto/16 :goto_6

    :cond_a
    move v3, v4

    .line 621
    goto/16 :goto_7
.end method

.method private updateAnimationScaleOptions()V
    .locals 2

    .prologue
    .line 1425
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;)V

    .line 1426
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;)V

    .line 1427
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;)V

    .line 1428
    return-void
.end method

.method private updateAnimationScaleValue(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    .prologue
    .line 1415
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v0

    .line 1416
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 1417
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1419
    :cond_0
    invoke-virtual {p2, v0}, Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;->setScale(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    .end local v0    # "scale":F
    :goto_0
    return-void

    .line 1420
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateAppProcessLimitOptions()V
    .locals 7

    .prologue
    .line 1491
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getProcessLimit()I

    move-result v1

    .line 1492
    .local v1, "limit":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1493
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 1494
    aget-object v4, v3, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1495
    .local v2, "val":I
    if-lt v2, v1, :cond_1

    .line 1496
    if-eqz v0, :cond_0

    .line 1497
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 1499
    :cond_0
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1500
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1508
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v2    # "val":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1493
    .restart local v0    # "i":I
    .restart local v1    # "limit":I
    .restart local v2    # "val":I
    .restart local v3    # "values":[Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1504
    .end local v2    # "val":I
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1505
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1506
    .end local v0    # "i":I
    .end local v1    # "limit":I
    .end local v3    # "values":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateBugreportOptions()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 947
    const-string v4, "user"

    sget-object v5, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 949
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "adb_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 951
    .local v0, "adbEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 952
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 953
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 963
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_1
    return-void

    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v0, v3

    .line 949
    goto :goto_0

    .line 955
    .restart local v0    # "adbEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 956
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 957
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 958
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 961
    .end local v0    # "adbEnabled":Z
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateCpuUsageOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1383
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_processes"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1385
    return-void
.end method

.method private updateDebugHwOverdrawOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1169
    const-string v3, "debug.hwui.overdraw"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1171
    const-string v1, ""

    .line 1174
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1175
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1176
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1178
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1184
    :goto_1
    return-void

    .line 1175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1182
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1183
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateDebugLayoutOptions()V
    .locals 3

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    const-string v1, "debug.layout"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1196
    return-void
.end method

.method private updateDebuggerOptions()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 878
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "debug_app"

    invoke-static {v4, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 880
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "wait_for_debugger"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 882
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    const/16 v8, 0x200

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 887
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 888
    .local v2, "lab":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 892
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    .local v3, "label":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0c2a

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v3, v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 894
    iput-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 899
    .end local v3    # "label":Ljava/lang/String;
    :goto_2
    return-void

    :cond_0
    move v4, v6

    .line 880
    goto :goto_0

    .line 888
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "lab":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 889
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "lab":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 890
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_1

    .line 896
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "label":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0a0c29

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateDevelopmentShortcutOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 686
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "development_shortcut"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 688
    return-void
.end method

.method private updateFlingerOptions()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1013
    :try_start_0
    const-string v10, "SurfaceFlinger"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 1014
    .local v3, "flinger":Landroid/os/IBinder;
    if-eqz v3, :cond_0

    .line 1015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1016
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1017
    .local v4, "reply":Landroid/os/Parcel;
    const-string v10, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1018
    const/16 v10, 0x3f2

    const/4 v11, 0x0

    invoke-interface {v3, v10, v0, v4, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1020
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1022
    .local v6, "showCpu":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1023
    .local v2, "enableGL":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1024
    .local v7, "showUpdates":I
    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-eqz v7, :cond_1

    move v10, v8

    :goto_0
    invoke-virtual {p0, v11, v10}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1026
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1027
    .local v5, "showBackground":I
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1028
    .local v1, "disableOverlays":I
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p0, v10, v8}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1029
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :cond_0
    :goto_2
    return-void

    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "enableGL":I
    .restart local v3    # "flinger":Landroid/os/IBinder;
    .restart local v4    # "reply":Landroid/os/Parcel;
    .restart local v6    # "showCpu":I
    .restart local v7    # "showUpdates":I
    :cond_1
    move v10, v9

    .line 1024
    goto :goto_0

    .restart local v1    # "disableOverlays":I
    .restart local v5    # "showBackground":I
    :cond_2
    move v8, v9

    .line 1028
    goto :goto_1

    .line 1032
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "enableGL":I
    .end local v3    # "flinger":Landroid/os/IBinder;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "showBackground":I
    .end local v6    # "showCpu":I
    .end local v7    # "showUpdates":I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private updateForceRtlOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1282
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1284
    return-void
.end method

.method private updateHardwareUiOptions()V
    .locals 3

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.ui.hw"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1072
    return-void
.end method

.method private updateHdcpValues()V
    .locals 8

    .prologue
    .line 812
    const-string v6, "hdcp_checking"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 813
    .local v1, "hdcpChecking":Landroid/preference/ListPreference;
    if-eqz v1, :cond_1

    .line 814
    const-string v6, "persist.sys.hdcp_checking"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 816
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, "summaries":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 818
    .local v3, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    .line 819
    aget-object v6, v5, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 820
    move v3, v2

    .line 824
    :cond_0
    aget-object v6, v5, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 825
    aget-object v6, v4, v3

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 826
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 828
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "summaries":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_1
    return-void

    .line 818
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "summaries":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateHighEndGfxOptions()V
    .locals 3

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.force_highendgfx"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1552
    return-void
.end method

.method private updateImmediatelyDestroyActivitiesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1409
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "always_finish_activities"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1411
    return-void
.end method

.method private updateKillAppLongpressBackOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 837
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "kill_app_longpress_back"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 839
    return-void
.end method

.method private updateLogdSizeValues()V
    .locals 9

    .prologue
    const v8, 0x7f0c004b

    .line 1334
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 1335
    const-string v6, "persist.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1336
    .local v0, "currentValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1337
    const-string v6, "ro.logd.size"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1338
    if-nez v0, :cond_0

    .line 1339
    const-string v0, "256K"

    .line 1342
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1343
    .local v5, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1344
    .local v4, "titles":[Ljava/lang/String;
    const-string v6, "ro.config.low_ram"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1345
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 1346
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1348
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c004d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "summaries":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 1350
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 1351
    aget-object v6, v5, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    aget-object v6, v4, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1353
    :cond_2
    move v2, v1

    .line 1357
    :cond_3
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1358
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1359
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1361
    .end local v0    # "currentValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "summaries":[Ljava/lang/String;
    .end local v4    # "titles":[Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    :cond_4
    return-void

    .line 1350
    .restart local v0    # "currentValue":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "summaries":[Ljava/lang/String;
    .restart local v4    # "titles":[Ljava/lang/String;
    .restart local v5    # "values":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateMsaaOptions()V
    .locals 3

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    const-string v1, "debug.egl.force_msaa"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1081
    return-void
.end method

.method private updateOpenGLTracesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1466
    const-string v3, "debug.egl.trace"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1468
    const-string v1, ""

    .line 1471
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1472
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1473
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1474
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1475
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1481
    :goto_1
    return-void

    .line 1472
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1479
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1480
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateOverlayDisplayDevicesOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1441
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "overlay_display_devices"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1443
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1444
    const-string v1, ""

    .line 1447
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1448
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1449
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1450
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1451
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1457
    :goto_1
    return-void

    .line 1448
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1456
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updatePasswordSummary()V
    .locals 2

    .prologue
    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0bb2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 851
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0bb1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updatePointerLocationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 996
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pointer_location"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 998
    return-void
.end method

.method private updateRootAccessOptions()V
    .locals 4

    .prologue
    .line 749
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 753
    return-void
.end method

.method private updateShowAllANRsOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1526
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anr_show_background"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1528
    return-void
.end method

.method private updateShowHwLayersUpdatesOptions()V
    .locals 3

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_layers_updates"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1160
    return-void
.end method

.method private updateShowHwScreenUpdatesOptions()V
    .locals 3

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    const-string v1, "debug.hwui.show_dirty_regions"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1149
    return-void
.end method

.method private updateShowNonRectClipOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1114
    const-string v3, "debug.hwui.show_non_rect_clip"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1116
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1117
    const-string v1, "hide"

    .line 1120
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1121
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1122
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1124
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1130
    :goto_1
    return-void

    .line 1121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1129
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateShowTouchesOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1006
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_touches"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1008
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1205
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1206
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1208
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 1209
    const-string v6, "accessibility_display_daltonizer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1213
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1214
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 1216
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const v7, 0x7f0a0a67

    new-array v4, v4, [Ljava/lang/Object;

    const v8, 0x7f0a0a63

    invoke-virtual {p0, v8}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1225
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return-void

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1206
    goto :goto_0

    .line 1219
    .restart local v1    # "enabled":Z
    .restart local v2    # "index":I
    .restart local v3    # "mode":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    const-string v5, "%s"

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1222
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateStayAwakeOptions()V
    .locals 6

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "stay_on_while_plugged_in"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 797
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "summaries":[Ljava/lang/String;
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 804
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .line 806
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 807
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 809
    return-void
.end method

.method private updateStrictModeVisualOptions()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 987
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->currentStrictModeActiveIndex()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 988
    return-void

    .line 987
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTrackFrameTimeOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1089
    const-string v3, "debug.hwui.profile"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1091
    const-string v1, ""

    .line 1094
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 1095
    .local v2, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 1096
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1097
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1098
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1104
    :goto_1
    return-void

    .line 1095
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1103
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateUSBAudioOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1271
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usb_audio_automatic_routing_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1273
    return-void
.end method

.method private updateUseNuplayerOptions()V
    .locals 3

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    const-string v1, "persist.sys.media.use-awesome"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1262
    return-void
.end method

.method private updateVerifyAppsOverUsbOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 907
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "verifier_verify_adb_installs"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 909
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->enableVerifierSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 910
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAggressiveHandover()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1317
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1318
    return-void

    .line 1316
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1325
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getAllowScansWithTraffic()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1326
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1327
    return-void

    .line 1325
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWifiDisplayCertificationOptions()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1295
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_display_certification_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1298
    return-void
.end method

.method private updateWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1308
    .local v0, "enabled":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V

    .line 1309
    return-void

    .line 1307
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1232
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1233
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 1235
    .local v1, "enabled":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1236
    const-string v6, "accessibility_display_daltonizer"

    const/4 v7, -0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 1239
    .local v3, "mode":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 1240
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 1245
    .end local v2    # "index":I
    .end local v3    # "mode":Ljava/lang/String;
    :goto_1
    return v4

    .end local v1    # "enabled":Z
    :cond_0
    move v1, v5

    .line 1233
    goto :goto_0

    .restart local v1    # "enabled":Z
    :cond_1
    move v4, v5

    .line 1245
    goto :goto_1
.end method

.method private writeAdvancedRebootOptions()V
    .locals 3

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_reboot"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    return-void

    .line 664
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "pref"    # Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1433
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1434
    .local v0, "scale":F
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 1435
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAnimationScaleValue(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1438
    .end local v0    # "scale":F
    :goto_1
    return-void

    .line 1433
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 1436
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeAppProcessLimitOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1512
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1513
    .local v0, "limit":I
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 1514
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAppProcessLimitOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    .end local v0    # "limit":I
    :goto_1
    return-void

    .line 1512
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1515
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private writeBtHciSnoopLogOptions()V
    .locals 4

    .prologue
    .line 854
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 855
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->configHciSnoopLog(Z)Z

    .line 856
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_hci_log"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 859
    return-void

    .line 856
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private writeCpuUsageOptions()V
    .locals 5

    .prologue
    .line 1388
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 1389
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_processes"

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1391
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.LoadAverageService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1393
    .local v0, "service":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 1394
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1398
    :goto_1
    return-void

    .line 1389
    .end local v0    # "service":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1396
    .restart local v0    # "service":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private writeDebugHwOverdrawOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1187
    const-string v1, "debug.hwui.overdraw"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1190
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateDebugHwOverdrawOptions()V

    .line 1191
    return-void

    .line 1187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeDebugLayoutOptions()V
    .locals 2

    .prologue
    .line 1199
    const-string v1, "debug.layout"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1202
    return-void

    .line 1199
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeDebuggerOptions()V
    .locals 4

    .prologue
    .line 863
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDevelopmentShortcutOptions()V
    .locals 3

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_shortcut"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    return-void

    .line 680
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeDisableOverlaysOption()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1055
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1056
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1058
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1059
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 1060
    .local v1, "disableOverlays":I
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1061
    const/16 v3, 0x3f0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1064
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1068
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "disableOverlays":I
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeForceRtlOptions()V
    .locals 4

    .prologue
    .line 1287
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 1288
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "debug.force_rtl"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1290
    const-string v2, "debug.force_rtl"

    if-eqz v0, :cond_1

    const-string v1, "1"

    :goto_1
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 1292
    return-void

    .line 1288
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1290
    :cond_1
    const-string v1, "0"

    goto :goto_1
.end method

.method private writeHardwareUiOptions()V
    .locals 2

    .prologue
    .line 1075
    const-string v1, "persist.sys.ui.hw"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1077
    return-void

    .line 1075
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeHighEndGfxOptions()V
    .locals 2

    .prologue
    .line 1555
    const-string v1, "persist.sys.force_highendgfx"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1558
    return-void

    .line 1555
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeImmediatelyDestroyActivitiesOptions()V
    .locals 2

    .prologue
    .line 1402
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :goto_0
    return-void

    .line 1404
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeKillAppLongpressBackOptions()V
    .locals 3

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kill_app_longpress_back"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 834
    return-void

    .line 831
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeLogdSizeOption(Ljava/lang/Object;)V
    .locals 7
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1364
    const-string v4, "ro.logd.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1365
    .local v0, "currentValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1366
    sput-object v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    .line 1368
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1370
    .local v3, "size":Ljava/lang/String;
    :goto_0
    const-string v4, "persist.logd.size"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1373
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "logcat -b all -G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1374
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 1375
    const-string v4, "DevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logcat ring buffer sizes set to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateLogdSizeValues()V

    .line 1380
    return-void

    .line 1368
    .end local v3    # "size":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->DEFAULT_LOG_RING_BUFFER_SIZE_IN_BYTES:Ljava/lang/String;

    goto :goto_0

    .line 1376
    .restart local v3    # "size":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1377
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DevelopmentSettings"

    const-string v5, "Cannot set logcat ring buffer sizes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private writeMsaaOptions()V
    .locals 2

    .prologue
    .line 1084
    const-string v1, "debug.egl.force_msaa"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1086
    return-void

    .line 1084
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeOpenGLTracesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1484
    const-string v1, "debug.egl.trace"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1486
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateOpenGLTracesOptions()V

    .line 1487
    return-void

    .line 1484
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "overlay_display_devices"

    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1462
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateOverlayDisplayDevicesOptions()V

    .line 1463
    return-void
.end method

.method private writePointerLocationOptions()V
    .locals 3

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pointer_location"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 993
    return-void

    .line 991
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeRootAccessOptions(Ljava/lang/Object;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 763
    const-string v1, "persist.sys.root_access"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "oldValue":Ljava/lang/String;
    const-string v1, "persist.sys.root_access"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "service.adb.root"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 767
    const-string v1, "service.adb.root"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 770
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 774
    return-void
.end method

.method private writeShowAllANRsOptions()V
    .locals 3

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anr_show_background"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1523
    return-void

    .line 1520
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwLayersUpdatesOptions()V
    .locals 2

    .prologue
    .line 1163
    const-string v1, "debug.hwui.show_layers_updates"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1166
    return-void

    .line 1163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowHwScreenUpdatesOptions()V
    .locals 2

    .prologue
    .line 1152
    const-string v1, "debug.hwui.show_dirty_regions"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1155
    return-void

    .line 1152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowNonRectClipOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1140
    const-string v1, "debug.hwui.show_non_rect_clip"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1143
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateShowNonRectClipOptions()V

    .line 1144
    return-void

    .line 1140
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeShowTouchesOptions()V
    .locals 3

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_touches"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1003
    return-void

    .line 1001
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeShowUpdatesOption()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1038
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1039
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_1

    .line 1040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1041
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1042
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 1043
    .local v2, "showUpdates":I
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    const/16 v3, 0x3ea

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateFlingerOptions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "showUpdates":I
    :cond_1
    :goto_0
    return-void

    .line 1049
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1249
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1250
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1251
    .local v1, "newMode":I
    if-gez v1, :cond_0

    .line 1252
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1257
    :goto_0
    return-void

    .line 1254
    :cond_0
    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1255
    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private writeStayAwakeOptions(Ljava/lang/Object;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1133
    check-cast p1, Ljava/lang/String;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1134
    .local v0, "val":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1136
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateStayAwakeOptions()V

    .line 1137
    return-void
.end method

.method private writeStrictModeVisualOptions()V
    .locals 2

    .prologue
    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 984
    :goto_1
    return-void

    .line 980
    :cond_0
    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private writeTrackFrameTimeOptions(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1107
    const-string v1, "debug.hwui.profile"

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1110
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateTrackFrameTimeOptions()V

    .line 1111
    return-void

    .line 1107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private writeUSBAudioOptions()V
    .locals 3

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "usb_audio_automatic_routing_disabled"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1279
    return-void

    .line 1276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeUseAwesomePlayerOptions()V
    .locals 2

    .prologue
    .line 1265
    const-string v1, "persist.sys.media.use-awesome"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1268
    return-void

    .line 1265
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private writeVerifyAppsOverUsbOptions()V
    .locals 3

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_verify_adb_installs"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 915
    return-void

    .line 913
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAggressiveHandoverOptions()V
    .locals 2

    .prologue
    .line 1321
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableAggressiveHandover(I)V

    .line 1322
    return-void

    .line 1321
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiAllowScansWithTrafficOptions()V
    .locals 2

    .prologue
    .line 1330
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setAllowScansWithTraffic(I)V

    .line 1331
    return-void

    .line 1330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiDisplayCertificationOptions()V
    .locals 3

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1304
    return-void

    .line 1301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writeWifiVerboseLoggingOptions()V
    .locals 2

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->enableVerboseLogging(I)V

    .line 1313
    return-void

    .line 1312
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 500
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 502
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 504
    .local v0, "activity":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 505
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setEnabled(Z)V

    .line 511
    :goto_0
    return-void

    .line 510
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 1596
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1597
    if-ne p2, v1, :cond_0

    .line 1598
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugApp:Ljava/lang/String;

    .line 1599
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeDebuggerOptions()V

    .line 1600
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateDebuggerOptions()V

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    if-nez p1, :cond_3

    .line 1603
    if-ne p2, v1, :cond_0

    .line 1604
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1605
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 1607
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 1611
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 1866
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_1

    .line 1867
    if-ne p2, v4, :cond_0

    .line 1868
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1869
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1871
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1872
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateVerifyAppsOverUsbOptions()V

    .line 1873
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateBugreportOptions()V

    .line 1913
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_2

    .line 1876
    if-ne p2, v4, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_port"

    const/16 v5, 0x15b3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1880
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_3

    .line 1881
    if-ne p2, v4, :cond_0

    .line 1883
    :try_start_0
    const-string v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1884
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 1885
    .local v2, "service":Landroid/hardware/usb/IUsbManager;
    invoke-interface {v2}, Landroid/hardware/usb/IUsbManager;->clearUsbDebuggingKeys()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1886
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/hardware/usb/IUsbManager;
    :catch_0
    move-exception v1

    .line 1887
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "DevelopmentSettings"

    const-string v4, "Unable to clear adb keys"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1890
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_4

    .line 1891
    if-ne p2, v4, :cond_0

    .line 1892
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1893
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "development_settings_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1895
    iput-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1896
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1901
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "development"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "show"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1905
    :cond_4
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v3, :cond_0

    .line 1906
    if-ne p2, v4, :cond_5

    .line 1907
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1910
    :cond_5
    const-string v3, "0"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 294
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 297
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 299
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 300
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    .line 302
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 304
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 306
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_debugging_features"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUnavailable:Z

    .line 309
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 447
    :goto_0
    return-void

    .line 313
    :cond_1
    const v3, 0x7f070016

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addPreferencesFromResource(I)V

    .line 315
    const-string v3, "debug_debugging_category"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 318
    .local v0, "debugDebuggingCategory":Landroid/preference/PreferenceGroup;
    const-string v3, "enable_adb"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    .line 319
    const-string v3, "adb_notify"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    .line 320
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const-string v3, "adb_over_network"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    .line 322
    const-string v3, "clear_adb_keys"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    .line 323
    const-string v3, "ro.adb.secure"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    if-eqz v0, :cond_2

    .line 325
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v3, "enable_terminal"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 330
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.terminal"

    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 331
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    .line 335
    :cond_3
    const-string v3, "bugreport"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreport:Landroid/preference/Preference;

    .line 336
    const-string v3, "bugreport_in_power"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    .line 337
    const-string v3, "keep_screen_on_modes"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    .line 338
    const-string v3, "bt_hci_snoop_log"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    .line 339
    const-string v3, "oem_unlock_enable"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 340
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->showEnableOemUnlockPreference()Z

    move-result v3

    if-nez v3, :cond_4

    .line 341
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 342
    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    .line 344
    :cond_4
    const-string v3, "enable_quickboot"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    .line 345
    const-string v3, "allow_mock_location"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    .line 346
    const-string v3, "debug_view_attributes"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    .line 347
    const-string v3, "local_backup_password"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    .line 348
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    const-string v3, "advanced_reboot"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    .line 350
    const-string v3, "development_shortcut"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    .line 352
    const-string v3, "debug_drawing_category"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 355
    .local v1, "debugDrawingCategory":Landroid/preference/PreferenceGroup;
    const-string v3, "pref_force_highend_gfx"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    .line 356
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-nez v3, :cond_5

    .line 357
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    .line 361
    :cond_5
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 362
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 363
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 364
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 365
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 366
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 367
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 368
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->disableForUser(Landroid/preference/Preference;)V

    .line 371
    :cond_6
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.qapp.quickboot"

    invoke-static {v3, v4, v6}, Lcom/flyme/deviceoriginalsettings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 372
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->removePreference(Landroid/preference/Preference;)V

    .line 375
    :cond_7
    const-string v3, "debug_app"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    .line 376
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v3, "wait_for_debugger"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    .line 378
    const-string v3, "verify_apps_over_usb"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    .line 379
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->showVerifierSetting()Z

    move-result v3

    if-nez v3, :cond_8

    .line 381
    if-eqz v0, :cond_b

    .line 382
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_8
    :goto_1
    const-string v3, "strict_mode"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    .line 388
    const-string v3, "pointer_location"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    .line 389
    const-string v3, "show_touches"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    .line 390
    const-string v3, "show_screen_updates"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    .line 391
    const-string v3, "disable_overlays"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    .line 392
    const-string v3, "show_cpu_usage"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    .line 393
    const-string v3, "force_hw_ui"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    .line 394
    const-string v3, "force_msaa"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    .line 395
    const-string v3, "track_frame_time"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    .line 396
    const-string v3, "show_non_rect_clip"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    .line 397
    const-string v3, "show_hw_screen_udpates"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    .line 398
    const-string v3, "show_hw_layers_udpates"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    .line 399
    const-string v3, "debug_layout"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    .line 400
    const-string v3, "force_rtl_layout_all_locales"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    .line 401
    const-string v3, "debug_hw_overdraw"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    .line 402
    const-string v3, "wifi_display_certification"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    .line 403
    const-string v3, "wifi_verbose_logging"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    .line 404
    const-string v3, "wifi_aggressive_handover"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    .line 405
    const-string v3, "wifi_allow_scan_with_traffic"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    .line 406
    const-string v3, "select_logd_size"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    .line 408
    const-string v3, "window_animation_scale"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    .line 409
    const-string v3, "transition_animation_scale"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    .line 410
    const-string v3, "animator_duration_scale"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitAnimationScalePreference(Ljava/lang/String;)Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    .line 411
    const-string v3, "overlay_display_devices"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    .line 412
    const-string v3, "enable_opengl_traces"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    .line 413
    const-string v3, "simulate_color_space"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    .line 414
    const-string v3, "use_awesomeplayer"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    .line 415
    const-string v3, "usb_audio"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    .line 417
    const-string v3, "immediately_destroy_activities"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    .line 419
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    const-string v3, "app_process_limit"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->addListPreference(Ljava/lang/String;)Landroid/preference/ListPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    .line 424
    const-string v3, "show_all_anrs"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    .line 426
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mResetSwitchPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    const-string v3, "kill_app_longpress_back"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findAndInitSwitchPref(Ljava/lang/String;)Landroid/preference/SwitchPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    .line 431
    const-string v3, "hdcp_checking"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 432
    .local v2, "hdcpChecking":Landroid/preference/Preference;
    if-eqz v2, :cond_9

    .line 433
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->removePreferenceForProduction(Landroid/preference/Preference;)Z

    .line 437
    :cond_9
    const-string v3, "proc_stats"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    .line 438
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mProcessStats:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    const-string v3, "root_access"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    .line 440
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->removeRootOptionsIfRequired()Z

    move-result v3

    if-nez v3, :cond_a

    .line 442
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_a
    const-string v3, "development_tools"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    .line 446
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllPrefs:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentTools:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 384
    .end local v2    # "hdcpChecking":Landroid/preference/Preference;
    :cond_b
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1938
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1939
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 1940
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 581
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroyView()V

    .line 583
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/flyme/deviceoriginalsettings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 587
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->hide()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1917
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_2

    .line 1918
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1921
    :cond_0
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1934
    :cond_1
    :goto_0
    return-void

    .line 1922
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_3

    .line 1923
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAdbOverNetwork()V

    .line 1924
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1925
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_5

    .line 1926
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    if-nez v0, :cond_4

    .line 1927
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 1929
    :cond_4
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 1930
    :cond_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-ne p1, v0, :cond_1

    .line 1931
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateRootAccessOptions()V

    .line 1932
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1779
    const-string v2, "hdcp_checking"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1780
    const-string v1, "persist.sys.hdcp_checking"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateHdcpValues()V

    .line 1782
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->pokeSystemProperties()V

    .line 1839
    :goto_0
    return v0

    .line 1784
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLogdSize:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 1785
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeLogdSizeOption(Ljava/lang/Object;)V

    goto :goto_0

    .line 1787
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    if-ne p1, v2, :cond_2

    .line 1788
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1790
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    if-ne p1, v2, :cond_3

    .line 1791
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v0, v1, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1793
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    if-ne p1, v2, :cond_4

    .line 1794
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    invoke-direct {p0, v1, v2, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAnimationScaleOption(ILcom/flyme/deviceoriginalsettings/AnimationScalePreference;Ljava/lang/Object;)V

    goto :goto_0

    .line 1796
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOverlayDisplayDevices:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_5

    .line 1797
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeOverlayDisplayDevicesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1799
    :cond_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mOpenGLTraces:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_6

    .line 1800
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeOpenGLTracesOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1802
    :cond_6
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTrackFrameTime:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_7

    .line 1803
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeTrackFrameTimeOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1805
    :cond_7
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugHwOverdraw:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_8

    .line 1806
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeDebugHwOverdrawOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1808
    :cond_8
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowNonRectClip:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_9

    .line 1809
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeShowNonRectClipOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1811
    :cond_9
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAppProcessLimit:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_a

    .line 1812
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAppProcessLimitOptions(Ljava/lang/Object;)V

    goto :goto_0

    .line 1814
    :cond_a
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSimulateColorSpace:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_b

    .line 1815
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeSimulateColorSpace(Ljava/lang/Object;)V

    goto :goto_0

    .line 1817
    :cond_b
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootAccess:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_e

    .line 1818
    const-string v2, "0"

    const-string v3, "persist.sys.root_access"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 1820
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSelectedRootValue:Ljava/lang/Object;

    .line 1821
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1822
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_c

    .line 1823
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1825
    :cond_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0093

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    .line 1830
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mRootDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1832
    :cond_d
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeRootAccessOptions(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1835
    :cond_e
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_f

    .line 1836
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeStayAwakeOptions(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    move v0, v1

    .line 1839
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWindowAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mTransitionAnimationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAnimatorDurationScale:Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    if-ne p1, v0, :cond_1

    .line 1620
    :cond_0
    check-cast p1, Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/AnimationScalePreference;->click()V

    .line 1622
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v6, 0x1040013

    const v5, 0x1040009

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1627
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return v2

    .line 1631
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_4

    .line 1632
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableAdb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1633
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1634
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 1635
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1637
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0a2f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0a0a2e

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    .line 1643
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1645
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1647
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 1648
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1649
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateBugreportOptions()V

    goto :goto_0

    .line 1651
    :cond_4
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_6

    .line 1652
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_notify"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbNotify:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    .line 1655
    :cond_6
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_9

    .line 1656
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbOverNetwork:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1657
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    .line 1658
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1660
    :cond_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0178

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0a0176

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    .line 1666
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbTcpDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 1668
    :cond_8
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "adb_port"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1670
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateAdbOverNetwork()V

    goto/16 :goto_0

    .line 1672
    :cond_9
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mClearAdbKeys:Landroid/preference/Preference;

    if-ne p2, v3, :cond_b

    .line 1673
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1674
    :cond_a
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a0a30

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    invoke-virtual {v1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdbKeysDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1679
    :cond_b
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_d

    .line 1680
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1681
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.terminal"

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableTerminal:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_2
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_2

    .line 1684
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_f

    .line 1685
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bugreport_in_power_menu"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBugreportInPower:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_3
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_e
    move v1, v2

    goto :goto_3

    .line 1688
    :cond_f
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mBtHciSnoopLog:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_10

    .line 1689
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeBtHciSnoopLogOptions()V

    goto/16 :goto_0

    .line 1690
    :cond_10
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_12

    .line 1691
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1692
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableOemUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1693
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->confirmEnableOemUnlock()V

    goto/16 :goto_0

    .line 1695
    :cond_11
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/flyme/deviceoriginalsettings/Utils;->setOemUnlockEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 1698
    :cond_12
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_14

    .line 1699
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mock_location"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAllowMockLocation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_13

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto :goto_4

    .line 1702
    :cond_14
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_16

    .line 1703
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "debug_view_attributes"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugViewAttributes:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_15

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_15
    move v1, v2

    goto :goto_5

    .line 1706
    :cond_16
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    if-ne p2, v3, :cond_18

    .line 1707
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_quickboot"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mQuickBoot:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_17

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_6

    .line 1709
    :cond_18
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugAppPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_19

    .line 1710
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/flyme/deviceoriginalsettings/AppPicker;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1711
    :cond_19
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWaitForDebugger:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1a

    .line 1712
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeDebuggerOptions()V

    goto/16 :goto_0

    .line 1713
    :cond_1a
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mVerifyAppsOverUsb:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1b

    .line 1714
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeVerifyAppsOverUsbOptions()V

    goto/16 :goto_0

    .line 1715
    :cond_1b
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mStrictMode:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1c

    .line 1716
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeStrictModeVisualOptions()V

    goto/16 :goto_0

    .line 1717
    :cond_1c
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mPointerLocation:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1d

    .line 1718
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writePointerLocationOptions()V

    goto/16 :goto_0

    .line 1719
    :cond_1d
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowTouches:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1e

    .line 1720
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeShowTouchesOptions()V

    goto/16 :goto_0

    .line 1721
    :cond_1e
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_1f

    .line 1722
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeShowUpdatesOption()V

    goto/16 :goto_0

    .line 1723
    :cond_1f
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisableOverlays:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_20

    .line 1724
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeDisableOverlaysOption()V

    goto/16 :goto_0

    .line 1725
    :cond_20
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowCpuUsage:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_21

    .line 1726
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeCpuUsageOptions()V

    goto/16 :goto_0

    .line 1727
    :cond_21
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mImmediatelyDestroyActivities:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_22

    .line 1728
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeImmediatelyDestroyActivitiesOptions()V

    goto/16 :goto_0

    .line 1729
    :cond_22
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowAllANRs:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_23

    .line 1730
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeShowAllANRsOptions()V

    goto/16 :goto_0

    .line 1731
    :cond_23
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHardwareUi:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_24

    .line 1732
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeHardwareUiOptions()V

    goto/16 :goto_0

    .line 1733
    :cond_24
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceMsaa:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_25

    .line 1734
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeMsaaOptions()V

    goto/16 :goto_0

    .line 1735
    :cond_25
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwScreenUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_26

    .line 1736
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeShowHwScreenUpdatesOptions()V

    goto/16 :goto_0

    .line 1737
    :cond_26
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mShowHwLayersUpdates:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_27

    .line 1738
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeShowHwLayersUpdatesOptions()V

    goto/16 :goto_0

    .line 1739
    :cond_27
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDebugLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_28

    .line 1740
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeDebugLayoutOptions()V

    goto/16 :goto_0

    .line 1741
    :cond_28
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceRtlLayout:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_29

    .line 1742
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeForceRtlOptions()V

    goto/16 :goto_0

    .line 1743
    :cond_29
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiDisplayCertification:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2a

    .line 1744
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeWifiDisplayCertificationOptions()V

    goto/16 :goto_0

    .line 1745
    :cond_2a
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiVerboseLogging:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2b

    .line 1746
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeWifiVerboseLoggingOptions()V

    goto/16 :goto_0

    .line 1747
    :cond_2b
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAggressiveHandover:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2c

    .line 1748
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeWifiAggressiveHandoverOptions()V

    goto/16 :goto_0

    .line 1749
    :cond_2c
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mWifiAllowScansWithTraffic:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2d

    .line 1750
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeWifiAllowScansWithTrafficOptions()V

    goto/16 :goto_0

    .line 1751
    :cond_2d
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUseAwesomePlayer:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2e

    .line 1752
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeUseAwesomePlayerOptions()V

    goto/16 :goto_0

    .line 1753
    :cond_2e
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUSBAudio:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_2f

    .line 1754
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeUSBAudioOptions()V

    goto/16 :goto_0

    .line 1755
    :cond_2f
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mAdvancedReboot:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_30

    .line 1756
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeAdvancedRebootOptions()V

    goto/16 :goto_0

    .line 1757
    :cond_30
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDevelopmentShortcut:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_31

    .line 1758
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeDevelopmentShortcutOptions()V

    goto/16 :goto_0

    .line 1759
    :cond_31
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKillAppLongpressBack:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_32

    .line 1760
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeKillAppLongpressBackOptions()V

    goto/16 :goto_0

    .line 1761
    :cond_32
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mForceHighEndGfx:Landroid/preference/SwitchPreference;

    if-ne p2, v1, :cond_33

    .line 1762
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->writeHighEndGfxOptions()V

    goto/16 :goto_0

    .line 1764
    :cond_33
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 536
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 538
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mUnavailable:Z

    if-eqz v4, :cond_1

    .line 540
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 541
    .local v1, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 542
    if-eqz v1, :cond_0

    .line 543
    const v2, 0x7f0a0a0e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 577
    .end local v1    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 553
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v4, "development_settings_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 561
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v4}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 562
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 564
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    if-nez v2, :cond_3

    .line 569
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "development_settings_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 572
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->setChecked(Z)V

    .line 573
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->show()V

    .line 576
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->updateKillAppLongpressBackOptions()V

    goto :goto_0

    .line 555
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDisabledPrefs:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mKeepScreenOn:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1562
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;->getSwitch()Lcom/flyme/deviceoriginalsettings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    if-eq p2, v0, :cond_0

    .line 1566
    if-eqz p2, :cond_3

    .line 1567
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDialogClicked:Z

    .line 1568
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 1569
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->dismissDialogs()V

    .line 1571
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0a32

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0a31

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    .line 1578
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mEnableDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 1580
    :cond_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->resetDangerousOptions()V

    .line 1581
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1583
    iput-boolean p2, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    .line 1584
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mLastEnabledState:Z

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->setPrefsEnabledState(Z)V

    .line 1587
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method pokeSystemProperties()V
    .locals 2

    .prologue
    .line 1943
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mDontPokeProperties:Z

    if-nez v0, :cond_0

    .line 1945
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$SystemPropPoker;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$SystemPropPoker;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings$SystemPropPoker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1947
    :cond_0
    return-void
.end method

.method updateSwitchPreference(Landroid/preference/SwitchPreference;Z)V
    .locals 1
    .param p1, "switchPreference"    # Landroid/preference/SwitchPreference;
    .param p2, "value"    # Z

    .prologue
    .line 591
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 592
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;->mHaveDebugSettings:Z

    .line 593
    return-void
.end method
