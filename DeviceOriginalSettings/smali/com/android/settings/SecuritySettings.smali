.class public Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSmsSecurityCheck:Landroid/preference/ListPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 422
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 425
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 29

    .prologue
    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 135
    .local v16, "root":Landroid/preference/PreferenceScreen;
    if-eqz v16, :cond_0

    .line 136
    invoke-virtual/range {v16 .. v16}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 140
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 144
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    if-nez v25, :cond_9

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    .line 146
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 147
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 149
    const v25, 0x7f070043

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 156
    :cond_1
    :goto_1
    const v25, 0x7f070047

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 160
    const-string v25, "sim_lock_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 161
    .local v9, "iccLock":Landroid/preference/Preference;
    const-string v25, "sim_lock"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceGroup;

    .line 163
    .local v10, "iccLockGroup":Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v25, v0

    if-nez v25, :cond_b

    .line 164
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "lock_to_app_enabled"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_3

    .line 216
    const-string v25, "screen_pinning_settings"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0e1d

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    :cond_3
    const-string v25, "android.hardware.telephony"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 222
    .local v12, "isTelephony":Z
    if-eqz v12, :cond_4

    .line 223
    const-string v25, "sms_security_check_limit"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 227
    .local v20, "smsSecurityCheck":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    .line 232
    .end local v20    # "smsSecurityCheck":I
    :cond_4
    const-string v25, "show_password"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 233
    const-string v25, "credentials_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "user"

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 237
    .local v24, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 238
    const-string v25, "no_config_credentials"

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 239
    const-string v25, "credential_storage_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 241
    .local v4, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    if-eqz v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v25

    if-eqz v25, :cond_12

    const v21, 0x7f0a0b8e

    .line 245
    .local v21, "storageSummaryRes":I
    :goto_3
    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 255
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    .end local v21    # "storageSummaryRes":I
    :goto_4
    const-string v25, "device_admin_category"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 257
    .local v6, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v25, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v25

    if-nez v25, :cond_14

    const/16 v25, 0x1

    :goto_5
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 263
    const-string v25, "no_install_unknown_sources"

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    const-string v25, "no_install_apps"

    invoke-virtual/range {v24 .. v25}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 265
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 269
    :cond_6
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v25

    if-nez v25, :cond_7

    .line 270
    const-string v25, "app_ops_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 271
    .local v3, "appOpsSummary":Landroid/preference/Preference;
    if-eqz v6, :cond_7

    .line 272
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 279
    .end local v3    # "appOpsSummary":Landroid/preference/Preference;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/flyme/deviceoriginalsettings/search/Index;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/search/Index;

    move-result-object v25

    const-class v26, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    const/16 v28, 0x1

    invoke-virtual/range {v25 .. v28}, Lcom/flyme/deviceoriginalsettings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 282
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    sget-object v25, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_15

    .line 283
    sget-object v25, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v25, v25, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 284
    .local v15, "pref":Landroid/preference/Preference;
    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 282
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 144
    .end local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v8    # "i":I
    .end local v9    # "iccLock":Landroid/preference/Preference;
    .end local v10    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    .end local v12    # "isTelephony":Z
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v24    # "um":Landroid/os/UserManager;
    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 152
    :cond_a
    const v25, 0x7f07004d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 166
    .restart local v9    # "iccLock":Landroid/preference/Preference;
    .restart local v10    # "iccLockGroup":Landroid/preference/PreferenceGroup;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v22

    .line 167
    .local v22, "subMgr":Landroid/telephony/SubscriptionManager;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    .line 168
    .local v23, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v13

    .line 169
    .local v13, "numPhones":I
    const/4 v7, 0x0

    .line 171
    .local v7, "hasAnySim":Z
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    if-ge v8, v13, :cond_10

    .line 174
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v13, v0, :cond_e

    .line 175
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v19

    .line 176
    .local v19, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v19, :cond_d

    .line 171
    .end local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_c
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 180
    .restart local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_d
    new-instance v15, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 181
    .restart local v15    # "pref":Landroid/preference/Preference;
    invoke-virtual {v9}, Landroid/preference/Preference;->getOrder()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 182
    const v25, 0x7f0a03d3

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v28, v8, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-class v26, Lcom/flyme/deviceoriginalsettings/IccLockSettings;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v11, "intent":Landroid/content/Intent;
    const-string v25, "slot_id"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v25, "sub_display_name"

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 188
    invoke-virtual {v15, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 190
    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_9
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v25

    or-int v7, v7, v25

    .line 198
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v18

    .line 199
    .local v18, "simState":I
    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    if-eqz v18, :cond_f

    const/16 v25, 0x8

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v17, 0x1

    .line 202
    .local v17, "simPresent":Z
    :goto_a
    if-nez v17, :cond_c

    .line 203
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 192
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v17    # "simPresent":Z
    .end local v18    # "simState":I
    :cond_e
    move-object v15, v9

    .restart local v15    # "pref":Landroid/preference/Preference;
    goto :goto_9

    .line 199
    .restart local v18    # "simState":I
    :cond_f
    const/16 v17, 0x0

    goto :goto_a

    .line 207
    .end local v15    # "pref":Landroid/preference/Preference;
    .end local v18    # "simState":I
    :cond_10
    if-nez v7, :cond_11

    .line 208
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 209
    :cond_11
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v13, v0, :cond_2

    .line 210
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 241
    .end local v7    # "hasAnySim":Z
    .end local v8    # "i":I
    .end local v13    # "numPhones":I
    .end local v22    # "subMgr":Landroid/telephony/SubscriptionManager;
    .end local v23    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v4    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v12    # "isTelephony":Z
    .restart local v24    # "um":Landroid/os/UserManager;
    :cond_12
    const v21, 0x7f0a0b8f

    goto/16 :goto_3

    .line 247
    .end local v4    # "credentialStorageType":Landroid/preference/Preference;
    :cond_13
    const-string v25, "credentials_management"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 249
    .local v5, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v25, "credentials_reset"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    const-string v25, "credentials_install"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    const-string v25, "credential_storage_type"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 262
    .end local v5    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v6    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 287
    .restart local v8    # "i":I
    :cond_15
    return-object v16
.end method

.method public static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 295
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 298
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 299
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 297
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    :cond_1
    invoke-static {v2, p0}, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 301
    invoke-static {p0, v2}, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 303
    .local v5, "trustAgentComponentInfo":Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 307
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 311
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 321
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateSmsSecuritySummary(I)V
    .locals 5
    .param p1, "selection"    # I

    .prologue
    .line 360
    if-lez p1, :cond_0

    const v1, 0x7f0a0152

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "message":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSmsSecurityCheck:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    return-void

    .line 360
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a0153

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a087f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a092c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 338
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 416
    const v0, 0x7f0a0d49

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 342
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 343
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 344
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 345
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 349
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 124
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 125
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 353
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onDestroy()V

    .line 354
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 357
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 391
    const/4 v1, 0x1

    .line 392
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "key":Ljava/lang/String;
    const-string v4, "show_password"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    :cond_1
    :goto_0
    return v1

    .line 396
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v4, "toggle_install_applications"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 397
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 398
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 399
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->warnAppInstallation()V

    .line 401
    const/4 v1, 0x0

    goto :goto_0

    .line 403
    :cond_3
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 405
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    const-string v3, "sms_security_check_limit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 407
    .local v2, "smsSecurityCheck":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sms_outgoing_check_max_count"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 409
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->updateSmsSecuritySummary(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 373
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 377
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 379
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 380
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 387
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 380
    goto :goto_0

    :cond_3
    move v1, v2

    .line 385
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 368
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    return-void
.end method
