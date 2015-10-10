.class public Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/flyme/deviceoriginalsettings/ButtonBarHandler;


# static fields
.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static sShowNoHomeNotice:Z


# instance fields
.field private SETTINGS_FOR_RESTRICTED:[I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mNfcProfileCallback:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;

.field private mResultIntentData:Landroid/content/Intent;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    sput-boolean v3, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 267
    const/16 v0, 0x44

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/flyme/deviceoriginalsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/flyme/deviceoriginalsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/flyme/deviceoriginalsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/flyme/deviceoriginalsettings/sim/SimSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/flyme/deviceoriginalsettings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/flyme/deviceoriginalsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/flyme/deviceoriginalsettings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/flyme/deviceoriginalsettings/voice/VoiceInputSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/flyme/deviceoriginalsettings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationStation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/flyme/deviceoriginalsettings/UsageAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleDaltonizerPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/flyme/deviceoriginalsettings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/flyme/deviceoriginalsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-class v2, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-class v2, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-class v2, Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-class v2, Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/ConditionProviderSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-class v2, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-class v2, Lcom/flyme/deviceoriginalsettings/print/PrintJobSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-class v2, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-class v2, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-class v2, Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-class v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-class v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-class v2, Lcom/flyme/deviceoriginalsettings/applications/InstalledAppDetails;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationAppList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/AppNotificationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/OtherSoundSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-class v2, Lcom/flyme/deviceoriginalsettings/quicklaunch/QuickLaunchSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-class v2, Lcom/flyme/deviceoriginalsettings/ApnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-class v2, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-class v2, Lcom/flyme/deviceoriginalsettings/profiles/ProfilesSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-class v2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-class v2, Lcom/flyme/deviceoriginalsettings/notification/NotificationManagerSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-class v2, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-class v2, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-class v2, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DisplayRotation;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-class v2, Lcom/flyme/deviceoriginalsettings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 339
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    .line 346
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryPresent:Z

    .line 347
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

    .line 380
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 389
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 403
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 404
    iput v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    return-void

    .line 232
    nop

    :array_0
    .array-data 4
        0x7f1102fb
        0x7f1102fc
        0x7f1102fd
        0x7f110300
        0x7f1102fe
        0x7f110302
        0x7f110304
        0x7f110308
        0x7f110305
        0x7f110306
        0x7f11030a
        0x7f110309
        0x7f11030b
        0x7f11031d
        0x7f110316
        0x7f11030e
        0x7f110311
        0x7f110319
        0x7f11030f
        0x7f11031e
        0x7f110310
        0x7f110317
        0x7f11031a
        0x7f11031b
        0x7f110322
        0x7f110323
        0x7f11031c
        0x7f110320
        0x7f110312
        0x7f110314
        0x7f110095
        0x7f110318
    .end array-data
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1012
    const v0, 0x7f070013

    invoke-direct {p0, v0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->loadCategoriesFromResource(ILjava/util/List;)V

    .line 1013
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->updateTilesList(Ljava/util/List;)V

    .line 1014
    return-void
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 684
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1342
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1344
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1350
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1345
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1348
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 868
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 880
    :cond_0
    :goto_0
    return-object v0

    .line 870
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 873
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    :cond_3
    const-class v1, Lcom/flyme/deviceoriginalsettings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 441
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 443
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 444
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 446
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 504
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v2

    .line 508
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 509
    sget-object v3, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 508
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 499
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 500
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadCategoriesFromResource(ILjava/util/List;)V
    .locals 28
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;>;"
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v18

    .line 1026
    .local v18, "showAdvancedPreferences":Z
    const/16 v16, 0x0

    .line 1028
    .local v16, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v16

    .line 1029
    invoke-static/range {v16 .. v16}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 1033
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    const/16 v24, 0x2

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 1037
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1038
    .local v14, "nodeName":Ljava/lang/String;
    const-string v24, "dashboard-categories"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 1039
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "XML document must start with <preference-categories> tag; found"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v22    # "type":I
    :catch_0
    move-exception v7

    .line 1189
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Error parsing categories"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1193
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v24

    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v24

    .line 1044
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_3
    const/4 v6, 0x0

    .line 1046
    .local v6, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 1048
    .local v15, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_20

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v15, :cond_20

    .line 1049
    :cond_5
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1053
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 1054
    const-string v24, "dashboard-category"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 1055
    new-instance v5, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;

    invoke-direct {v5}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;-><init>()V

    .line 1057
    .local v5, "category":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;
    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1059
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->id:J

    .line 1063
    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1065
    .local v21, "tv":Landroid/util/TypedValue;
    if-eqz v21, :cond_6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 1066
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1067
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v5, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->titleRes:I

    .line 1072
    :cond_6
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1074
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 1076
    .local v9, "innerDepth":I
    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1e

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v9, :cond_1e

    .line 1077
    :cond_8
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_7

    .line 1081
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1082
    .local v11, "innerNodeName":Ljava/lang/String;
    const-string v24, "dashboard-tile"

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1d

    .line 1083
    new-instance v20, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    invoke-direct/range {v20 .. v20}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;-><init>()V

    .line 1085
    .local v20, "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    sget-object v24, Lcom/flyme/deviceoriginalsettings/R$styleable;->Preference:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1086
    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1087
    if-eqz v21, :cond_b

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x12

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1088
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v24, v0

    if-eqz v24, :cond_13

    const/16 v23, 0x1

    .line 1090
    .local v23, "value":Z
    :goto_3
    if-nez v18, :cond_9

    if-nez v23, :cond_a

    :cond_9
    if-eqz v18, :cond_14

    if-nez v23, :cond_14

    :cond_a
    const/16 v19, 0x1

    .line 1092
    .local v19, "skipAdvanced":Z
    :goto_4
    if-nez v19, :cond_7

    .line 1097
    .end local v19    # "skipAdvanced":Z
    .end local v23    # "value":Z
    :cond_b
    sget-object v24, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1099
    const/16 v24, 0x1

    const/16 v25, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->id:J

    .line 1102
    const/16 v24, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1104
    if-eqz v21, :cond_d

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1105
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 1108
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->id:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x7f11030a

    cmp-long v24, v24, v26

    if-nez v24, :cond_c

    .line 1109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_15

    const/4 v13, 0x1

    .line 1111
    .local v13, "isPrimary":Z
    :goto_5
    new-instance v24, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled(Landroid/content/Context;)Z

    move-result v8

    .line 1113
    .local v8, "hasFingerprint":Z
    if-eqz v13, :cond_c

    if-eqz v8, :cond_c

    .line 1114
    const v24, 0x7f0a041c

    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Landroid/util/TypedValue;->resourceId:I

    .line 1118
    .end local v8    # "hasFingerprint":Z
    .end local v13    # "isPrimary":Z
    :cond_c
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->titleRes:I

    .line 1123
    :cond_d
    :goto_6
    const/16 v24, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v21

    .line 1125
    if-eqz v21, :cond_e

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    .line 1126
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 1127
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->summaryRes:I

    .line 1132
    :cond_e
    :goto_7
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->iconRes:I

    .line 1134
    const/16 v24, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    .line 1136
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1138
    sget-object v24, Lcom/flyme/deviceoriginalsettings/R$styleable;->DashboardTile:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 1139
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->switchControl:Ljava/lang/String;

    .line 1141
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 1143
    if-nez v6, :cond_f

    .line 1144
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1147
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    :cond_f
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 1149
    .local v10, "innerDepth2":I
    :cond_10
    :goto_8
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_1a

    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v10, :cond_1a

    .line 1150
    :cond_11
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    const/16 v24, 0x4

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    .line 1154
    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1155
    .local v12, "innerNodeName2":Ljava/lang/String;
    const-string v24, "extra"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const-string v25, "extra"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1157
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    .line 1190
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "category":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;
    .end local v6    # "curBundle":Landroid/os/Bundle;
    .end local v9    # "innerDepth":I
    .end local v10    # "innerDepth2":I
    .end local v11    # "innerNodeName":Ljava/lang/String;
    .end local v12    # "innerNodeName2":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "outerDepth":I
    .end local v17    # "sa":Landroid/content/res/TypedArray;
    .end local v20    # "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    .end local v21    # "tv":Landroid/util/TypedValue;
    .end local v22    # "type":I
    :catch_1
    move-exception v7

    .line 1191
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "Error parsing categories"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1069
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "category":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;
    .restart local v6    # "curBundle":Landroid/os/Bundle;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "outerDepth":I
    .restart local v17    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "tv":Landroid/util/TypedValue;
    .restart local v22    # "type":I
    :cond_12
    :try_start_4
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1088
    .restart local v9    # "innerDepth":I
    .restart local v11    # "innerNodeName":Ljava/lang/String;
    .restart local v20    # "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    :cond_13
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1090
    .restart local v23    # "value":Z
    :cond_14
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1109
    .end local v23    # "value":Z
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 1120
    :cond_16
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1129
    :cond_17
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_7

    .line 1159
    .restart local v10    # "innerDepth2":I
    .restart local v12    # "innerNodeName2":Ljava/lang/String;
    :cond_18
    const-string v24, "intent"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    goto/16 :goto_8

    .line 1163
    :cond_19
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    .line 1167
    .end local v12    # "innerNodeName2":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v24

    if-lez v24, :cond_1b

    .line 1168
    move-object/from16 v0, v20

    iput-object v6, v0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1169
    const/4 v6, 0x0

    .line 1173
    :cond_1b
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->id:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x7f1102fe

    cmp-long v24, v24, v26

    if-nez v24, :cond_1c

    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1174
    :cond_1c
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->addTile(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;)V

    goto/16 :goto_2

    .line 1178
    .end local v10    # "innerDepth2":I
    .end local v20    # "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    :cond_1d
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 1182
    .end local v11    # "innerNodeName":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1184
    .end local v5    # "category":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;
    .end local v9    # "innerDepth":I
    .end local v17    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "tv":Landroid/util/TypedValue;
    :cond_1f
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1193
    :cond_20
    if-eqz v16, :cond_21

    invoke-interface/range {v16 .. v16}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1195
    :cond_21
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1368
    return-void
.end method

.method private revertToInitialFragment()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1430
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    .line 1432
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1433
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 1435
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1438
    :cond_0
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 732
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 733
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 734
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(I)V

    .line 738
    :goto_0
    const/4 v1, 0x0

    .line 744
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 736
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 742
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 749
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 750
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 751
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 755
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 758
    :cond_0
    return-void

    .line 753
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 688
    const-string v5, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 689
    .local v3, "initialTitleResId":I
    if-lez v3, :cond_1

    .line 690
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 691
    iput v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 693
    const-string v5, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 695
    .local v4, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 697
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 699
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 700
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 701
    const/4 v5, -0x1

    iput v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 703
    .restart local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 710
    .end local v4    # "initialTitleResPackageName":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 711
    const-string v5, ":settings:show_fragment_title"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 712
    .local v2, "initialTitle":Ljava/lang/String;
    if-eqz v2, :cond_2

    .end local v2    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 713
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 712
    .restart local v2    # "initialTitle":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public static showAdvancedPreferences(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1482
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1484
    .local v0, "forceAdvancedMode":Z
    if-eqz v0, :cond_1

    .line 1487
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "advanced_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 982
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 983
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 986
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 987
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 988
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f11023b

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 989
    if-eqz p7, :cond_1

    .line 990
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 992
    :cond_1
    if-eqz p4, :cond_2

    .line 993
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 995
    :cond_2
    if-lez p5, :cond_4

    .line 996
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1000
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1001
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1002
    return-object v0

    .line 997
    :cond_4
    if-eqz p6, :cond_3

    .line 998
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1410
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1423
    :goto_0
    return-void

    .line 1413
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f11023b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1414
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1415
    check-cast v8, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    .line 1421
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1422
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1417
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const v5, 0x7f0a0d9e

    move-object v0, p0

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHomeSettingTiles(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1305
    const-string v4, "home_prefs"

    invoke-virtual {p0, v4, v3}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1306
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v4, "do_show"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1337
    :goto_0
    return v2

    .line 1311
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v4

    iput v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 1312
    iget v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 1317
    sget-boolean v4, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sShowNoHomeNotice:Z

    if-eqz v4, :cond_1

    .line 1318
    const/4 v4, 0x0

    sput-boolean v4, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1319
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/dashboard/NoHomeDialogFragment;->show(Landroid/app/Activity;)V

    :cond_1
    move v2, v3

    .line 1321
    goto :goto_0

    .line 1326
    :cond_2
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 1327
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    .line 1329
    :cond_3
    iget-object v3, p1, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->fragmentArguments:Landroid/os/Bundle;

    const-string v4, "show"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1336
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "do_show"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1331
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Settings"

    const-string v4, "Problem looking up home activity!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateTilesList(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1198
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v16, "show"

    sget-object v17, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v18, "eng"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 1202
    .local v11, "showDev":Z
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserManager;

    .line 1203
    .local v14, "um":Landroid/os/UserManager;
    const-string v15, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 1205
    .local v9, "pm":Landroid/os/PowerManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 1206
    .local v12, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v12, :cond_15

    .line 1208
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;

    .line 1211
    .local v2, "category":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;
    iget-wide v0, v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 1212
    .local v6, "id":I
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .line 1213
    .local v7, "n":I
    :goto_1
    if-ltz v7, :cond_14

    .line 1215
    invoke-virtual {v2, v7}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->getTile(I)Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;

    move-result-object v13

    .line 1216
    .local v13, "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    const/4 v10, 0x0

    .line 1217
    .local v10, "removeTile":Z
    iget-wide v0, v13, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v6, v0

    .line 1218
    const v15, 0x7f110301

    if-eq v6, v15, :cond_0

    const v15, 0x7f110303

    if-eq v6, v15, :cond_0

    const v15, 0x7f11030d

    if-eq v6, v15, :cond_0

    const v15, 0x7f11030c

    if-ne v6, v15, :cond_4

    .line 1221
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/flyme/deviceoriginalsettings/Utils;->updateTileToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1222
    const/4 v10, 0x1

    .line 1290
    :cond_1
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v15, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v15

    if-nez v15, :cond_2

    .line 1292
    const/4 v10, 0x1

    .line 1295
    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    if-ge v7, v15, :cond_3

    .line 1296
    invoke-virtual {v2, v7}, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1298
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 1299
    goto :goto_1

    .line 1224
    :cond_4
    const v15, 0x7f1102fc

    if-ne v6, v15, :cond_5

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1227
    const/4 v10, 0x1

    goto :goto_2

    .line 1229
    :cond_5
    const v15, 0x7f1102fd

    if-ne v6, v15, :cond_6

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.bluetooth"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1232
    const/4 v10, 0x1

    goto :goto_2

    .line 1234
    :cond_6
    const v15, 0x7f1102ff

    if-ne v6, v15, :cond_9

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1236
    const/4 v10, 0x1

    goto :goto_2

    .line 1237
    :cond_7
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 1238
    const/4 v10, 0x1

    goto :goto_2

    .line 1239
    :cond_8
    const-string v15, "ro.radio.noril"

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1240
    const/4 v10, 0x1

    goto :goto_2

    .line 1242
    :cond_9
    const v15, 0x7f110300

    if-ne v6, v15, :cond_a

    .line 1244
    const-string v15, "network_management"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 1247
    .local v8, "netManager":Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v8}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_1

    .line 1248
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1253
    .end local v8    # "netManager":Landroid/os/INetworkManagementService;
    :cond_a
    const v15, 0x7f11030e

    if-ne v6, v15, :cond_b

    .line 1256
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryPresent:Z

    if-nez v15, :cond_1

    .line 1257
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1259
    :cond_b
    const v15, 0x7f110312

    if-ne v6, v15, :cond_c

    .line 1260
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->updateHomeSettingTiles(Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1261
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1263
    :cond_c
    const v15, 0x7f110310

    if-ne v6, v15, :cond_10

    .line 1264
    const-string v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    invoke-virtual {v15}, Landroid/os/UserManager;->getUserCount()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_f

    const/4 v3, 0x1

    .line 1267
    .local v3, "hasMultipleUsers":Z
    :goto_3
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v15

    if-nez v15, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1271
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1264
    .end local v3    # "hasMultipleUsers":Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_3

    .line 1273
    :cond_10
    const v15, 0x7f110320

    if-ne v6, v15, :cond_11

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.software.print"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1276
    .local v4, "hasPrintingSupport":Z
    if-nez v4, :cond_1

    .line 1277
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1279
    .end local v4    # "hasPrintingSupport":Z
    :cond_11
    const v15, 0x7f110321

    if-ne v6, v15, :cond_13

    .line 1280
    if-eqz v11, :cond_12

    const-string v15, "no_debugging_features"

    invoke-virtual {v14, v15}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1282
    :cond_12
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1284
    :cond_13
    const v15, 0x7f110322

    if-ne v6, v15, :cond_1

    .line 1285
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    if-eqz v15, :cond_1

    .line 1286
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1206
    .end local v10    # "removeTile":Z
    .end local v13    # "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1250
    .restart local v8    # "netManager":Landroid/os/INetworkManagementService;
    .restart local v10    # "removeTile":Z
    .restart local v13    # "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    :catch_0
    move-exception v15

    goto/16 :goto_2

    .line 1301
    .end local v2    # "category":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;
    .end local v6    # "id":I
    .end local v7    # "n":I
    .end local v8    # "netManager":Landroid/os/INetworkManagementService;
    .end local v10    # "removeTile":Z
    .end local v13    # "tile":Lcom/flyme/deviceoriginalsettings/dashboard/DashboardTile;
    :cond_15
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 954
    invoke-virtual {p0, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 955
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->finish()V

    .line 956
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 843
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 844
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 847
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 848
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 849
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 851
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 852
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 856
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 857
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 860
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 854
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 860
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getResultIntentData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    return-object v0
.end method

.method public getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 835
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 836
    sget-object v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 838
    :goto_1
    return v1

    .line 835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1427
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromBackStack()I

    .line 720
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1388
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/search/Index;->update()V

    .line 452
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 516
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getMetaData()V

    .line 521
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 522
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 526
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 530
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    .line 535
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 536
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 538
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/flyme/deviceoriginalsettings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    .line 543
    const-class v2, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_2
    const/16 v20, 0x1

    .line 547
    .local v20, "isSubSettings":Z
    :goto_1
    if-eqz v20, :cond_3

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getThemeResId()I

    move-result v22

    .line 550
    .local v22, "themeResId":I
    const v2, 0x7f0b005b

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    const v2, 0x7f0b005d

    move/from16 v0, v22

    if-eq v0, v2, :cond_3

    .line 552
    const v2, 0x7f0b0056

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTheme(I)V

    .line 556
    .end local v22    # "themeResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_c

    const v2, 0x7f0400ee

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setContentView(I)V

    .line 559
    const v2, 0x7f11023b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 561
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 563
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_4

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/search/Index;->update()V

    .line 567
    :cond_4
    if-eqz p1, :cond_d

    .line 570
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 571
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 575
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 577
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;>;"
    if-eqz v16, :cond_5

    .line 578
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 580
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromBackStack()I

    .line 583
    :cond_5
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 584
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 585
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 617
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/dashboard/DashboardCategory;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_6

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 622
    :cond_6
    const v2, 0x7f11023c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 625
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 627
    const v2, 0x7f1101bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 628
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 629
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 631
    const v2, 0x7f1101be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 632
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$3;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    const v2, 0x7f1101bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 639
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$4;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    const v2, 0x7f110056

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/flyme/deviceoriginalsettings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$5;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 655
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 656
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 663
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 664
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 665
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 666
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 672
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 673
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 678
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 679
    return-void

    .line 532
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 543
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 556
    .restart local v20    # "isSubSettings":Z
    :cond_c
    const v2, 0x7f0400ef

    goto/16 :goto_2

    .line 588
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_10

    .line 591
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_e

    .line 592
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 593
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 601
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 603
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 604
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 594
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_e
    if-eqz v20, :cond_f

    .line 595
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 596
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 598
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 608
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 610
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 611
    const v2, 0x7f0a0d9d

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 612
    const-class v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 660
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 669
    :cond_12
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 465
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 495
    :goto_0
    return v2

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 470
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f120007

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 473
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 475
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f11033b

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 476
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 478
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_2

    :cond_1
    move v2, v3

    .line 479
    goto :goto_0

    .line 482
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    if-eqz v2, :cond_3

    .line 483
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v3}, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 487
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 488
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 490
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_4

    .line 491
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 493
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v2, v4

    .line 495
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 825
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 827
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 830
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1466
    packed-switch p1, :pswitch_data_0

    .line 1473
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1468
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1471
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1466
    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1402
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1403
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->revertToInitialFragment()V

    .line 1406
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1393
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1394
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1396
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1454
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1455
    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    .line 1456
    .local v0, "detectedTag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNfcProfileCallback:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;

    if-eqz v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNfcProfileCallback:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;

    invoke-interface {v1, v0}, Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;->onTagRead(Landroid/nfc/Tag;)V

    .line 1462
    .end local v0    # "detectedTag":Landroid/nfc/Tag;
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 817
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 819
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 820
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 821
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 421
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 422
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    const v3, 0x7f0a05f6

    .line 430
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 432
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_1
    const v3, 0x7f0a05f4

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1380
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1381
    const/4 v0, 0x0

    .line 1383
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1372
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1373
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1374
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/dashboard/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 789
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 791
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 792
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_0

    .line 793
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 794
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateCategories(Z)V

    .line 797
    :cond_0
    new-instance v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 803
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 806
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 808
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/flyme/deviceoriginalsettings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 810
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 811
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 813
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 762
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 764
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 765
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 768
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 769
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 771
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 777
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 778
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 780
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 785
    return-void

    .line 777
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 780
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 725
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 726
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 458
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->revertToInitialFragment()V

    .line 461
    :cond_0
    return-void
.end method

.method public setNfcProfileCallback(Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNfcProfileCallback:Lcom/flyme/deviceoriginalsettings/profiles/NFCProfileTagCallback;

    .line 1450
    return-void
.end method

.method public setResultIntentData(Landroid/content/Intent;)V
    .locals 0
    .param p1, "resultIntentData"    # Landroid/content/Intent;

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mResultIntentData:Landroid/content/Intent;

    .line 1446
    return-void
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1363
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 966
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 967
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f11023b

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 968
    if-eqz p2, :cond_0

    .line 969
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 970
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 974
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 975
    return-void

    .line 972
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 904
    const/4 v6, 0x0

    .line 905
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 906
    if-eqz p4, :cond_1

    .line 907
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 913
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 915
    return-void

    .line 910
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 931
    const/4 v4, 0x0

    .line 932
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 933
    if-eqz p4, :cond_1

    .line 934
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 940
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 942
    return-void

    .line 937
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method
