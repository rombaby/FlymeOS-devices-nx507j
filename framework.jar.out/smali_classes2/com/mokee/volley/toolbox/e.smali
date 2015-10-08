.class Lcom/mokee/volley/toolbox/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mokee/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/mokee/volley/toolbox/ImageLoader;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/e;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/e;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/e;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
