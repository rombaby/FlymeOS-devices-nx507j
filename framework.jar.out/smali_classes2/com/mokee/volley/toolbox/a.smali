.class Lcom/mokee/volley/toolbox/a;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mokee/volley/toolbox/a;->a:I

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Lcom/mokee/volley/toolbox/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mokee/volley/toolbox/a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static a(Lcom/mokee/volley/toolbox/a;)I
    .locals 1

    iget v0, p0, Lcom/mokee/volley/toolbox/a;->a:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/mokee/volley/toolbox/a;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mokee/volley/toolbox/a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/mokee/volley/toolbox/a;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/mokee/volley/toolbox/a;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    throw v0
.end method
