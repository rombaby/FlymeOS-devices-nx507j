.class Lcom/mokee/volley/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final a:Lcom/mokee/volley/ExecutorDelivery;

.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mokee/volley/ExecutorDelivery;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/b;->a:Lcom/mokee/volley/ExecutorDelivery;

    iput-object p2, p0, Lcom/mokee/volley/b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
