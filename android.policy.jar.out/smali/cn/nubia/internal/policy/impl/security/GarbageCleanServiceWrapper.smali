.class public Lcn/nubia/internal/policy/impl/security/GarbageCleanServiceWrapper;
.super Ljava/lang/Object;
.source "GarbageCleanServiceWrapper.java"

# interfaces
.implements Lnubia/os/ISecurityService;


# static fields
.field private static final TAG:Ljava/lang/String; = "GarbageCleanServiceWrapper"


# instance fields
.field private mService:Lnubia/os/ISecurityService;


# direct methods
.method public constructor <init>(Lnubia/os/ISecurityService;)V
    .locals 0
    .param p1, "service"    # Lnubia/os/ISecurityService;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/security/GarbageCleanServiceWrapper;->mService:Lnubia/os/ISecurityService;

    .line 17
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/security/GarbageCleanServiceWrapper;->mService:Lnubia/os/ISecurityService;

    invoke-interface {v0}, Lnubia/os/ISecurityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 31
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/security/GarbageCleanServiceWrapper;->mService:Lnubia/os/ISecurityService;

    invoke-interface {v1}, Lnubia/os/ISecurityService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GarbageCleanServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSecurityServiceCallback(Lnubia/os/ISecurityServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Lnubia/os/ISecurityServiceCallback;

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/security/GarbageCleanServiceWrapper;->mService:Lnubia/os/ISecurityService;

    invoke-interface {v1, p1}, Lnubia/os/ISecurityService;->setSecurityServiceCallback(Lnubia/os/ISecurityServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GarbageCleanServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 22
    :try_start_0
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/security/GarbageCleanServiceWrapper;->mService:Lnubia/os/ISecurityService;

    invoke-interface {v1}, Lnubia/os/ISecurityService;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GarbageCleanServiceWrapper"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
