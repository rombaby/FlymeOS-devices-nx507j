.class Lcom/mokee/volley/toolbox/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/mokee/volley/toolbox/i;

.field private final b:Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;


# direct methods
.method constructor <init>(Lcom/mokee/volley/toolbox/i;Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/j;->a:Lcom/mokee/volley/toolbox/i;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/j;->b:Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mokee/volley/toolbox/j;->a:Lcom/mokee/volley/toolbox/i;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/j;->b:Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mokee/volley/toolbox/i;->onResponse(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Z)V

    return-void
.end method
