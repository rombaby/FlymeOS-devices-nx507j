.class public Lcom/mokee/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/toolbox/HttpStack;


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field protected final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, "h*H\u007f]E1\u000b_A[ "

    const/4 v0, -0x1

    move-object v7, v6

    move-object v8, v6

    move v6, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v9, v5

    if-gt v9, v2, :cond_2

    move v10, v1

    :cond_0
    move-object v11, v5

    move v12, v10

    move v15, v9

    move-object v9, v5

    move v5, v15

    :goto_1
    aget-char v14, v9, v10

    rem-int/lit8 v13, v12, 0x5

    packed-switch v13, :pswitch_data_0

    const/16 v13, 0x38

    :goto_2
    xor-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    if-nez v5, :cond_1

    move-object v9, v11

    move v12, v10

    move v10, v5

    goto :goto_1

    :cond_1
    move v9, v5

    move-object v5, v11

    :goto_3
    if-gt v9, v10, :cond_0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    packed-switch v0, :pswitch_data_1

    aput-object v5, v7, v6

    const-string v0, "h*H\u007f]E1\u000b_A[ "

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "h*H\u007f]E1\u000b_A[ "

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, "~+MeW\\+\u0006y]Z0CxL\u000b(C\u007fPD!\u0008"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "h*H\u007f]E1\u000b_A[ "

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcom/mokee/volley/toolbox/HttpClientStack;->b:[Ljava/lang/String;

    return-void

    :pswitch_4
    const/16 v13, 0x2b

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x45

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x26

    goto :goto_2

    :pswitch_7
    const/16 v13, 0xb

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/toolbox/HttpClientStack;->a:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method static a(Lcom/mokee/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4
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
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/mokee/volley/toolbox/HttpClientStack;->b:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getPostBody()[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mokee/volley/toolbox/HttpClientStack;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mokee/volley/toolbox/HttpClientStack;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/mokee/volley/Request;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mokee/volley/toolbox/HttpClientStack;->b:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/mokee/volley/Request;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/mokee/volley/toolbox/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mokee/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/mokee/volley/toolbox/HttpClientStack;->b:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/mokee/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mokee/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/mokee/volley/Request;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/mokee/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/mokee/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {p0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public performRequest(Lcom/mokee/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 4
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

    invoke-static {p1, p2}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lcom/mokee/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/mokee/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getTimeoutMs()I

    move-result v2

    const/16 v3, 0x1388

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    iget-object v1, p0, Lcom/mokee/volley/toolbox/HttpClientStack;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
