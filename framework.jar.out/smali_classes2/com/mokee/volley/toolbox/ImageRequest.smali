.class public Lcom/mokee/volley/toolbox/ImageRequest;
.super Lcom/mokee/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mokee/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/String;


# instance fields
.field private final p:Lcom/mokee/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/graphics/Bitmap$Config;

.field private final r:I

.field private final s:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u000fF\ta\u001a8\u00073I?lA\u0013tRiC\\d\u000b8B\\o\u001f-@\u0019*R9U\u0010;W?"

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

    const/16 v5, 0x72

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

    sput-object v0, Lcom/mokee/volley/toolbox/ImageRequest;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mokee/volley/toolbox/ImageRequest;->t:Ljava/lang/Object;

    return-void

    :pswitch_0
    const/16 v5, 0x4c

    goto :goto_1

    :pswitch_1
    const/16 v5, 0x27

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x7c

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x6

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

.method public constructor <init>(Ljava/lang/String;Lcom/mokee/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p6}, Lcom/mokee/volley/Request;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/mokee/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/mokee/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/mokee/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/mokee/volley/RetryPolicy;)Lcom/mokee/volley/Request;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/ImageRequest;->p:Lcom/mokee/volley/Response$Listener;

    iput-object p5, p0, Lcom/mokee/volley/toolbox/ImageRequest;->q:Landroid/graphics/Bitmap$Config;

    iput p3, p0, Lcom/mokee/volley/toolbox/ImageRequest;->r:I

    iput p4, p0, Lcom/mokee/volley/toolbox/ImageRequest;->s:I

    return-void
.end method

.method private static a(IIII)I
    .locals 6

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-nez p0, :cond_2

    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method

.method static b(IIII)I
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    sget v1, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    int-to-double v2, p0

    int-to-double v4, p2

    div-double/2addr v2, v4

    int-to-double v4, p1

    int-to-double v6, p3

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    :cond_0
    mul-float/2addr v0, v8

    :cond_1
    mul-float v1, v0, v8

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-lez v1, :cond_0

    float-to-int v0, v0

    return v0
.end method

.method private b(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p1, Lcom/mokee/volley/NetworkResponse;->data:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p0, Lcom/mokee/volley/toolbox/ImageRequest;->r:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/mokee/volley/toolbox/ImageRequest;->s:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mokee/volley/toolbox/ImageRequest;->q:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/mokee/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/mokee/volley/ParseError;-><init>(Lcom/mokee/volley/NetworkResponse;)V

    invoke-static {v0}, Lcom/mokee/volley/Response;->error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/mokee/volley/toolbox/ImageRequest;->r:I

    iget v5, p0, Lcom/mokee/volley/toolbox/ImageRequest;->s:I

    invoke-static {v4, v5, v2, v3}, Lcom/mokee/volley/toolbox/ImageRequest;->a(IIII)I

    move-result v4

    iget v5, p0, Lcom/mokee/volley/toolbox/ImageRequest;->s:I

    iget v6, p0, Lcom/mokee/volley/toolbox/ImageRequest;->r:I

    invoke-static {v5, v6, v3, v2}, Lcom/mokee/volley/toolbox/ImageRequest;->a(IIII)I

    move-result v5

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v4, v5}, Lcom/mokee/volley/toolbox/ImageRequest;->b(IIII)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v2, v0

    invoke-static {v0, v7, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_2

    :cond_1
    invoke-static {v1, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mokee/volley/Response;->success(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Response;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/mokee/volley/toolbox/ImageRequest;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mokee/volley/toolbox/ImageRequest;->b(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mokee/volley/toolbox/ImageRequest;->u:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/mokee/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/mokee/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mokee/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lcom/mokee/volley/ParseError;

    invoke-direct {v2, v0}, Lcom/mokee/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/mokee/volley/Response;->error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageRequest;->p:Lcom/mokee/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/mokee/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/ImageRequest;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/mokee/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/mokee/volley/Request$Priority;->LOW:Lcom/mokee/volley/Request$Priority;

    return-object v0
.end method
