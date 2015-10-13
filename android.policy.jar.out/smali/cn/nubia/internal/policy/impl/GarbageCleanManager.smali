.class public Lcn/nubia/internal/policy/impl/GarbageCleanManager;
.super Ljava/lang/Object;
.source "GarbageCleanManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeQueueingHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "GarbageCleanManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcn/nubia/internal/policy/impl/GarbageCleanManager$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager$1;-><init>(Lcn/nubia/internal/policy/impl/GarbageCleanManager;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/internal/policy/impl/GarbageCleanManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/internal/policy/impl/GarbageCleanManager;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/internal/policy/impl/GarbageCleanManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->handleDismiss()V

    return-void
.end method

.method private handleDismiss()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mDelegate:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mDelegate:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->dismiss()V

    .line 64
    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mDelegate:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mDelegate:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    invoke-virtual {v0}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;->show()V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)J
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .param p3, "isScreenOn"    # Z

    .prologue
    .line 83
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public startGarbageCleanService()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/GarbageCleanManager;->mDelegate:Lcn/nubia/internal/policy/impl/garbageclean/GarbageCleanServiceDelegate;

    .line 76
    return-void
.end method
