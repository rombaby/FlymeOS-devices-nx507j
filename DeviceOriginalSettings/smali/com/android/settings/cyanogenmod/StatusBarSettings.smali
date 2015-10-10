.class public Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "StatusBarSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/flyme/deviceoriginalsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCustomCarrierLabel:Landroid/preference/PreferenceScreen;

.field private mCustomCarrierLabelText:Ljava/lang/String;

.field private mStatusBarAmPm:Landroid/preference/ListPreference;

.field private mStatusBarBattery:Landroid/preference/ListPreference;

.field private mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

.field private mStatusBarCarrier:Landroid/preference/SwitchPreference;

.field private mStatusBarClock:Landroid/preference/ListPreference;

.field private mStatusBarNetworkTraffic:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$2;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$2;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/flyme/deviceoriginalsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->updateCustomLabelTextSummary()V

    return-void
.end method

.method private enableStatusBarBatteryDependents(I)V
    .locals 2
    .param p1, "batteryIconStyle"    # I

    .prologue
    .line 252
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateCustomLabelTextSummary()V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_carrier_label"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabelText:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabelText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabel:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0a047d

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabel:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v7, 0x7f070053

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 85
    .local v5, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 87
    .local v4, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v7, "status_bar_clock"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    .line 88
    const-string v7, "status_bar_am_pm"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    .line 90
    const-string v7, "status_bar_network_traffic_style"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    .line 91
    const-string v7, "status_bar_carrier"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarCarrier:Landroid/preference/SwitchPreference;

    .line 92
    const-string v7, "custom_carrier_label"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabel:Landroid/preference/PreferenceScreen;

    .line 94
    const-string v7, "status_bar_battery_style"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    .line 95
    const-string v7, "status_bar_show_battery_percent"

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    .line 98
    const-string v7, "status_bar_clock"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, "clockStyle":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 101
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 105
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 106
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    const v10, 0x7f0a019e

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 115
    :goto_0
    const-string v7, "status_bar_network_traffic_style"

    const/4 v10, 0x3

    invoke-static {v5, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 116
    .local v3, "networkTrafficStyle":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarCarrier:Landroid/preference/SwitchPreference;

    const-string v7, "status_bar_carrier"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarCarrier:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 124
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarCarrier:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 129
    :goto_2
    const-string v7, "status_bar_battery_style"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, "batteryStyle":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 132
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const-string v7, "status_bar_show_battery_percent"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "batteryShowPercent":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 138
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    .line 140
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    return-void

    .line 108
    .end local v0    # "batteryShowPercent":I
    .end local v1    # "batteryStyle":I
    .end local v3    # "networkTrafficStyle":I
    :cond_0
    const-string v7, "status_bar_am_pm"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 110
    .local v6, "statusBarAmPm":I
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .end local v6    # "statusBarAmPm":I
    .restart local v3    # "networkTrafficStyle":I
    :cond_1
    move v7, v9

    .line 120
    goto :goto_1

    .line 126
    :cond_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->updateCustomLabelTextSummary()V

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 170
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_0

    move-object v8, p2

    .line 171
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 172
    .local v2, "clockStyle":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 173
    .local v3, "index":I
    const-string v8, "status_bar_clock"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    .end local v2    # "clockStyle":I
    .end local v3    # "index":I
    :goto_0
    return v9

    .line 177
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_1

    move-object v8, p2

    .line 178
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 179
    .local v6, "statusBarAmPm":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 180
    .restart local v3    # "index":I
    const-string v8, "status_bar_am_pm"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarAmPm:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    .end local v3    # "index":I
    .end local v6    # "statusBarAmPm":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_2

    move-object v8, p2

    .line 185
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 186
    .local v1, "batteryStyle":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 187
    .restart local v3    # "index":I
    const-string v8, "status_bar_battery_style"

    invoke-static {v5, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBattery:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 190
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->enableStatusBarBatteryDependents(I)V

    goto :goto_0

    .line 192
    .end local v1    # "batteryStyle":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_3

    move-object v8, p2

    .line 193
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 194
    .local v0, "batteryShowPercent":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 195
    .restart local v3    # "index":I
    const-string v8, "status_bar_show_battery_percent"

    invoke-static {v5, v8, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarBatteryShowPercent:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 200
    .end local v0    # "batteryShowPercent":I
    .end local v3    # "index":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    if-ne p1, v10, :cond_4

    move-object v8, p2

    .line 201
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 202
    .local v4, "networkTrafficStyle":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v8, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 203
    .restart local v3    # "index":I
    const-string v8, "status_bar_network_traffic_style"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarNetworkTraffic:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v8, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 206
    .end local v3    # "index":I
    .end local v4    # "networkTrafficStyle":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarCarrier:Landroid/preference/SwitchPreference;

    if-ne p1, v10, :cond_6

    .line 207
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 208
    .local v7, "value":Z
    const-string v10, "status_bar_carrier"

    if-eqz v7, :cond_5

    move v8, v9

    :cond_5
    invoke-static {v5, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v7    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    move v9, v8

    .line 211
    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v9, 0x3c

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 217
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 218
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "custom_carrier_label"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a047b

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const v5, 0x7f0a047c

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 222
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .local v3, "parent":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 228
    .local v1, "input":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabelText:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    invoke-virtual {v2, v9, v8, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 234
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;

    invoke-direct {v6, p0, v1, v4}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;Landroid/widget/EditText;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 248
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .end local v1    # "input":Landroid/widget/EditText;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "parent":Landroid/widget/LinearLayout;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    return v5

    .line 228
    .restart local v0    # "alert":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "input":Landroid/widget/EditText;
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "parent":Landroid/widget/LinearLayout;
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mCustomCarrierLabelText:Ljava/lang/String;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 157
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 160
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;->mStatusBarClock:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    :cond_0
    return-void
.end method
