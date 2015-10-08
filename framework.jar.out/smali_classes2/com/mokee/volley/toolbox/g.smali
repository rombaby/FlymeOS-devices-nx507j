.class Lcom/mokee/volley/toolbox/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/mokee/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/mokee/volley/toolbox/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/g;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget v2, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    iget-object v0, p0, Lcom/mokee/volley/toolbox/g;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/ImageLoader;->b(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v2, :cond_5

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/h;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/h;->a(Lcom/mokee/volley/toolbox/h;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v2, :cond_4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;

    invoke-static {v1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {v0}, Lcom/mokee/volley/toolbox/h;->getError()Lcom/mokee/volley/VolleyError;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v0}, Lcom/mokee/volley/toolbox/h;->b(Lcom/mokee/volley/toolbox/h;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Z)V

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {v1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mokee/volley/toolbox/h;->getError()Lcom/mokee/volley/VolleyError;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/mokee/volley/VolleyError;)V

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/g;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/ImageLoader;->b(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/mokee/volley/toolbox/g;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V

    return-void
.end method
