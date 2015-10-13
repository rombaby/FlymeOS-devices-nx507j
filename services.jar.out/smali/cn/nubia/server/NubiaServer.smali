.class public Lcn/nubia/server/NubiaServer;
.super Ljava/lang/Object;
.source "NubiaServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadLibraries()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "nubia_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private static startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V
    .locals 0
    .param p0, "serviceClass"    # Ljava/lang/String;
    .param p1, "manager"    # Lcom/android/server/SystemServiceManager;

    .prologue
    .line 40
    invoke-virtual {p1, p0}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 41
    return-void
.end method

.method public static startServicesAtFirst(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Lcom/android/server/SystemServiceManager;

    .prologue
    .line 30
    invoke-static {}, Lcn/nubia/server/NubiaServer;->loadLibraries()V

    .line 31
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cn.nubia.server.SystemAccessService"

    aput-object v6, v4, v5

    .line 35
    .local v4, "serviceClasses":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 36
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3, p1}, Lcn/nubia/server/NubiaServer;->startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static startServicesAtLast(Landroid/content/Context;Lcom/android/server/SystemServiceManager;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Lcom/android/server/SystemServiceManager;

    .prologue
    .line 12
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cn.nubia.server.ClipExtraService"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cn.nubia.server.breathinglight.BreathingLightService"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "cn.nubia.server.HapticsService"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "cn.nubia.server.TeleStaticService"

    aput-object v6, v4, v5

    .line 19
    .local v4, "serviceClasses":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 20
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3, p1}, Lcn/nubia/server/NubiaServer;->startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    const-string v5, "true"

    const-string v6, "ro.ti.a2i.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    const-string v5, "cn.nubia.server.A2iService"

    invoke-static {v5, p1}, Lcn/nubia/server/NubiaServer;->startService(Ljava/lang/String;Lcom/android/server/SystemServiceManager;)V

    .line 25
    :cond_1
    return-void
.end method
