.class public Lcom/mokee/volley/NetworkError;
.super Lcom/mokee/volley/VolleyError;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mokee/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/NetworkResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mokee/volley/VolleyError;-><init>(Lcom/mokee/volley/NetworkResponse;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mokee/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
