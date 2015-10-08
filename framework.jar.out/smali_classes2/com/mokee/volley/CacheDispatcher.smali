.class public Lcom/mokee/volley/CacheDispatcher;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Z

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/mokee/volley/Cache;

.field private final e:Lcom/mokee/volley/ResponseDelivery;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u001e)@,\u001aP J0R\r)Q7\u001a\u0019"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x7f

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "\u001e)@,\u001aP9V!\n\u0018eW%\u0014\u0018"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u001e)@,\u001aP J0R\u000f-E6\u001a\u000e \u000e*\u001a\u0018,F "

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u001e)@,\u001aP,J7\u001c\u001c:Gi\u001c\u001c&@!\u0013\u0018,"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u001e)@,\u001aP J0R\u00180S-\r\u0018,"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u001e)@,\u001aP%J7\u000c"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u001e)@,\u001aP J0"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u000e<B6\u000b]&F3_\u0019!P4\u001e\t+K!\r"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    sget-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mokee/volley/CacheDispatcher;->a:Z

    return-void

    :pswitch_7
    const/16 v9, 0x7d

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x48

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x23

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x44

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/mokee/volley/Cache;Lcom/mokee/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;",
            "Lcom/mokee/volley/Cache;",
            "Lcom/mokee/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/volley/CacheDispatcher;->f:Z

    iput-object p1, p0, Lcom/mokee/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/mokee/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/mokee/volley/CacheDispatcher;->d:Lcom/mokee/volley/Cache;

    iput-object p4, p0, Lcom/mokee/volley/CacheDispatcher;->e:Lcom/mokee/volley/ResponseDelivery;

    return-void
.end method

.method static a(Lcom/mokee/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/volley/CacheDispatcher;->f:Z

    invoke-virtual {p0}, Lcom/mokee/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    sget-boolean v1, Lcom/mokee/volley/Request;->o:Z

    :try_start_0
    sget-boolean v0, Lcom/mokee/volley/CacheDispatcher;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/mokee/volley/CacheDispatcher;->d:Lcom/mokee/volley/Cache;

    invoke-interface {v0}, Lcom/mokee/volley/Cache;->initialize()V

    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/mokee/volley/CacheDispatcher;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/Request;

    sget-object v2, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcom/mokee/volley/Request;->b(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/mokee/volley/CacheDispatcher;->d:Lcom/mokee/volley/Cache;

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mokee/volley/Cache;->get(Ljava/lang/String;)Lcom/mokee/volley/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v3, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mokee/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    :cond_3
    invoke-virtual {v2}, Lcom/mokee/volley/Cache$Entry;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mokee/volley/Request;->setCacheEntry(Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Request;

    iget-object v3, p0, Lcom/mokee/volley/CacheDispatcher;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    :cond_4
    sget-object v3, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    new-instance v3, Lcom/mokee/volley/NetworkResponse;

    iget-object v4, v2, Lcom/mokee/volley/Cache$Entry;->data:[B

    iget-object v5, v2, Lcom/mokee/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/mokee/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    sget-object v4, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mokee/volley/Cache$Entry;->refreshNeeded()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/mokee/volley/CacheDispatcher;->e:Lcom/mokee/volley/ResponseDelivery;

    invoke-interface {v4, v0, v3}, Lcom/mokee/volley/ResponseDelivery;->postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_1

    :cond_5
    :try_start_3
    sget-object v4, Lcom/mokee/volley/CacheDispatcher;->g:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/mokee/volley/Request;->setCacheEntry(Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Request;

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/mokee/volley/Response;->intermediate:Z

    iget-object v2, p0, Lcom/mokee/volley/CacheDispatcher;->e:Lcom/mokee/volley/ResponseDelivery;

    new-instance v4, Lcom/mokee/volley/a;

    invoke-direct {v4, p0, v0}, Lcom/mokee/volley/a;-><init>(Lcom/mokee/volley/CacheDispatcher;Lcom/mokee/volley/Request;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/mokee/volley/ResponseDelivery;->postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/mokee/volley/CacheDispatcher;->f:Z

    if-eqz v0, :cond_1

    return-void

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method
