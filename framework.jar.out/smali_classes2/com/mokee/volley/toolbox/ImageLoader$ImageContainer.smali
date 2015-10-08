.class public Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private final b:Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field final e:Lcom/mokee/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/mokee/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static a(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method

.method static a(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->b:Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/mokee/volley/toolbox/h;->removeContainerAndCancelIfNecessary(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/ImageLoader;->b(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/mokee/volley/toolbox/h;->removeContainerAndCancelIfNecessary(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)Z

    invoke-static {v0}, Lcom/mokee/volley/toolbox/h;->a(Lcom/mokee/volley/toolbox/h;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->e:Lcom/mokee/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/mokee/volley/toolbox/ImageLoader;->b(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;->d:Ljava/lang/String;

    return-object v0
.end method
