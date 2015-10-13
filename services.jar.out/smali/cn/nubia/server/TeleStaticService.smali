.class public Lcn/nubia/server/TeleStaticService;
.super Lcn/nubia/server/NubiaSystemService;
.source "TeleStaticService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TeleStaticService"


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private systemReadyMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private initTeleStatic()V
    .locals 9

    .prologue
    .line 51
    :try_start_0
    const-string v2, "/system/framework/nubiatel-common.jar"

    .line 52
    .local v2, "libPath":Ljava/lang/String;
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    .local v4, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "cn.nubia.telestatic.service.TeleStaticOuter"

    invoke-virtual {v4, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 55
    .local v3, "wbcClass":Ljava/lang/Class;
    const-string v6, "systemReady"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcn/nubia/server/TeleStaticService;->systemReadyMethod:Ljava/lang/reflect/Method;

    .line 56
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 57
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/nubia/server/TeleStaticService;->mContext:Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 58
    .local v5, "wbcObject":Ljava/lang/Object;
    check-cast v5, Landroid/os/IBinder;

    .end local v5    # "wbcObject":Ljava/lang/Object;
    iput-object v5, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v2    # "libPath":Ljava/lang/String;
    .end local v3    # "wbcClass":Ljava/lang/Class;
    .end local v4    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "TeleStaticService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "itei"

    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/nubia/server/TeleStaticService;->initTeleStatic()V

    .line 46
    invoke-super {p0}, Lcn/nubia/server/NubiaSystemService;->onStart()V

    .line 47
    return-void
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/TeleStaticService;->systemReadyMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcn/nubia/server/TeleStaticService;->mBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TeleStaticService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
