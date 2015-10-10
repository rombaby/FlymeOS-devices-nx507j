.class public Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "SmartControl.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDirectCallForDialer:Landroid/preference/SwitchPreference;

.field private mDirectCallForMms:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "direct_call_for_dialer"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForDialer:Landroid/preference/SwitchPreference;

    .line 47
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForDialer:Landroid/preference/SwitchPreference;

    const-string v1, "direct_call_for_dialer"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForDialer:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string v1, "direct_call_for_mms"

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForMms:Landroid/preference/SwitchPreference;

    .line 52
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForMms:Landroid/preference/SwitchPreference;

    const-string v4, "direct_call_for_mms"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 54
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForMms:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    return-void

    :cond_0
    move v1, v3

    .line 47
    goto :goto_0

    :cond_1
    move v2, v3

    .line 52
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 65
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForDialer:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    .line 66
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 67
    .local v1, "value":Z
    const-string v4, "direct_call_for_dialer"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    .end local v1    # "value":Z
    :goto_0
    return v3

    .line 69
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/SmartControl;->mDirectCallForMms:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 71
    .restart local v1    # "value":Z
    const-string v4, "direct_call_for_mms"

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v1    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    move v3, v2

    .line 74
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 60
    return-void
.end method
