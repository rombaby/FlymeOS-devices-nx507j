.class public Lcom/mokee/volley/toolbox/HurlStack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/toolbox/HttpStack;


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x10

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, ":#BA\u0002\u00178\u0001a\u001e\t)"

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

    const/16 v9, 0x67

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

    const-string v1, "\u00118XE\u0014"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, ",\u001e`\u0015\u0005\u0015#O^\u0002\u001dlNLG\u000b)[G\u000e\r)^\u000fG"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "1\u0018xe"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, ":#YY\u0003Y\"CAG\u000b)XG\u000e\u001c:I\u0015\u0015\u001c?\\Z\t\n)\u000cV\u0008\u001d)\u000cS\u0015\u0016!\u000c}\u0013\r<yG\u000b:#B[\u0002\u001a8EZ\tW"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "1\tmq"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "-\u001emv\""

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, ")\u0003\u007fa"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "6\u001cx|(7\u001f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, ">\tx"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, ")\rxv/"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, ")\u0019x"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, ",\"G[\u0008\u000e\"\u000cX\u0002\r$CQG\r5\\PI"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "=\t`p3<"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    const/16 v2, 0xe

    const-string v1, ":#BA\u0002\u00178\u0001a\u001e\t)"

    const/16 v0, 0xd

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_d
    aput-object v1, v3, v2

    const/16 v2, 0xf

    const-string v1, ")\u0003\u007fa"

    const/16 v0, 0xe

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_e
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    return-void

    :pswitch_f
    const/16 v9, 0x79

    goto/16 :goto_2

    :pswitch_10
    const/16 v9, 0x4c

    goto/16 :goto_2

    :pswitch_11
    const/16 v9, 0x2c

    goto/16 :goto_2

    :pswitch_12
    const/16 v9, 0x35

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
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
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mokee/volley/toolbox/HurlStack;-><init>(Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mokee/volley/toolbox/HurlStack;-><init>(Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/toolbox/HurlStack;->a:Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private a(Ljava/net/URL;Lcom/mokee/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/mokee/volley/Request",
            "<*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/HurlStack;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {p2}, Lcom/mokee/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mokee/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    iget-object v3, p0, Lcom/mokee/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object v2

    :catch_0
    move-exception v1

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    throw v1
.end method

.method private static a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;
    .locals 4

    new-instance v1, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/mokee/volley/Request;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mokee/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    sget v0, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getMethod()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getPostBody()[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    sget-object v2, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget-object v2, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getPostBodyContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz v0, :cond_1

    :pswitch_1
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    :pswitch_2
    :try_start_2
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_1

    :pswitch_3
    :try_start_3
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/mokee/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/mokee/volley/Request;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_1

    :pswitch_4
    :try_start_4
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/mokee/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/mokee/volley/Request;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-eqz v0, :cond_1

    :pswitch_5
    :try_start_5
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_1

    :pswitch_6
    :try_start_6
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    if-eqz v0, :cond_1

    :pswitch_7
    :try_start_7
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    if-eqz v0, :cond_1

    :pswitch_8
    :try_start_8
    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/mokee/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/mokee/volley/Request;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    if-nez v0, :cond_0

    :cond_1
    return-void

    :catch_1
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :catch_6
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    :catch_7
    move-exception v0

    :try_start_f
    throw v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :catch_8
    move-exception v0

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    nop

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

.method private static b(Ljava/net/HttpURLConnection;Lcom/mokee/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/mokee/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public performRequest(Lcom/mokee/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 8
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

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget v4, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/mokee/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mokee/volley/toolbox/HurlStack;->a:Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mokee/volley/toolbox/HurlStack;->a:Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;

    invoke-interface {v0, v1}, Lcom/mokee/volley/toolbox/HurlStack$UrlRewriter;->rewriteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    move-object v0, v1

    :cond_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/mokee/volley/toolbox/HurlStack;->a(Ljava/net/URL;Lcom/mokee/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object v6

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    if-eqz v4, :cond_3

    :try_start_1
    sget-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_4

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v6, p1}, Lcom/mokee/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/mokee/volley/Request;)V

    new-instance v0, Lorg/apache/http/ProtocolVersion;

    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/http/ProtocolVersion;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    :try_start_2
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lcom/mokee/volley/toolbox/HurlStack;->c:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    move-exception v0

    throw v0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v3, v5}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    new-instance v3, Lorg/apache/http/message/BasicHttpResponse;

    invoke-direct {v3, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    invoke-static {v6}, Lcom/mokee/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    if-eqz v4, :cond_7

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    return-object v3
.end method
