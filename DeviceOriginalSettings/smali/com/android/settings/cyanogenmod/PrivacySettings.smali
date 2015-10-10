.class public Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBlacklist:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings$1;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings$1;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBlacklistSummary()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/BlacklistUtils;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a0128

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->addPreferencesFromResource(I)V

    .line 49
    const-string v2, "blacklist"

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    .line 52
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 55
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 58
    .local v1, "root":Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->mBlacklist:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    .end local v1    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 65
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;->updateBlacklistSummary()V

    .line 66
    return-void
.end method
