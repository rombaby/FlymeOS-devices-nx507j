.class public Lcom/mokee/volley/toolbox/StringRequest;
.super Lcom/mokee/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mokee/volley/Request",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final p:Lcom/mokee/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lcom/mokee/volley/Request;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V

    iput-object p3, p0, Lcom/mokee/volley/toolbox/StringRequest;->p:Lcom/mokee/volley/Response$Listener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mokee/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mokee/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/mokee/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mokee/volley/Response;->success(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Response;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mokee/volley/NetworkResponse;->data:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/StringRequest;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/StringRequest;->p:Lcom/mokee/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/mokee/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
