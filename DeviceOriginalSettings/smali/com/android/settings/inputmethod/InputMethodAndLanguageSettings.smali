.class public Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
.implements Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mHardware:Lmokee/hardware/MKHardwareManager;

.field private mHighTouchSensitivity:Landroid/preference/SwitchPreference;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowsOnlyFullImeAndKeyboardList:Z

.field private mStylusGestures:Landroid/preference/PreferenceScreen;

.field private mStylusIconEnabled:Landroid/preference/SwitchPreference;

.field private mTouchscreenHovering:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 111
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    .line 797
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$4;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    .line 748
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;
    .param p1, "x1"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method private static getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 468
    .local v0, "currentLocale":Ljava/util/Locale;
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 469
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 470
    .local v2, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 476
    .end local v2    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    .prologue
    .line 738
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    .line 739
    .local v1, "devices":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 740
    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 741
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    const/4 v3, 0x1

    .line 745
    .end local v0    # "device":Landroid/view/InputDevice;
    :goto_1
    return v3

    .line 739
    .restart local v0    # "device":Landroid/view/InputDevice;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "device":Landroid/view/InputDevice;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 607
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 608
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method public static restore(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x800

    const/16 v5, 0x10

    .line 774
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 775
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v1

    .line 776
    .local v1, "hardware":Lmokee/hardware/MKHardwareManager;
    invoke-virtual {v1, v5}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 777
    const-string v3, "high_touch_sensitivity"

    invoke-virtual {v1, v5}, Lmokee/hardware/MKHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 779
    .local v0, "enabled":Z
    invoke-virtual {v1, v5, v0}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 781
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "Failed to restore high touch sensitivity settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    invoke-virtual {v1, v6}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 787
    const-string v3, "touchscreen_hovering"

    invoke-virtual {v1, v6}, Lmokee/hardware/MKHardwareManager;->get(I)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 789
    .restart local v0    # "enabled":Z
    invoke-virtual {v1, v6, v0}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 790
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "Failed to restore touch hovering settings."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    .end local v0    # "enabled":Z
    :cond_1
    :goto_1
    return-void

    .line 783
    .restart local v0    # "enabled":Z
    :cond_2
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "High touch sensitivity settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 792
    :cond_3
    const-string v3, "InputMethodAndLanguageSettings"

    const-string v4, "Touch hovering settings restored."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    .line 595
    .local v1, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "imiId":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 597
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 601
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    .line 578
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 579
    .local v0, "enabledSubtypeIdSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 581
    .local v1, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 582
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "subtypeId":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "subtypeId":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v3

    .line 587
    .local v3, "imeToEnabledSubtypeIdsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "imiId":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    .line 590
    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "subtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 615
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 616
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "imesAndSubtypesString":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 696
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 698
    .local v0, "fragment":Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 699
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 5

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 623
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 625
    .local v2, "curPref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 626
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 628
    .local v1, "curIme":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 629
    monitor-enter p0

    .line 630
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateGameControllers()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 725
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 726
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 728
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v3, "vibrate_input_devices"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 730
    .local v0, "pref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_input_devices"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 735
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :goto_1
    return-void

    .line 730
    .restart local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 733
    .end local v0    # "pref":Landroid/preference/SwitchPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 642
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 643
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 644
    .local v2, "devices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_3

    .line 645
    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    .line 646
    .local v1, "device":Landroid/view/InputDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 649
    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 650
    .local v5, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    .line 652
    .local v7, "keyboardLayoutDescriptor":Ljava/lang/String;
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    .line 655
    .local v6, "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    :goto_1
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 656
    .local v8, "pref":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 657
    if-eqz v6, :cond_2

    .line 658
    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 662
    :goto_2
    new-instance v10, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v10, p0, v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 669
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .restart local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    :cond_1
    move-object v6, v9

    .line 652
    goto :goto_1

    .line 660
    .restart local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .restart local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_2
    const v10, 0x7f0a09d7

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 673
    .end local v1    # "device":Landroid/view/InputDevice;
    .end local v5    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v6    # "keyboardLayout":Landroid/hardware/input/KeyboardLayout;
    .end local v7    # "keyboardLayoutDescriptor":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 674
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_5

    .line 675
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 676
    .local v8, "pref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_4

    .line 677
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    move v4, v3

    .line 679
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 681
    .end local v4    # "i":I
    .end local v8    # "pref":Landroid/preference/Preference;
    .restart local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 682
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 683
    .local v0, "count":I
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_6

    .line 684
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 685
    .restart local v8    # "pref":Landroid/preference/Preference;
    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 686
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 683
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 689
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_6
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 693
    .end local v0    # "count":I
    :goto_5
    return-void

    .line 691
    :cond_7
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    .line 638
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    .line 639
    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 508
    iget-object v13, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 510
    :try_start_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .line 511
    .local v0, "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 542
    .end local v0    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    .end local v9    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 513
    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v11

    .line 515
    .local v11, "permittedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 516
    .local v1, "context":Landroid/content/Context;
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v10

    .line 519
    .local v10, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    if-nez v10, :cond_3

    move v6, v12

    .line 520
    .local v6, "N":I
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v6, :cond_5

    .line 521
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 522
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v11, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const/4 v4, 0x1

    .line 524
    .local v4, "isAllowedByOrganization":Z
    :goto_4
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 527
    .restart local v0    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 516
    .end local v0    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "isAllowedByOrganization":Z
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v10    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v10

    goto :goto_1

    .line 519
    .restart local v10    # "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_2

    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move v4, v12

    .line 522
    goto :goto_4

    .line 529
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    .line 530
    .local v7, "collator":Ljava/text/Collator;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v5, p0, v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 536
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    .line 537
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .line 538
    .restart local v0    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 539
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 540
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 536
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 542
    .end local v0    # "pref":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    :cond_6
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 548
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {p0, v3, v5, v12}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 551
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "userDictionaryPreference"    # Landroid/preference/Preference;

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 295
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 296
    .local v1, "localeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v2, p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 714
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 716
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 717
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    .line 719
    .local v0, "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 720
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 722
    .end local v0    # "inputDeviceIdentifier":Landroid/hardware/input/InputDeviceIdentifier;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v10, 0x7f070026

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 143
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    .local v0, "activity":Landroid/app/Activity;
    const-string v10, "input_method"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 145
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v10

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    .line 147
    invoke-static {v0}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v10

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    .line 150
    const v10, 0x7f0a043d

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 157
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "phone_language"

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :goto_1
    new-instance v10, Lcom/flyme/deviceoriginalsettings/VoiceInputOutputSettings;

    invoke-direct {v10, p0}, Lcom/flyme/deviceoriginalsettings/VoiceInputOutputSettings;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;)V

    invoke-virtual {v10}, Lcom/flyme/deviceoriginalsettings/VoiceInputOutputSettings;->onCreate()V

    .line 172
    const-string v10, "hard_keyboard"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 173
    const-string v10, "keyboard_settings_category"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 175
    const-string v10, "game_controller_settings_category"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    .line 178
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 180
    .local v7, "startingIntent":Landroid/content/Intent;
    const-string v10, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    .line 182
    iget-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v10, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 184
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 189
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_0
    const-string v10, "input"

    invoke-virtual {v0, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/input/InputManager;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    .line 194
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 196
    const-string v10, "pointer_settings_category"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 199
    .local v3, "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    const-string v10, "stylus_gestures"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusGestures:Landroid/preference/PreferenceScreen;

    .line 200
    const-string v10, "stylus_icon_enabled"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    .line 201
    const-string v10, "high_touch_sensitivity"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    .line 203
    const-string v10, "touchscreen_hovering"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    .line 205
    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200bb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 207
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusGestures:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :cond_1
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_8

    .line 213
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    .line 220
    :goto_2
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v11, 0x800

    invoke-virtual {v10, v11}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v10

    if-nez v10, :cond_9

    .line 221
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    .line 228
    :goto_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "gesture_pad_settings"

    invoke-static {v10, v3, v11}, Lcom/flyme/deviceoriginalsettings/Utils;->updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 230
    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200b7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 238
    .local v5, "showCmImeSwitcher":Z
    if-nez v5, :cond_3

    .line 239
    const-string v10, "status_bar_ime_switcher"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 240
    .local v4, "pref":Landroid/preference/Preference;
    if-eqz v4, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    .end local v4    # "pref":Landroid/preference/Preference;
    :cond_3
    const-string v10, "spellcheckers_settings"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 247
    .local v6, "spellChecker":Landroid/preference/Preference;
    if-eqz v6, :cond_4

    .line 249
    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "intent":Landroid/content/Intent;
    const-class v10, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 252
    const-string v10, ":settings:show_fragment"

    const-class v11, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v10, ":settings:show_fragment_title_resid"

    const v11, 0x7f0a0cdd

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 259
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 260
    new-instance v10, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v10, p0, v11, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 261
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 266
    const-string v10, "input_device_identifier"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    .line 268
    .local v1, "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    iget-boolean v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v10, :cond_5

    if-eqz v1, :cond_5

    .line 269
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    .line 272
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "com.cyanogenmod.voicewakeup"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/flyme/deviceoriginalsettings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_6

    .line 273
    const-string v10, "voice_category"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 275
    .local v8, "voiceCategory":Landroid/preference/PreferenceCategory;
    if-eqz v8, :cond_6

    .line 276
    const-string v10, "voice_wakeup"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 277
    .local v9, "wakeup":Landroid/preference/Preference;
    if-eqz v9, :cond_6

    .line 278
    invoke-virtual {v8, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 282
    .end local v8    # "voiceCategory":Landroid/preference/PreferenceCategory;
    .end local v9    # "wakeup":Landroid/preference/Preference;
    :cond_6
    return-void

    .line 159
    .end local v1    # "identifier":Landroid/hardware/input/InputDeviceIdentifier;
    .end local v3    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .end local v5    # "showCmImeSwitcher":Z
    .end local v6    # "spellChecker":Landroid/preference/Preference;
    .end local v7    # "startingIntent":Landroid/content/Intent;
    :cond_7
    const-string v10, "phone_language"

    invoke-virtual {p0, v10}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    .line 216
    .restart local v3    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .restart local v7    # "startingIntent":Landroid/content/Intent;
    :cond_8
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lmokee/hardware/MKHardwareManager;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 224
    :cond_9
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v12, 0x800

    invoke-virtual {v11, v12}, Lmokee/hardware/MKHardwareManager;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 152
    .end local v3    # "pointerSettingsCategory":Landroid/preference/PreferenceCategory;
    .end local v7    # "startingIntent":Landroid/content/Intent;
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 409
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 414
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 419
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 392
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 394
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 395
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 401
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, v1, v2, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 404
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 424
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 461
    :goto_0
    return v3

    .line 427
    :cond_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    if-ne p2, v5, :cond_3

    .line 428
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stylus_icon_enabled"

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    .line 428
    goto :goto_1

    .line 430
    :cond_3
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    if-ne p2, v5, :cond_4

    .line 431
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHighTouchSensitivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    move-result v3

    goto :goto_0

    .line 433
    :cond_4
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    if-ne p2, v5, :cond_5

    .line 434
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardware:Lmokee/hardware/MKHardwareManager;

    const/16 v4, 0x800

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mTouchscreenHovering:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lmokee/hardware/MKHardwareManager;->set(IZ)Z

    move-result v3

    goto :goto_0

    .line 436
    :cond_5
    instance-of v5, p2, Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_6

    .line 437
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 439
    const-string v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 442
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_2

    .line 444
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    instance-of v5, p2, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_1

    move-object v2, p2

    .line 445
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 446
    .local v2, "pref":Landroid/preference/SwitchPreference;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v2, v5, :cond_8

    .line 447
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vibrate_input_devices"

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    move v4, v3

    :cond_7
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 451
    :cond_8
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v5, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 453
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne v2, v5, :cond_a

    .line 454
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    move v4, v3

    :cond_9
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 452
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 335
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 337
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 338
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    const/4 v9, 0x0

    invoke-virtual {v6, p0, v9}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 340
    const-string v6, "spellcheckers_settings"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 341
    .local v3, "spellChecker":Landroid/preference/Preference;
    if-eqz v3, :cond_0

    .line 342
    const-string v6, "textservices"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/TextServicesManager;

    .line 344
    .local v5, "tsm":Landroid/view/textservice/TextServicesManager;
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 345
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 347
    .local v2, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 355
    .end local v2    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v5    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_1

    .line 356
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mStylusIconEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "stylus_icon_enabled"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 360
    :cond_1
    iget-boolean v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v6, :cond_3

    .line 361
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v6, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "localeName":Ljava/lang/String;
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    .end local v1    # "localeName":Ljava/lang/String;
    :cond_2
    const-string v6, "key_user_dictionary_settings"

    invoke-virtual {p0, v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 373
    :cond_3
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 374
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v6, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_7

    .line 375
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v9, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    .line 377
    .local v4, "swPref":Landroid/preference/SwitchPreference;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v9, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_6

    move v6, v7

    :goto_3
    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 351
    .end local v0    # "i":I
    .end local v4    # "swPref":Landroid/preference/SwitchPreference;
    .restart local v5    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_4
    const v6, 0x7f0a0e1e

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .end local v5    # "tsm":Landroid/view/textservice/TextServicesManager;
    :cond_5
    move v6, v8

    .line 356
    goto :goto_1

    .restart local v0    # "i":I
    .restart local v4    # "swPref":Landroid/preference/SwitchPreference;
    :cond_6
    move v6, v8

    .line 377
    goto :goto_3

    .line 382
    .end local v0    # "i":I
    .end local v4    # "swPref":Landroid/preference/SwitchPreference;
    :cond_7
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    .line 386
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 387
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    .line 388
    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 555
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 556
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v0, 0x1

    .line 563
    .local v0, "hasHardwareKeyboard":Z
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v5

    invoke-static {p0, v4, v5, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 566
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 567
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 570
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    .line 572
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .line 573
    .local v3, "p":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    .line 561
    .end local v0    # "hasHardwareKeyboard":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "p":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 575
    .restart local v0    # "hasHardwareKeyboard":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3
    .param p1, "inputDeviceIdentifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/flyme/deviceoriginalsettings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 706
    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 708
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    .line 709
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 710
    return-void
.end method
