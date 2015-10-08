.class public interface abstract Lcom/mokee/volley/toolbox/HttpStack;
.super Ljava/lang/Object;


# virtual methods
.method public abstract performRequest(Lcom/mokee/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation
.end method
