.class public Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "RecentsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mRecentsClearAll:Landroid/preference/SwitchPreference;

.field private mRecentsClearAllLocation:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateRecentsLocation(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_clear_all_location"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAllLocation:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAllLocation:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x2

    const/4 v4, 0x1

    .line 43
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v3, 0x7f07003e

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 47
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 49
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "show_clear_all_recents"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAll:Landroid/preference/SwitchPreference;

    .line 50
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAll:Landroid/preference/SwitchPreference;

    const-string v3, "show_clear_all_recents"

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 52
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAll:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    const-string v3, "recents_clear_all_location"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAllLocation:Landroid/preference/ListPreference;

    .line 55
    const-string v3, "recents_clear_all_location"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 57
    .local v0, "location":I
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAllLocation:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAllLocation:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 59
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->updateRecentsLocation(I)V

    .line 60
    return-void

    .line 50
    .end local v0    # "location":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x2

    const/4 v3, 0x1

    .line 63
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAll:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    .line 64
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 65
    .local v1, "show":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clear_all_recents"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 75
    .end local v1    # "show":Z
    :goto_0
    return v3

    .line 68
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->mRecentsClearAllLocation:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_2

    .line 69
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    .local v0, "location":I
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "recents_clear_all_location"

    invoke-static {v2, v4, v0, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/mokee/RecentsSettings;->updateRecentsLocation(I)V

    goto :goto_0

    .end local v0    # "location":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    move v3, v2

    .line 75
    goto :goto_0
.end method
