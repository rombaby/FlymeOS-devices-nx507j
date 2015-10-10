.class public Lcom/mokee/helper/MoKeeApplication;
.super Landroid/app/Application;
.source "MoKeeApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static context:Landroid/content/Context;


# instance fields
.field private final mAliasCallback:Lcn/jpush/android/api/TagAliasCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mMainActivityActive:Z

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private final mTagsCallback:Lcn/jpush/android/api/TagAliasCallback;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 57
    new-instance v0, Lcom/mokee/helper/MoKeeApplication$1;

    invoke-direct {v0, p0}, Lcom/mokee/helper/MoKeeApplication$1;-><init>(Lcom/mokee/helper/MoKeeApplication;)V

    iput-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/mokee/helper/MoKeeApplication$2;

    invoke-direct {v0, p0}, Lcom/mokee/helper/MoKeeApplication$2;-><init>(Lcom/mokee/helper/MoKeeApplication;)V

    iput-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mAliasCallback:Lcn/jpush/android/api/TagAliasCallback;

    .line 133
    new-instance v0, Lcom/mokee/helper/MoKeeApplication$3;

    invoke-direct {v0, p0}, Lcom/mokee/helper/MoKeeApplication$3;-><init>(Lcom/mokee/helper/MoKeeApplication;)V

    iput-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mTagsCallback:Lcn/jpush/android/api/TagAliasCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/mokee/helper/MoKeeApplication;)Lcn/jpush/android/api/TagAliasCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/MoKeeApplication;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mAliasCallback:Lcn/jpush/android/api/TagAliasCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mokee/helper/MoKeeApplication;)Lcn/jpush/android/api/TagAliasCallback;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/MoKeeApplication;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mTagsCallback:Lcn/jpush/android/api/TagAliasCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mokee/helper/MoKeeApplication;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/MoKeeApplication;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mokee/helper/MoKeeApplication;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/MoKeeApplication;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/mokee/helper/MoKeeApplication;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/mokee/helper/MoKeeApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public isMainActivityActive()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/mokee/helper/MoKeeApplication;->mMainActivityActive:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 176
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    instance-of v0, p1, Lcom/mokee/helper/activities/MoKeeCenter;

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/helper/MoKeeApplication;->mMainActivityActive:Z

    .line 191
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    instance-of v0, p1, Lcom/mokee/helper/activities/MoKeeCenter;

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/helper/MoKeeApplication;->mMainActivityActive:Z

    .line 198
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 80
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 82
    iput-boolean v6, p0, Lcom/mokee/helper/MoKeeApplication;->mMainActivityActive:Z

    .line 83
    invoke-virtual {p0, p0}, Lcom/mokee/helper/MoKeeApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 84
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v4

    iput-object v4, p0, Lcom/mokee/helper/MoKeeApplication;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 85
    invoke-virtual {p0}, Lcom/mokee/helper/MoKeeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/mokee/helper/MoKeeApplication;->context:Landroid/content/Context;

    .line 88
    sget-object v4, Lcom/mokee/helper/MoKeeApplication;->context:Landroid/content/Context;

    const-string v5, "mokee_push"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/mokee/helper/MoKeeApplication;->prefs:Landroid/content/SharedPreferences;

    .line 89
    invoke-static {v6}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 90
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lcom/mokee/os/Build;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "alias":Ljava/lang/String;
    iget-object v4, p0, Lcom/mokee/helper/MoKeeApplication;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "pref_alias"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "prefAlias":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 97
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v3, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v4, Lcom/mokee/os/Build;->PRODUCT_NAME:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/mokee/stats/Utilities;->getMoKeeMajorVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v4, p0, Lcom/mokee/helper/MoKeeApplication;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "pref_tags"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 101
    .local v2, "prefTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    iget-object v4, p0, Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mokee/helper/MoKeeApplication;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    :cond_1
    return-void
.end method
