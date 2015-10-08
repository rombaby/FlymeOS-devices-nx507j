.class public interface abstract Lcom/mokee/volley/ResponseDelivery;
.super Ljava/lang/Object;


# virtual methods
.method public abstract postError(Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/VolleyError;",
            ")V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/Response",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract postResponse(Lcom/mokee/volley/Request;Lcom/mokee/volley/Response;Ljava/lang/Runnable;)V
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
.end method
