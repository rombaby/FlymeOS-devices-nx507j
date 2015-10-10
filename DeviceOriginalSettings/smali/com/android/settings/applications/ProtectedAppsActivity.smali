.class public Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;
.super Landroid/app/Activity;
.source "ProtectedAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;,
        Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppViewHolder;,
        Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;,
        Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppProtectList;,
        Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppEntry;
    }
.end annotation


# instance fields
.field private mAppClickListener:Landroid/view/View$OnClickListener;

.field private mAppsAdapter:Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProtect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mProtectedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIsAuth:Z

.field private mWaitUserAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 54
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    .line 448
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$2;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->refreshApps()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mAppClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private refreshApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v4, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 213
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v0, "appEntries":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 216
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    new-instance v5, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppEntry;

    invoke-direct {v5, p0, v3}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppEntry;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return-object v0
.end method

.method private reset()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v2, "componentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 183
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v10, "protected_components"

    invoke-static {v8, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "hiddenComponents":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 187
    const-string v10, "\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v0, v5

    .line 188
    .local v3, "flattened":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 190
    .local v1, "cmp":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 191
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "flattened":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    new-instance v7, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppProtectList;

    invoke-direct {v7, p0, v2, v11}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 198
    .local v7, "list":Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v9, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    invoke-direct {v9, p0, p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 199
    .local v9, "task":Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    new-array v10, v11, [Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 200
    return-void
.end method

.method private resetLock()V
    .locals 4

    .prologue
    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "recreate_pattern_lock"

    const/4 v2, 0x0

    const-class v3, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "lockPattern":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    return-void
.end method

.method private updateProtectedComponentsList()V
    .locals 9

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "protected_components"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "protectedComponents":Ljava/lang/String;
    if-nez v6, :cond_0

    const-string v6, ""

    .line 121
    :cond_0
    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "flattened":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashSet;

    array-length v8, v3

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V

    iput-object v7, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    .line 123
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 124
    .local v2, "flat":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 125
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 126
    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mProtectedApps:Ljava/util/HashSet;

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v2    # "flat":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 147
    packed-switch p1, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 150
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 153
    :pswitch_1
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    goto :goto_0

    .line 157
    :pswitch_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 162
    :pswitch_3
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f0a0140

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->setTitle(I)V

    .line 63
    const v1, 0x7f04006e

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    new-instance v1, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;

    const v2, 0x7f04006f

    invoke-direct {v1, p0, p0, v2}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;

    .line 67
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v1, v3}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;->setNotifyOnChange(Z)V

    .line 69
    const v1, 0x7f110118

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    .line 70
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mProtect:Ljava/util/ArrayList;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const-string v1, "needs_unlock"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    .line 78
    :cond_0
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    if-nez v1, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flyme/deviceoriginalsettings/applications/LockPatternActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "lockPattern":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 83
    .end local v0    # "lockPattern":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    const v0, 0x7f0a013e

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    const v0, 0x7f0a013f

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 173
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 225
    :sswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->reset()V

    goto :goto_0

    .line 228
    :sswitch_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->resetLock()V

    goto :goto_0

    .line 231
    :sswitch_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->finish()V

    goto :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mWaitUserAuth:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->finish()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$1;-><init>(Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;)V

    .line 109
    .local v0, "refreshAppsTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/List<Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity$AppEntry;>;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->updateProtectedComponentsList()V

    .line 115
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "needs_unlock"

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/applications/ProtectedAppsActivity;->mUserIsAuth:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    return-void
.end method
