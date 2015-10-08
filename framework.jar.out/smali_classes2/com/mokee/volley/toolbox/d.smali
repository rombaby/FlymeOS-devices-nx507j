.class Lcom/mokee/volley/toolbox/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;


# instance fields
.field private final a:I

.field private final b:Landroid/widget/ImageView;

.field private final c:I


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .locals 0

    iput p1, p0, Lcom/mokee/volley/toolbox/d;->a:I

    iput-object p2, p0, Lcom/mokee/volley/toolbox/d;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/mokee/volley/toolbox/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mokee/volley/VolleyError;)V
    .locals 2

    iget v0, p0, Lcom/mokee/volley/toolbox/d;->a:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/d;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mokee/volley/toolbox/d;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/d;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget v0, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/mokee/volley/toolbox/d;->c:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/d;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/mokee/volley/toolbox/d;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method
