.class public Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;
.super Ljava/lang/Object;
.source "GarbageCleanServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$GarbageCleanServiceCallbackDelegate;
    }
.end annotation


# static fields
.field private static final NBSECURITY_GARBAGE_CLEAN_PACKAGE:Ljava/lang/String; = "cn.nubia.security.garbageclean"

.field private static final NBSECURITY_GARBAGE_CLEAN_SERVICE_CLASS:Ljava/lang/String; = "cn.nubia.security.garbageclean.GarbageCleanService"

.field private static final TAG:Ljava/lang/String; = "GarbageCleanServiceDelegate"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mSecurityService:Lnubia/os/ISecurityService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate$1;-><init>(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 52
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;)Lnubia/os/ISecurityService;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    .prologue
    .line 15
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;Lnubia/os/ISecurityService;)Lnubia/os/ISecurityService;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;
    .param p1, "x1"    # Lnubia/os/ISecurityService;

    .prologue
    .line 15
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.nubia.security.garbageclean"

    const-string v2, "cn.nubia.security.garbageclean.GarbageCleanService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const-string v1, "GarbageCleanServiceDelegate"

    const-string v2, "*** can\'t bind to cn.nubia.security.garbageclean.GarbageCleanService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 81
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    invoke-interface {v1}, Lnubia/os/ISecurityService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServiceCallback(Lnubia/os/ISecurityServiceCallback;)V
    .locals 2
    .param p1, "callback"    # Lnubia/os/ISecurityServiceCallback;

    .prologue
    .line 91
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    invoke-interface {v1, p1}, Lnubia/os/ISecurityService;->setSecurityServiceCallback(Lnubia/os/ISecurityServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 69
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->mSecurityService:Lnubia/os/ISecurityService;

    invoke-interface {v1}, Lnubia/os/ISecurityService;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
