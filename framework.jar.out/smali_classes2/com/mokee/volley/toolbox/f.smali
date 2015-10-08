.class Lcom/mokee/volley/toolbox/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mokee/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field final a:Lcom/mokee/volley/toolbox/ImageLoader;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/f;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mokee/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/mokee/volley/toolbox/f;->a:Lcom/mokee/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/mokee/volley/VolleyError;)V

    return-void
.end method
