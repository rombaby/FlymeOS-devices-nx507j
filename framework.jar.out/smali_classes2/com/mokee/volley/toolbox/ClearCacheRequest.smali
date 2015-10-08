.class public Lcom/mokee/volley/toolbox/ClearCacheRequest;
.super Lcom/mokee/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mokee/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final p:Lcom/mokee/volley/Cache;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/mokee/volley/Cache;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/mokee/volley/Request;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ClearCacheRequest;->p:Lcom/mokee/volley/Cache;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/ClearCacheRequest;->q:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getPriority()Lcom/mokee/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/mokee/volley/Request$Priority;->IMMEDIATE:Lcom/mokee/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ClearCacheRequest;->p:Lcom/mokee/volley/Cache;

    invoke-interface {v0}, Lcom/mokee/volley/Cache;->clear()V

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ClearCacheRequest;->q:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ClearCacheRequest;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
