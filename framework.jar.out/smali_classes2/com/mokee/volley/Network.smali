.class public interface abstract Lcom/mokee/volley/Network;
.super Ljava/lang/Object;


# virtual methods
.method public abstract performRequest(Lcom/mokee/volley/Request;)Lcom/mokee/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;)",
            "Lcom/mokee/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/VolleyError;
        }
    .end annotation
.end method
