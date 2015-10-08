.class Lcom/mokee/volley/toolbox/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field public etag:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serverDate:J

.field public size:J

.field public softTtl:J

.field public ttl:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "6@"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_2

    :cond_0
    move-object v3, v0

    move v4, v2

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x41

    :goto_1
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_1

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    move-object v0, v3

    :cond_2
    if-gt v1, v2, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/volley/toolbox/c;->a:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x13

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x33

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x29

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x16

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mokee/volley/Cache$Entry;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    iget-object v0, p2, Lcom/mokee/volley/Cache$Entry;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/c;->size:J

    iget-object v0, p2, Lcom/mokee/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-object v0, p0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;

    iget-wide v0, p2, Lcom/mokee/volley/Cache$Entry;->serverDate:J

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/c;->serverDate:J

    iget-wide v0, p2, Lcom/mokee/volley/Cache$Entry;->ttl:J

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/c;->ttl:J

    iget-wide v0, p2, Lcom/mokee/volley/Cache$Entry;->softTtl:J

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/c;->softTtl:J

    iget-object v0, p2, Lcom/mokee/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    iput-object v0, p0, Lcom/mokee/volley/toolbox/c;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method public static readHeader(Ljava/io/InputStream;)Lcom/mokee/volley/toolbox/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/mokee/volley/toolbox/c;

    invoke-direct {v0}, Lcom/mokee/volley/toolbox/c;-><init>()V

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x20140623

    if-eq v1, v2, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;

    iget-object v1, v0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->c(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mokee/volley/toolbox/c;->serverDate:J

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->c(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mokee/volley/toolbox/c;->ttl:J

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->c(Ljava/io/InputStream;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mokee/volley/toolbox/c;->softTtl:J

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->e(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/mokee/volley/toolbox/c;->responseHeaders:Ljava/util/Map;

    return-object v0

    :catch_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public toCacheEntry([B)Lcom/mokee/volley/Cache$Entry;
    .locals 4

    new-instance v0, Lcom/mokee/volley/Cache$Entry;

    invoke-direct {v0}, Lcom/mokee/volley/Cache$Entry;-><init>()V

    iput-object p1, v0, Lcom/mokee/volley/Cache$Entry;->data:[B

    iget-object v1, p0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;

    iput-object v1, v0, Lcom/mokee/volley/Cache$Entry;->etag:Ljava/lang/String;

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/c;->serverDate:J

    iput-wide v2, v0, Lcom/mokee/volley/Cache$Entry;->serverDate:J

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/c;->ttl:J

    iput-wide v2, v0, Lcom/mokee/volley/Cache$Entry;->ttl:J

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/c;->softTtl:J

    iput-wide v2, v0, Lcom/mokee/volley/Cache$Entry;->softTtl:J

    iget-object v1, p0, Lcom/mokee/volley/toolbox/c;->responseHeaders:Ljava/util/Map;

    iput-object v1, v0, Lcom/mokee/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public writeHeader(Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x20140623

    :try_start_0
    invoke-static {p1, v2}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    iget-object v2, p0, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p1, v2}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/c;->serverDate:J

    invoke-static {p1, v2, v3}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/c;->ttl:J

    invoke-static {p1, v2, v3}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/c;->softTtl:J

    invoke-static {p1, v2, v3}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    iget-object v2, p0, Lcom/mokee/volley/toolbox/c;->responseHeaders:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    :goto_1
    return v0

    :catch_0
    move-exception v2

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v2

    sget-object v3, Lcom/mokee/volley/toolbox/c;->a:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/mokee/volley/toolbox/c;->etag:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
