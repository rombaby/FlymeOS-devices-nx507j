.class public Lnubia/os/SystemAccessServiceInfo;
.super Ljava/lang/Object;
.source "SystemAccessServiceInfo.java"

# interfaces
.implements Lnubia/os/NubiaServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "system_access"

    return-object v0
.end method

.method public getServiceProxy()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lnubia/os/SystemAccessServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 23
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lnubia/os/ISystemAccess$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/ISystemAccess;

    move-result-object v1

    .line 24
    .local v1, "service":Lnubia/os/ISystemAccess;
    new-instance v2, Lnubia/os/SystemAccessManager;

    invoke-direct {v2, v1}, Lnubia/os/SystemAccessManager;-><init>(Lnubia/os/ISystemAccess;)V

    return-object v2
.end method
