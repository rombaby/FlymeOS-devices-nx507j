.class public Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "WakeLockBlocker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlertShown:Z

.field private mBlockedWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockerEnabled:Landroid/preference/SwitchPreference;

.field private mEnabled:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

.field private mPreferenceCategory:Landroid/preference/PreferenceCategory;

.field mPreferenceRoot:Landroid/preference/PreferenceScreen;

.field private mSeenWakeLocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLockList:Landroid/widget/ListView;

.field private mWakeLockState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertShown:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    return-object v0
.end method

.method private isFirstEnable()Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wakelock_blocking_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    .line 232
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->updateSeenWakeLocksList()V

    .line 233
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->updateBlockedWakeLocksList()V

    .line 235
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mListAdapter:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;->notifyDataSetChanged()V

    .line 236
    return-void
.end method

.method private save()V
    .locals 7

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    .local v2, "nextState":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 217
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 218
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 219
    .local v3, "state":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 223
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wakelock_blocking_list"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    return-void
.end method

.method private showAlert()V
    .locals 4

    .prologue
    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    .line 273
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 274
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$1;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$1;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 283
    return-void
.end method

.method private updateBlockedWakeLocksList()V
    .locals 7

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wakelock_blocking_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "blockedWakelockList":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockedWakeLocks:Ljava/util/List;

    .line 198
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockedWakeLocks:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    aget-object v4, v2, v1

    new-instance v5, Ljava/lang/Boolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    .end local v2    # "parts":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method private updateSeenWakeLocksList()V
    .locals 8

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 180
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getSeenWakeLocks()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "seenWakeLocks":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    .line 183
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    aget-object v5, v1, v0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    aget-object v5, v1, v0

    new-instance v6, Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    .end local v1    # "parts":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateSwitches()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 165
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wakelock_blocking_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mEnabled:Z

    .line 169
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockList:Landroid/widget/ListView;

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mEnabled:Z

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 175
    return-void

    :cond_0
    move v0, v1

    .line 165
    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 174
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockState:Ljava/util/Map;

    .line 146
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->updateSeenWakeLocksList()V

    .line 147
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->updateBlockedWakeLocksList()V

    .line 149
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f11028b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockList:Landroid/widget/ListView;

    .line 151
    new-instance v0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090010

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mSeenWakeLocks:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mListAdapter:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

    .line 154
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mWakeLockList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mListAdapter:Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker$WakeLockListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->updateSwitches()V

    .line 157
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->addPreferencesFromResource(I)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->setHasOptionsMenu(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    .line 111
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    const-string v1, "wakelock_blocking_enabled"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    .line 112
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceRoot:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 114
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0a04bc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 115
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 240
    const/4 v0, 0x1

    const v1, 0x7f0a04bd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10803fd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 245
    const/4 v0, 0x2

    const v1, 0x7f0a04bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 250
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    const v0, 0x7f040115

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 254
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 266
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 256
    :pswitch_0
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->reload()V

    goto :goto_0

    .line 261
    :pswitch_1
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->save()V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 126
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mBlockerEnabled:Landroid/preference/SwitchPreference;

    if-ne p1, v3, :cond_2

    .line 127
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 128
    .local v0, "checked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->isFirstEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertShown:Z

    if-nez v3, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->showAlert()V

    .line 130
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->mAlertShown:Z

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wakelock_blocking_enabled"

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/mokee/WakeLockBlocker;->updateSwitches()V

    .line 137
    .end local v0    # "checked":Z
    :goto_0
    return v2

    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    move v2, v1

    goto :goto_0
.end method
