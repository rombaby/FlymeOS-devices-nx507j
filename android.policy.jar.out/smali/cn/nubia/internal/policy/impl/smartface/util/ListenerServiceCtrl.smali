.class public Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;
.super Ljava/lang/Object;
.source "ListenerServiceCtrl.java"


# instance fields
.field final cn:Landroid/content/ComponentName;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mEnabledListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cn.nubia.smartface"

    const-string v2, "cn.nubia.smartface.notification.SmartFaceListenerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->cn:Landroid/content/ComponentName;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 20
    return-void
.end method

.method private dealListenerService(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadEnabledListeners()V
    .locals 6

    .prologue
    .line 43
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 44
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 47
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 49
    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 51
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 52
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private saveEnabledListeners()V
    .locals 6

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 61
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget-object v4, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "enabled_notification_listeners"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    return-void

    .line 68
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method


# virtual methods
.method public isServiceRunning()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->mEnabledListeners:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public maybeCreateListenerService(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->loadEnabledListeners()V

    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->dealListenerService(Z)V

    .line 25
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/smartface/util/ListenerServiceCtrl;->saveEnabledListeners()V

    .line 26
    return-void
.end method
