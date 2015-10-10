.class public Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "BlacklistPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBlacklistAdvertisement:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

.field private mBlacklistFraud:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

.field private mBlacklistHarassment:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

.field private mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

.field private mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPolicyFromSelectList(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 128
    .local v1, "mode":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    .line 130
    goto :goto_0

    .line 132
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V
    .locals 2
    .param p2, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 137
    .local v0, "mode":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    return-void
.end method

.method private updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/MultiSelectListPreference;
    .param p2, "setting"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "mode":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 120
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_1
    invoke-virtual {p1, v1}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 123
    return-void
.end method

.method private updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V
    .locals 5
    .param p1, "pref"    # Landroid/preference/MultiSelectListPreference;
    .param p3, "summaryResId"    # I
    .param p4, "disabledSummaryResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/MultiSelectListPreference;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 142
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getPolicyFromSelectList(Ljava/util/Set;)I

    move-result v0

    .line 145
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0, p4}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    return-void

    .line 150
    :cond_0
    if-ne v0, v3, :cond_1

    .line 151
    const v1, 0x7f0a0131

    .line 158
    .local v1, "typeResId":I
    :goto_1
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p3, v2}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 152
    .end local v1    # "typeResId":I
    :cond_1
    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    .line 153
    const v1, 0x7f0a0132

    .restart local v1    # "typeResId":I
    goto :goto_1

    .line 155
    .end local v1    # "typeResId":I
    :cond_2
    const v1, 0x7f0a0133

    .restart local v1    # "typeResId":I
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 58
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v1, "button_blacklist_private_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    .line 60
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 61
    const-string v1, "button_blacklist_unknown_numbers"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    .line 63
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    const-string v1, "phone_blacklist_advertisement_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistAdvertisement:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    .line 65
    const-string v1, "phone_blacklist_fraud_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistFraud:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    .line 66
    const-string v1, "phone_blacklist_harassment_number"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistHarassment:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    .line 67
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    .line 94
    check-cast v0, Ljava/util/Set;

    .line 95
    .local v0, "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "phone_blacklist_unknown_number_enabled"

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f0a0130

    const v3, 0x7f0a012f

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 109
    .end local v0    # "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 101
    check-cast v0, Ljava/util/Set;

    .line 102
    .restart local v0    # "newValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "phone_blacklist_private_number_enabled"

    invoke-direct {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updatePolicyFromSelectList(Ljava/util/Set;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f0a012d

    const v3, 0x7f0a012c

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 73
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 74
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    const-string v3, "phone_blacklist_private_number_enabled"

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistPrivate:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v3}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    const v4, 0x7f0a012d

    const v5, 0x7f0a012c

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 79
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    const-string v3, "phone_blacklist_unknown_number_enabled"

    invoke-direct {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updateSelectListFromPolicy(Landroid/preference/MultiSelectListPreference;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistUnknown:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v3}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v3

    const v4, 0x7f0a0130

    const v5, 0x7f0a012f

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->updateSelectListSummary(Landroid/preference/MultiSelectListPreference;Ljava/util/Set;II)V

    .line 85
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_cloud_location_lookup"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 86
    .local v1, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistAdvertisement:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;->setEnabled(Z)V

    .line 87
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistFraud:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;->setEnabled(Z)V

    .line 88
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/blacklist/BlacklistPreferences;->mBlacklistHarassment:Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/SystemSettingSwitchPreference;->setEnabled(Z)V

    .line 89
    return-void

    .line 85
    .end local v1    # "enabled":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
