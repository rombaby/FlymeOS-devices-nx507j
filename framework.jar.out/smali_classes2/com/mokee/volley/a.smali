.class Lcom/mokee/volley/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/mokee/volley/CacheDispatcher;

.field private final b:Lcom/mokee/volley/Request;


# direct methods
.method constructor <init>(Lcom/mokee/volley/CacheDispatcher;Lcom/mokee/volley/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/a;->a:Lcom/mokee/volley/CacheDispatcher;

    iput-object p2, p0, Lcom/mokee/volley/a;->b:Lcom/mokee/volley/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/a;->a:Lcom/mokee/volley/CacheDispatcher;

    invoke-static {v0}, Lcom/mokee/volley/CacheDispatcher;->a(Lcom/mokee/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/a;->b:Lcom/mokee/volley/Request;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
