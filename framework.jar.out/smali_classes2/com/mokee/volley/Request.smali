.class public abstract Lcom/mokee/volley/Request;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mokee/volley/Request",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field public static o:Z

.field private static final p:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/mokee/volley/f;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/mokee/volley/Response$ErrorListener;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/mokee/volley/RequestQueue;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/mokee/volley/RetryPolicy;

.field private m:Lcom/mokee/volley/Cache$Entry;

.field private n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x8

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "q=1,Ss,5)U~b9mMg:l&Ub l5H|(/#Ut(%{\u001as% 2Iu9|"

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

    const/16 v9, 0x3a

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

    const-string v1, "w(5\u0013_a8$.Yum\"!V|(%`Xu+.2_0>$4iu<4%Ts("

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "U#\"/^y#&`T\u007f9a3O`=.2Nu){`"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "E\u0019\u0007m\u0002"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "Km\u001c`"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "K\u0015\u001c`"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, " 5"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "5)a-I*md3"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    return-void

    :pswitch_7
    const/16 v9, 0x10

    goto :goto_2

    :pswitch_8
    const/16 v9, 0x4d

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x41

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x40

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

.method public constructor <init>(ILjava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v3, Lcom/mokee/volley/Request;->o:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v4, Lcom/mokee/volley/f;->ENABLED:Z

    if-eqz v4, :cond_0

    new-instance v2, Lcom/mokee/volley/f;

    invoke-direct {v2}, Lcom/mokee/volley/f;-><init>()V

    :cond_0
    :try_start_0
    iput-object v2, p0, Lcom/mokee/volley/Request;->a:Lcom/mokee/volley/f;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mokee/volley/Request;->h:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mokee/volley/Request;->i:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mokee/volley/Request;->j:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/mokee/volley/Request;->k:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mokee/volley/Request;->m:Lcom/mokee/volley/Cache$Entry;

    iput p1, p0, Lcom/mokee/volley/Request;->b:I

    iput-object p2, p0, Lcom/mokee/volley/Request;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/mokee/volley/Request;->e:Lcom/mokee/volley/Response$ErrorListener;

    new-instance v2, Lcom/mokee/volley/DefaultRetryPolicy;

    invoke-direct {v2}, Lcom/mokee/volley/DefaultRetryPolicy;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mokee/volley/Request;->setRetryPolicy(Lcom/mokee/volley/RetryPolicy;)Lcom/mokee/volley/Request;

    invoke-static {p2}, Lcom/mokee/volley/Request;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mokee/volley/Request;->d:I

    if-eqz v3, :cond_1

    sget-boolean v2, Lcom/mokee/volley/VolleyError;->b:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    :goto_0
    sput-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/mokee/volley/Request;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Lcom/mokee/volley/Request;)Lcom/mokee/volley/f;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Request;->a:Lcom/mokee/volley/f;

    return-object v0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected abstract a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/VolleyError;
    .locals 0

    return-object p1
.end method

.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public addMarker(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/mokee/volley/f;->ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/Request;->a:Lcom/mokee/volley/f;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/mokee/volley/f;->add(Ljava/lang/String;J)V

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/mokee/volley/Request;->k:J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mokee/volley/Request;->k:J
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    throw v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/Request;->g:Lcom/mokee/volley/RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/Request;->g:Lcom/mokee/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/mokee/volley/RequestQueue;->a(Lcom/mokee/volley/Request;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-boolean v0, Lcom/mokee/volley/f;->ENABLED:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/mokee/volley/d;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/mokee/volley/d;-><init>(Lcom/mokee/volley/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/mokee/volley/Request;->a:Lcom/mokee/volley/f;

    invoke-virtual {v2, p1, v0, v1}, Lcom/mokee/volley/f;->add(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/mokee/volley/Request;->a:Lcom/mokee/volley/f;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/volley/f;->finish(Ljava/lang/String;)V

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z

    if-eqz v0, :cond_1

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mokee/volley/Request;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    :try_start_1
    sget-object v2, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0
.end method

.method protected c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/volley/Request;->i:Z

    return-void
.end method

.method public compareTo(Lcom/mokee/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getPriority()Lcom/mokee/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getPriority()Lcom/mokee/volley/Request$Priority;

    move-result-object v1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/Request;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/mokee/volley/Request;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/mokee/volley/Request$Priority;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/mokee/volley/Request$Priority;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/mokee/volley/Request;

    invoke-virtual {p0, p1}, Lcom/mokee/volley/Request;->compareTo(Lcom/mokee/volley/Request;)I

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public deliverError(Lcom/mokee/volley/VolleyError;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/Request;->e:Lcom/mokee/volley/Response$ErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/Request;->e:Lcom/mokee/volley/Response$ErrorListener;

    invoke-interface {v0, p1}, Lcom/mokee/volley/Response$ErrorListener;->onErrorResponse(Lcom/mokee/volley/VolleyError;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mokee/volley/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mokee/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0
    :try_end_1
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/mokee/volley/Cache$Entry;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Request;->m:Lcom/mokee/volley/Cache$Entry;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/mokee/volley/Request;->b:I

    return v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mokee/volley/Request;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mokee/volley/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0
    :try_end_1
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/mokee/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/mokee/volley/Request$Priority;->NORMAL:Lcom/mokee/volley/Request$Priority;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/mokee/volley/RetryPolicy;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Request;->l:Lcom/mokee/volley/RetryPolicy;

    return-object v0
.end method

.method public final getSequence()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/Request;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/mokee/volley/Request;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Request;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Request;->l:Lcom/mokee/volley/RetryPolicy;

    invoke-interface {v0}, Lcom/mokee/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    iget v0, p0, Lcom/mokee/volley/Request;->d:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/Request;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mokee/volley/Request;->j:Z

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mokee/volley/Request;->i:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/volley/Request;->j:Z

    return-void
.end method

.method public setCacheEntry(Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Cache$Entry;",
            ")",
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mokee/volley/Request;->m:Lcom/mokee/volley/Cache$Entry;

    return-object p0
.end method

.method public setRequestQueue(Lcom/mokee/volley/RequestQueue;)Lcom/mokee/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/RequestQueue;",
            ")",
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mokee/volley/Request;->g:Lcom/mokee/volley/RequestQueue;

    return-object p0
.end method

.method public setRetryPolicy(Lcom/mokee/volley/RetryPolicy;)Lcom/mokee/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/RetryPolicy;",
            ")",
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mokee/volley/Request;->l:Lcom/mokee/volley/RetryPolicy;

    return-object p0
.end method

.method public final setSequence(I)Lcom/mokee/volley/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/volley/Request;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/mokee/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/mokee/volley/Request;->h:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/mokee/volley/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/mokee/volley/Request",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/mokee/volley/Request;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mokee/volley/Request;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mokee/volley/Request;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v0, v0, v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getPriority()Lcom/mokee/volley/Request$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/Request;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    sget-object v0, Lcom/mokee/volley/Request;->p:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    goto :goto_0
.end method
