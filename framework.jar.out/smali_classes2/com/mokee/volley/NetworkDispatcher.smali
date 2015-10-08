.class public Lcom/mokee/volley/NetworkDispatcher;
.super Ljava/lang/Thread;


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mokee/volley/Network;

.field private final c:Lcom/mokee/volley/Cache;

.field private final d:Lcom/mokee/volley/ResponseDelivery;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "h\u001eOJPt\u0010\u0016M^t\u0008^\u0010\\i\u0016KQZr\u001e"

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

    const/16 v9, 0x3f

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

    const-string v1, "S\u0015S\\Qb\u0017^Y\u001fc\u0003XXOr\u0012TS\u001f#\u0008"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "h\u001eOJPt\u0010\u0016UKr\u000b\u0016^Pk\u000bWXKc"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "h\u001eOJPt\u0010\u0016^^e\u0013^\u0010Ht\u0012OIZh"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "h\u0014O\u0010Ri\u001fR[Vc\u001f"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "h\u001eOJPt\u0010\u0016YVu\u0018ZO[+\u0018ZS\\c\u0017WX["

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "h\u001eOJPt\u0010\u0016LJc\u000e^\u0010Kg\u0010^"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    return-void

    :pswitch_6
    const/4 v9, 0x6

    goto :goto_2

    :pswitch_7
    const/16 v9, 0x7b

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x3b

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x3d

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mokee/volley/Network;Lcom/mokee/volley/Cache;Lcom/mokee/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/mokee/volley/Request",
            "<*>;>;",
            "Lcom/mokee/volley/Network;",
            "Lcom/mokee/volley/Cache;",
            "Lcom/mokee/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/volley/NetworkDispatcher;->e:Z

    iput-object p1, p0, Lcom/mokee/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/mokee/volley/NetworkDispatcher;->b:Lcom/mokee/volley/Network;

    iput-object p3, p0, Lcom/mokee/volley/NetworkDispatcher;->c:Lcom/mokee/volley/Cache;

    iput-object p4, p0, Lcom/mokee/volley/NetworkDispatcher;->d:Lcom/mokee/volley/ResponseDelivery;

    return-void
.end method

.method private a(Lcom/mokee/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/mokee/volley/Request;->a(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/VolleyError;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/NetworkDispatcher;->d:Lcom/mokee/volley/ResponseDelivery;

    invoke-interface {v1, p1, v0}, Lcom/mokee/volley/ResponseDelivery;->postError(Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/volley/NetworkDispatcher;->e:Z

    invoke-virtual {p0}, Lcom/mokee/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v2, Lcom/mokee/volley/Request;->o:Z

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/NetworkDispatcher;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/mokee/volley/Request;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/mokee/volley/NetworkDispatcher;->a(Lcom/mokee/volley/Request;)V

    iget-object v1, p0, Lcom/mokee/volley/NetworkDispatcher;->b:Lcom/mokee/volley/Network;

    invoke-interface {v1, v0}, Lcom/mokee/volley/Network;->performRequest(Lcom/mokee/volley/Request;)Lcom/mokee/volley/NetworkResponse;
    :try_end_1
    .catch Lcom/mokee/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    :try_start_2
    sget-object v3, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v3, v1, Lcom/mokee/volley/NetworkResponse;->notModified:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->hasHadResponseDelivered()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/mokee/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-eqz v3, :cond_2

    :try_start_3
    sget-object v3, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->b(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/mokee/volley/Request;->a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    :try_end_3
    .catch Lcom/mokee/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    :try_start_4
    sget-object v3, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->shouldCache()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/mokee/volley/VolleyError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    if-eqz v3, :cond_3

    :try_start_5
    iget-object v3, v1, Lcom/mokee/volley/Response;->cacheEntry:Lcom/mokee/volley/Cache$Entry;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mokee/volley/NetworkDispatcher;->c:Lcom/mokee/volley/Cache;

    invoke-virtual {v0}, Lcom/mokee/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/mokee/volley/Response;->cacheEntry:Lcom/mokee/volley/Cache$Entry;

    invoke-interface {v3, v4, v5}, Lcom/mokee/volley/Cache;->put(Ljava/lang/String;Lcom/mokee/volley/Cache$Entry;)V

    sget-object v3, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/mokee/volley/VolleyError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :try_start_6
    invoke-virtual {v0}, Lcom/mokee/volley/Request;->markDelivered()V

    iget-object v3, p0, Lcom/mokee/volley/NetworkDispatcher;->d:Lcom/mokee/volley/ResponseDelivery;

    invoke-interface {v3, v0, v1}, Lcom/mokee/volley/ResponseDelivery;->postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;)V
    :try_end_6
    .catch Lcom/mokee/volley/VolleyError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v0, v1}, Lcom/mokee/volley/NetworkDispatcher;->a(Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/mokee/volley/NetworkDispatcher;->e:Z

    if-eqz v0, :cond_0

    return-void

    :catch_2
    move-exception v1

    :try_start_7
    throw v1
    :try_end_7
    .catch Lcom/mokee/volley/VolleyError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v1

    sget-object v3, Lcom/mokee/volley/NetworkDispatcher;->f:[Ljava/lang/String;

    aget-object v3, v3, v7

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/mokee/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/mokee/volley/NetworkDispatcher;->d:Lcom/mokee/volley/ResponseDelivery;

    new-instance v4, Lcom/mokee/volley/VolleyError;

    invoke-direct {v4, v1}, Lcom/mokee/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v0, v4}, Lcom/mokee/volley/ResponseDelivery;->postError(Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_4
    move-exception v1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lcom/mokee/volley/VolleyError; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :catch_5
    move-exception v1

    :try_start_9
    throw v1
    :try_end_9
    .catch Lcom/mokee/volley/VolleyError; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
.end method
