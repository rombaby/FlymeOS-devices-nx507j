.class public Lcn/nubia/server/SystemAccessService;
.super Lcn/nubia/server/NubiaSystemService;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/SystemAccessService$SystemAccessStub;
    }
.end annotation


# static fields
.field static Flag_EndCall:Z = false

.field static Flag_Home:Z = false

.field private static final REABLE_POWER_HOME_FUNCTION_TIMEOUT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SystemAccessService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSnapshotBm:Landroid/graphics/Bitmap;

.field private final mSystemAccessStub:Lcn/nubia/server/SystemAccessService$SystemAccessStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-boolean v0, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    .line 27
    sput-boolean v0, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/server/NubiaSystemService;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcn/nubia/server/SystemAccessService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/SystemAccessService$1;-><init>(Lcn/nubia/server/SystemAccessService;)V

    iput-object v0, p0, Lcn/nubia/server/SystemAccessService;->mHandler:Landroid/os/Handler;

    .line 37
    new-instance v0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;

    invoke-direct {v0, p0}, Lcn/nubia/server/SystemAccessService$SystemAccessStub;-><init>(Lcn/nubia/server/SystemAccessService;)V

    iput-object v0, p0, Lcn/nubia/server/SystemAccessService;->mSystemAccessStub:Lcn/nubia/server/SystemAccessService$SystemAccessStub;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/SystemAccessService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/server/SystemAccessService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 22
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/server/SystemAccessService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/SystemAccessService;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/server/SystemAccessService;->enableWake(Z)Z

    move-result v0

    return v0
.end method

.method private native enableWake(Z)Z
.end method


# virtual methods
.method public getServiceBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService;->mSystemAccessStub:Lcn/nubia/server/SystemAccessService$SystemAccessStub;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "system_access"

    return-object v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
