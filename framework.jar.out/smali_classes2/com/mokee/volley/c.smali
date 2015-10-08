.class Lcom/mokee/volley/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/mokee/volley/Request;

.field private final b:Lcom/mokee/volley/Response;

.field private final c:Ljava/lang/Runnable;

.field final d:Lcom/mokee/volley/ExecutorDelivery;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v3, "\u0003?c2"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v13, v7

    move-object v7, v3

    move v3, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x10

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, "\u00041c4u\u000b5izq\u0013}i2|\u000e&h%i"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "\u000e>y2b\n5i>q\u00135 %u\u0014 b9c\u0002"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/mokee/volley/c;->e:[Ljava/lang/String;

    return-void

    :pswitch_2
    const/16 v11, 0x67

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x50

    goto :goto_2

    :pswitch_4
    const/16 v11, 0xd

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x57

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/mokee/volley/ExecutorDelivery;Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/c;->d:Lcom/mokee/volley/ExecutorDelivery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    iput-object p3, p0, Lcom/mokee/volley/c;->b:Lcom/mokee/volley/Response;

    iput-object p4, p0, Lcom/mokee/volley/c;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-boolean v0, Lcom/mokee/volley/Request;->o:Z

    iget-object v1, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    invoke-virtual {v1}, Lcom/mokee/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    sget-object v1, Lcom/mokee/volley/c;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mokee/volley/Request;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mokee/volley/c;->b:Lcom/mokee/volley/Response;

    invoke-virtual {v1}, Lcom/mokee/volley/Response;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    iget-object v2, p0, Lcom/mokee/volley/c;->b:Lcom/mokee/volley/Response;

    iget-object v2, v2, Lcom/mokee/volley/Response;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/mokee/volley/Request;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    iget-object v2, p0, Lcom/mokee/volley/c;->b:Lcom/mokee/volley/Response;

    iget-object v2, v2, Lcom/mokee/volley/Response;->error:Lcom/mokee/volley/VolleyError;

    invoke-virtual {v1, v2}, Lcom/mokee/volley/Request;->deliverError(Lcom/mokee/volley/VolleyError;)V

    :cond_3
    iget-object v1, p0, Lcom/mokee/volley/c;->b:Lcom/mokee/volley/Response;

    iget-boolean v1, v1, Lcom/mokee/volley/Response;->intermediate:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    sget-object v2, Lcom/mokee/volley/c;->e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/mokee/volley/c;->a:Lcom/mokee/volley/Request;

    sget-object v1, Lcom/mokee/volley/c;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mokee/volley/Request;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/mokee/volley/c;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
