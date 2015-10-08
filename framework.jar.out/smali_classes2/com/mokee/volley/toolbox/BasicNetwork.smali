.class public Lcom/mokee/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/Network;


# static fields
.field protected static final a:Z

.field private static b:I

.field private static c:I

.field private static final f:[Ljava/lang/String;


# instance fields
.field protected final d:Lcom/mokee/volley/toolbox/HttpStack;

.field protected final e:Lcom/mokee/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xd

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "}+n\u0015"

    const/4 v0, -0x1

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x13

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "[\nV)3a;q\t|}-gYu|,\"\u000bvb+g\ng.b\'\n-3\u0005n\u0010uv*k\u0014v.{f$?3\u0005q\u0010ivc\'\nN?~Y\u000bp.{f$?3\u0005p\u001cga\'A\u0016f}*?\\`N"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "p1l\u0017vp*k\u0016}"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "`1a\u0012vg"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "r+v\u0011"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "Q?fYFA\u0012\""

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "F0g\u0001cv=v\u001cw3,g\nc|0q\u001c3p1f\u001c36:\"\u001f|a~\'\n"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "Z8/7|};/4rg=j"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "Z8/4|w7d\u0010vwsQ\u0010}p;"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "V,p\u0016a31a\u001afa;fYd{;lYpr2n\u0010}t~a\u0016}`+o\u0010}t\u001dm\u0017gv0v"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "V,p\u0016a31a\u001afa;fYd{;lYpr2n\u0010}t~a\u0016}`+o\u0010}t\u001dm\u0017gv0v"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "6-/\rz~;m\u000cg>9k\u000fvf.\"\"gz3g\u0016fgc\'\nN"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "6-/\u000bvg,{YHg7o\u001c|f*?\\`N"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    sget-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/mokee/volley/toolbox/BasicNetwork;->a:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/mokee/volley/toolbox/BasicNetwork;->b:I

    const/16 v0, 0x1000

    sput v0, Lcom/mokee/volley/toolbox/BasicNetwork;->c:I

    return-void

    :pswitch_c
    const/16 v9, 0x13

    goto/16 :goto_2

    :pswitch_d
    const/16 v9, 0x5e

    goto/16 :goto_2

    :pswitch_e
    const/4 v9, 0x2

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x79

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public constructor <init>(Lcom/mokee/volley/toolbox/HttpStack;)V
    .locals 2

    new-instance v0, Lcom/mokee/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/mokee/volley/toolbox/BasicNetwork;->c:I

    invoke-direct {v0, v1}, Lcom/mokee/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/mokee/volley/toolbox/BasicNetwork;-><init>(Lcom/mokee/volley/toolbox/HttpStack;Lcom/mokee/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/toolbox/HttpStack;Lcom/mokee/volley/toolbox/ByteArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->d:Lcom/mokee/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->e:Lcom/mokee/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v1, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    array-length v1, p0

    if-lt v0, v1, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    throw v0
.end method

.method private a(JLcom/mokee/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/mokee/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/mokee/volley/toolbox/BasicNetwork;->a:Z

    if-nez v0, :cond_0

    sget v0, Lcom/mokee/volley/toolbox/BasicNetwork;->b:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    :try_start_1
    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    :try_start_2
    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/mokee/volley/Request;->getRetryPolicy()Lcom/mokee/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/mokee/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v0

    throw v0

    :cond_2
    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    aget-object v0, v0, v4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Request",
            "<*>;",
            "Lcom/mokee/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/VolleyError;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getRetryPolicy()Lcom/mokee/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/mokee/volley/RetryPolicy;->retry(Lcom/mokee/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/mokee/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mokee/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/util/Map;Lcom/mokee/volley/Cache$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mokee/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p2, Lcom/mokee/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p2, Lcom/mokee/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-wide v0, p2, Lcom/mokee/volley/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/mokee/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sget-object v1, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mokee/volley/ServerError;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Lcom/mokee/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v0, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->e:Lcom/mokee/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lcom/mokee/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/mokee/volley/toolbox/ByteArrayPool;I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/mokee/volley/ServerError;

    invoke-direct {v0}, Lcom/mokee/volley/ServerError;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    iget-object v3, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->e:Lcom/mokee/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/mokee/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v2}, Lcom/mokee/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v0

    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->e:Lcom/mokee/volley/toolbox/ByteArrayPool;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/mokee/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/mokee/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :try_start_5
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    iget-object v3, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->e:Lcom/mokee/volley/toolbox/ByteArrayPool;

    invoke-virtual {v3, v1}, Lcom/mokee/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v2}, Lcom/mokee/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v0

    :cond_1
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v2, v1, v4, v3}, Lcom/mokee/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    sget-object v3, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v3

    sget-object v3, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public performRequest(Lcom/mokee/volley/Request;)Lcom/mokee/volley/NetworkResponse;
    .locals 13
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

    sget v9, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getCacheEntry()Lcom/mokee/volley/Cache$Entry;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/mokee/volley/toolbox/BasicNetwork;->a(Ljava/util/Map;Lcom/mokee/volley/Cache$Entry;)V

    iget-object v3, p0, Lcom/mokee/volley/toolbox/BasicNetwork;->d:Lcom/mokee/volley/toolbox/HttpStack;

    invoke-interface {v3, p1, v0}, Lcom/mokee/volley/toolbox/HttpStack;->performRequest(Lcom/mokee/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v8

    :try_start_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v12

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/volley/toolbox/BasicNetwork;->a([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v7

    const/16 v0, 0x130

    if-ne v12, v0, :cond_2

    :try_start_2
    new-instance v0, Lcom/mokee/volley/NetworkResponse;

    const/16 v2, 0x130

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getCacheEntry()Lcom/mokee/volley/Cache$Entry;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x1

    :try_start_3
    invoke-direct {v0, v2, v1, v7, v3}, Lcom/mokee/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    throw v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :catch_1
    move-exception v0

    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    new-instance v1, Lcom/mokee/volley/TimeoutError;

    invoke-direct {v1}, Lcom/mokee/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/mokee/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getCacheEntry()Lcom/mokee/volley/Cache$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/mokee/volley/Cache$Entry;->data:[B

    goto :goto_1

    :cond_2
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mokee/volley/toolbox/BasicNetwork;->a(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-wide v0

    sub-long v2, v0, v10

    move-object v1, p0

    move-object v4, p1

    :try_start_5
    invoke-direct/range {v1 .. v6}, Lcom/mokee/volley/toolbox/BasicNetwork;->a(JLcom/mokee/volley/Request;[BLorg/apache/http/StatusLine;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v0, 0xc8

    if-lt v12, v0, :cond_3

    const/16 v0, 0x12b

    if-le v12, v0, :cond_5

    :cond_3
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_2
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_3
    move-exception v0

    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    new-instance v1, Lcom/mokee/volley/TimeoutError;

    invoke-direct {v1}, Lcom/mokee/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/mokee/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_8
    new-array v5, v0, [B
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_a
    new-instance v0, Lcom/mokee/volley/NetworkResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v5, v7, v1}, Lcom/mokee/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    :goto_4
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    if-eqz v9, :cond_7

    :cond_6
    :try_start_b
    new-instance v1, Lcom/mokee/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/mokee/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_7

    :catch_7
    move-exception v0

    throw v0

    :cond_7
    sget-object v0, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v0, v0, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v0, v4}, Lcom/mokee/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_a

    new-instance v0, Lcom/mokee/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v5, v1, v3}, Lcom/mokee/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    const/16 v1, 0x191

    if-eq v2, v1, :cond_8

    const/16 v1, 0x193

    if-ne v2, v1, :cond_9

    :cond_8
    :try_start_c
    sget-object v1, Lcom/mokee/volley/toolbox/BasicNetwork;->f:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-instance v2, Lcom/mokee/volley/AuthFailureError;

    invoke-direct {v2, v0}, Lcom/mokee/volley/AuthFailureError;-><init>(Lcom/mokee/volley/NetworkResponse;)V

    invoke-static {v1, p1, v2}, Lcom/mokee/volley/toolbox/BasicNetwork;->a(Ljava/lang/String;Lcom/mokee/volley/Request;Lcom/mokee/volley/VolleyError;)V
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_8

    if-eqz v9, :cond_0

    :cond_9
    new-instance v1, Lcom/mokee/volley/ServerError;

    invoke-direct {v1, v0}, Lcom/mokee/volley/ServerError;-><init>(Lcom/mokee/volley/NetworkResponse;)V

    throw v1

    :catch_8
    move-exception v0

    throw v0

    :cond_a
    new-instance v0, Lcom/mokee/volley/NetworkError;

    invoke-direct {v0, v3}, Lcom/mokee/volley/NetworkError;-><init>(Lcom/mokee/volley/NetworkResponse;)V

    throw v0

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v2, v8

    goto :goto_4
.end method
