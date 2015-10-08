.class Lcom/mokee/volley/toolbox/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field final a:Lcom/mokee/volley/toolbox/NetworkImageView;

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/mokee/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/mokee/volley/toolbox/i;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mokee/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/NetworkImageView;->a(Lcom/mokee/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/mokee/volley/toolbox/NetworkImageView;->a(Lcom/mokee/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mokee/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/mokee/volley/toolbox/i;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    new-instance v1, Lcom/mokee/volley/toolbox/j;

    invoke-direct {v1, p0, p1}, Lcom/mokee/volley/toolbox/j;-><init>(Lcom/mokee/volley/toolbox/i;Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v0, v1}, Lcom/mokee/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    invoke-virtual {p1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mokee/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/NetworkImageView;->b(Lcom/mokee/volley/toolbox/NetworkImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/i;->a:Lcom/mokee/volley/toolbox/NetworkImageView;

    invoke-static {v1}, Lcom/mokee/volley/toolbox/NetworkImageView;->b(Lcom/mokee/volley/toolbox/NetworkImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mokee/volley/toolbox/NetworkImageView;->setImageResource(I)V

    goto :goto_0
.end method
