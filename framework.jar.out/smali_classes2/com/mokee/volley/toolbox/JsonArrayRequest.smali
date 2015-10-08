.class public Lcom/mokee/volley/toolbox/JsonArrayRequest;
.super Lcom/mokee/volley/toolbox/JsonRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mokee/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Lorg/json/JSONArray;",
            ">;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mokee/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V

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
            "Lorg/json/JSONArray;",
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

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mokee/volley/Response;->success(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/mokee/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/mokee/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/mokee/volley/Response;->error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/mokee/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/mokee/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/mokee/volley/Response;->error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
