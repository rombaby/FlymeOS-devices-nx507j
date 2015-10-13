.class public Landroid/app/ContextImplExtra;
.super Ljava/lang/Object;
.source "ContextImplExtra.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static register(Lnubia/os/NubiaServiceInfo;)V
    .locals 2
    .param p0, "c"    # Lnubia/os/NubiaServiceInfo;

    .prologue
    .line 35
    invoke-interface {p0}, Lnubia/os/NubiaServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/ContextImplExtra$1;

    invoke-direct {v1, p0}, Landroid/app/ContextImplExtra$1;-><init>(Lnubia/os/NubiaServiceInfo;)V

    invoke-static {v0, v1}, Landroid/app/ContextImpl;->registerServiceWrap(Ljava/lang/String;Landroid/app/ContextImpl$ServiceFetcher;)V

    .line 39
    return-void
.end method

.method static registerNubiaServices()V
    .locals 7

    .prologue
    .line 19
    const/4 v5, 0x4

    new-array v2, v5, [Lnubia/os/NubiaServiceInfo;

    const/4 v5, 0x0

    new-instance v6, Lnubia/os/SystemAccessServiceInfo;

    invoke-direct {v6}, Lnubia/os/SystemAccessServiceInfo;-><init>()V

    aput-object v6, v2, v5

    const/4 v5, 0x1

    new-instance v6, Lnubia/os/ClipServiceInfo;

    invoke-direct {v6}, Lnubia/os/ClipServiceInfo;-><init>()V

    aput-object v6, v2, v5

    const/4 v5, 0x2

    new-instance v6, Lnubia/os/HapticsServiceInfo;

    invoke-direct {v6}, Lnubia/os/HapticsServiceInfo;-><init>()V

    aput-object v6, v2, v5

    const/4 v5, 0x3

    new-instance v6, Lnubia/os/edge/EdgeTouchEventServiceInfo;

    invoke-direct {v6}, Lnubia/os/edge/EdgeTouchEventServiceInfo;-><init>()V

    aput-object v6, v2, v5

    .line 26
    .local v2, "ctrls":[Lnubia/os/NubiaServiceInfo;
    move-object v0, v2

    .local v0, "arr$":[Lnubia/os/NubiaServiceInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 27
    .local v1, "c":Lnubia/os/NubiaServiceInfo;
    invoke-static {v1}, Landroid/app/ContextImplExtra;->register(Lnubia/os/NubiaServiceInfo;)V

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "c":Lnubia/os/NubiaServiceInfo;
    :cond_0
    const-string/jumbo v5, "true"

    const-string/jumbo v6, "ro.ti.a2i.enable"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 30
    new-instance v5, Lnubia/os/A2iServiceInfo;

    invoke-direct {v5}, Lnubia/os/A2iServiceInfo;-><init>()V

    invoke-static {v5}, Landroid/app/ContextImplExtra;->register(Lnubia/os/NubiaServiceInfo;)V

    .line 32
    :cond_1
    return-void
.end method
