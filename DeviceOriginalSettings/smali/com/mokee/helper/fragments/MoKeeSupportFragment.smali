.class public Lcom/mokee/helper/fragments/MoKeeSupportFragment;
.super Landroid/preference/PreferenceFragment;
.source "MoKeeSupportFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mMoKeeNewsPreferences:Landroid/preference/SwitchPreference;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static goToURL(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    .line 74
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0, v3}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->setHasOptionsMenu(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "mokee_push"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->prefs:Landroid/content/SharedPreferences;

    .line 77
    const-string v0, "mokee_news"

    invoke-virtual {p0, v0}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mMoKeeNewsPreferences:Landroid/preference/SwitchPreference;

    .line 78
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mMoKeeNewsPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mMoKeeNewsPreferences:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_news"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 123
    const v0, 0x7f0a002d

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 125
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return v1

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/mokee/helper/activities/MoKeeCenter;->donateOrRemoveAdsButton(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mMoKeeNewsPreferences:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 86
    .local v0, "value":Z
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_news"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    const/4 v1, 0x1

    .line 89
    .end local v0    # "value":Z
    :goto_0
    return v1

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "key":Ljava/lang/String;
    const-string v1, "mokee_website"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "http://www.mokeedev.com"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 97
    :cond_1
    const-string v1, "mokee_forum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "http://bbs.mfunz.com"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    const-string v1, "mokee_issues"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v2, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/mokee/utils/MoKeeUtils;->isSupportLanguage(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "http://bbs.mfunz.com/forum.php?mod=forumdisplay&fid=280&filter=typeid&typeid=1358"

    :goto_1
    invoke-static {v2, v1}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "http://issues.mokeedev.com"

    goto :goto_1

    .line 101
    :cond_4
    const-string v1, "mokee_changelog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "http://changelog.mokeedev.com"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_5
    const-string v1, "mokee_build_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 104
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "http://build.mokeedev.com"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_6
    const-string v1, "mokee_translate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 106
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "http://translate.mokeedev.com"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_7
    const-string v1, "mokee_github"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 108
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "https://github.com/MoKee"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_8
    const-string v1, "mokee_wiki"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->mContext:Landroid/app/Activity;

    const-string v2, "http://wiki.mokeedev.com"

    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeSupportFragment;->goToURL(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
