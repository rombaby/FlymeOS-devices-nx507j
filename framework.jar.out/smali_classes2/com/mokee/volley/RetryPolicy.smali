.class public interface abstract Lcom/mokee/volley/RetryPolicy;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCurrentRetryCount()I
.end method

.method public abstract getCurrentTimeout()I
.end method

.method public abstract retry(Lcom/mokee/volley/VolleyError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/VolleyError;
        }
    .end annotation
.end method
