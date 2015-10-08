.class public Lcom/mokee/volley/RequestQueue;
.super Ljava/lang/Object;


# static fields
.field private static final k:[Ljava/lang/String;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/mokee/volley/Cache;

.field private final g:Lcom/mokee/volley/Network;

.field private final h:Lcom/mokee/volley/ResponseDelivery;

.field private i:[Lcom/mokee/volley/NetworkDispatcher;

.field private j:Lcom/mokee/volley/CacheDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v13, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v5, v13, [Ljava/lang/String;

    const-string v4, "\u0014e)b)#$$m(4a+M*;$0e2?$&,(\"h+,26c"

    const/4 v0, -0x1

    move-object v6, v5

    move-object v7, v5

    move v5, v1

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v8, v4

    if-gt v8, v2, :cond_2

    move v9, v1

    :cond_0
    move-object v10, v4

    move v11, v9

    move v15, v8

    move-object v8, v4

    move v4, v15

    :goto_1
    aget-char v14, v8, v9

    rem-int/lit8 v12, v11, 0x5

    packed-switch v12, :pswitch_data_0

    const/16 v12, 0x46

    :goto_2
    xor-int/2addr v12, v14

    int-to-char v12, v12

    aput-char v12, v8, v9

    add-int/lit8 v9, v11, 0x1

    if-nez v4, :cond_1

    move-object v8, v10

    move v11, v9

    move v9, v4

    goto :goto_1

    :cond_1
    move v8, v4

    move-object v4, v10

    :goto_3
    if-gt v8, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    packed-switch v0, :pswitch_data_1

    aput-object v4, v6, v5

    const-string v0, "\u0005a+i\'$m)kfr`g{\'>p.b!wv\"}32w3\u007ff1k5,%6g/i\r2}z)5y"

    move-object v4, v0

    move v5, v2

    move-object v6, v7

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v4, v6, v5

    const-string v0, "6`#!28)6y#\"a"

    move-object v4, v0

    move v5, v3

    move-object v6, v7

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v4, v6, v5

    const/4 v4, 0x3

    const-string v0, "\u0005a6y#$pgj)%$$m%?a\u000ci?j!4,/$$.bf1h.k.#(g|3#p.b!wk),.8h#\""

    move v5, v4

    move-object v6, v7

    move-object v4, v0

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v4, v6, v5

    sput-object v7, Lcom/mokee/volley/RequestQueue;->k:[Ljava/lang/String;

    return-void

    :pswitch_3
    const/16 v12, 0x57

    goto :goto_2

    :pswitch_4
    move v12, v13

    goto :goto_2

    :pswitch_5
    const/16 v12, 0x47

    goto :goto_2

    :pswitch_6
    const/16 v12, 0xc

    goto :goto_2

    :cond_2
    move v9, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lcom/mokee/volley/Cache;Lcom/mokee/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/mokee/volley/RequestQueue;-><init>(Lcom/mokee/volley/Cache;Lcom/mokee/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/Cache;Lcom/mokee/volley/Network;I)V
    .locals 3

    new-instance v0, Lcom/mokee/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/mokee/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mokee/volley/RequestQueue;-><init>(Lcom/mokee/volley/Cache;Lcom/mokee/volley/Network;ILcom/mokee/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/Cache;Lcom/mokee/volley/Network;ILcom/mokee/volley/ResponseDelivery;)V
    .locals 2

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/mokee/volley/RequestQueue;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/mokee/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/mokee/volley/RequestQueue;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p1, p0, Lcom/mokee/volley/RequestQueue;->f:Lcom/mokee/volley/Cache;

    iput-object p2, p0, Lcom/mokee/volley/RequestQueue;->g:Lcom/mokee/volley/Network;

    new-array v1, p3, [Lcom/mokee/volley/NetworkDispatcher;

    iput-object v1, p0, Lcom/mokee/volley/RequestQueue;->i:[Lcom/mokee/volley/NetworkDispatcher;

    iput-object p4, p0, Lcom/mokee/volley/RequestQueue;->h:Lcom/mokee/volley/ResponseDelivery;

    sget-boolean v1, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mokee/volley/Request;->o:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/mokee/volley/Request;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    :try_start_2
    sget-boolean v3, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mokee/volley/RequestQueue;->k:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/mokee/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public add(Lcom/mokee/volley/Request;)Lcom/mokee/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mokee/volley/Request",
            "<TT;>;)",
            "Lcom/mokee/volley/Request",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/mokee/volley/Request;->setRequestQueue(Lcom/mokee/volley/RequestQueue;)Lcom/mokee/volley/Request;

    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mokee/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mokee/volley/Request;->setSequence(I)Lcom/mokee/volley/Request;

    sget-object v0, Lcom/mokee/volley/RequestQueue;->k:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_3

    :try_start_5
    sget-object v0, Lcom/mokee/volley/RequestQueue;->k:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->b:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    :try_start_6
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catch_1
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public cancelAll(Lcom/mokee/volley/RequestQueue$RequestFilter;)V
    .locals 4

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z

    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/mokee/volley/RequestQueue;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/Request;

    invoke-interface {p1, v0}, Lcom/mokee/volley/RequestQueue$RequestFilter;->apply(Lcom/mokee/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->cancel()V

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/mokee/volley/RequestQueue;->k:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    new-instance v0, Lcom/mokee/volley/e;

    invoke-direct {v0, p0, p1}, Lcom/mokee/volley/e;-><init>(Lcom/mokee/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/mokee/volley/RequestQueue;->cancelAll(Lcom/mokee/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method public getCache()Lcom/mokee/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->f:Lcom/mokee/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public start()V
    .locals 6

    sget-boolean v1, Lcom/mokee/volley/Request;->o:Z

    invoke-virtual {p0}, Lcom/mokee/volley/RequestQueue;->stop()V

    new-instance v0, Lcom/mokee/volley/CacheDispatcher;

    iget-object v2, p0, Lcom/mokee/volley/RequestQueue;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/mokee/volley/RequestQueue;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/mokee/volley/RequestQueue;->f:Lcom/mokee/volley/Cache;

    iget-object v5, p0, Lcom/mokee/volley/RequestQueue;->h:Lcom/mokee/volley/ResponseDelivery;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mokee/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mokee/volley/Cache;Lcom/mokee/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcom/mokee/volley/RequestQueue;->j:Lcom/mokee/volley/CacheDispatcher;

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->j:Lcom/mokee/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/mokee/volley/CacheDispatcher;->start()V

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/mokee/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/mokee/volley/RequestQueue;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/mokee/volley/RequestQueue;->g:Lcom/mokee/volley/Network;

    iget-object v4, p0, Lcom/mokee/volley/RequestQueue;->f:Lcom/mokee/volley/Cache;

    iget-object v5, p0, Lcom/mokee/volley/RequestQueue;->h:Lcom/mokee/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mokee/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/mokee/volley/Network;Lcom/mokee/volley/Cache;Lcom/mokee/volley/ResponseDelivery;)V

    iget-object v2, p0, Lcom/mokee/volley/RequestQueue;->i:[Lcom/mokee/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/mokee/volley/NetworkDispatcher;->start()V

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->i:[Lcom/mokee/volley/NetworkDispatcher;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void
.end method

.method public stop()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->j:Lcom/mokee/volley/CacheDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/RequestQueue;->j:Lcom/mokee/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/mokee/volley/CacheDispatcher;->quit()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->i:[Lcom/mokee/volley/NetworkDispatcher;

    array-length v1, v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    if-lt v0, v1, :cond_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->i:[Lcom/mokee/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mokee/volley/RequestQueue;->i:[Lcom/mokee/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mokee/volley/NetworkDispatcher;->quit()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0
.end method
