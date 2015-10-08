.class public Lcom/mokee/volley/ExecutorDelivery;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/ResponseDelivery;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, "\u000ce2&\u0011\u000eo2\"S\u0012y$"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x3c

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, "\u000ce2&\u0011\u0019x3=N"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/mokee/volley/ExecutorDelivery;->b:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x7c

    goto :goto_2

    :pswitch_2
    const/16 v11, 0xa

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x41

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x52

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mokee/volley/b;

    invoke-direct {v0, p0, p1}, Lcom/mokee/volley/b;-><init>(Lcom/mokee/volley/ExecutorDelivery;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mokee/volley/ExecutorDelivery;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/ExecutorDelivery;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public postError(Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/VolleyError;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/mokee/volley/ExecutorDelivery;->b:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mokee/volley/Response;->error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/ExecutorDelivery;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/mokee/volley/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/mokee/volley/c;-><init>(Lcom/mokee/volley/ExecutorDelivery;Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/Response",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mokee/volley/ExecutorDelivery;->postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/Response",
            "<*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->markDelivered()V

    sget-object v0, Lcom/mokee/volley/ExecutorDelivery;->b:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mokee/volley/ExecutorDelivery;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mokee/volley/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mokee/volley/c;-><init>(Lcom/mokee/volley/ExecutorDelivery;Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
