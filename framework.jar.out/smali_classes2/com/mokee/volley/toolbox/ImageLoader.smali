.class public Lcom/mokee/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;


# static fields
.field public static h:I

.field private static final i:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/mokee/volley/RequestQueue;

.field private b:I

.field private final c:Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/toolbox/h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/toolbox/h;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v12, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v4, v12, [Ljava/lang/String;

    const-string v3, " a"

    const/4 v0, -0x1

    move-object v5, v4

    move-object v6, v4

    move v4, v1

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v7, v3

    if-gt v7, v2, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v3

    move v10, v8

    move v14, v7

    move-object v7, v3

    move v3, v14

    :goto_1
    aget-char v13, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x62

    :goto_2
    xor-int/2addr v11, v13

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v3, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v3

    goto :goto_1

    :cond_1
    move v7, v3

    move-object v3, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_1

    aput-object v3, v5, v4

    const-string v0, " ~"

    move-object v3, v0

    move v4, v2

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string v0, "J[\r\u001e\u0007OY\r\u001d\u0007q\u0016\u0001\u000c\u0011w\u0016\u000e\u001cBjX\u001a\u0016\tfRL\u001f\u0010l[L\r\nf\u0016\u0001\u0018\u000bm\u0016\u0018\u0011\u0010fW\u0008W"

    move v4, v3

    move-object v5, v6

    move-object v3, v0

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v3, v5, v4

    sput-object v6, Lcom/mokee/volley/toolbox/ImageLoader;->i:[Ljava/lang/String;

    return-void

    :pswitch_2
    move v11, v12

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x36

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x6c

    goto :goto_2

    :pswitch_5
    const/16 v11, 0x79

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lcom/mokee/volley/RequestQueue;Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader;->a:Lcom/mokee/volley/RequestQueue;

    iput-object p2, p0, Lcom/mokee/volley/toolbox/ImageLoader;->c:Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/mokee/volley/toolbox/ImageLoader;->i:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mokee/volley/toolbox/ImageLoader;->i:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method private a()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/mokee/volley/toolbox/ImageLoader;->i:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    return-void
.end method

.method static a(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static a(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static a(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/mokee/volley/VolleyError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Lcom/mokee/volley/VolleyError;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->c:Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v0, p1, p2}, Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/h;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0, p2}, Lcom/mokee/volley/toolbox/h;->a(Lcom/mokee/volley/toolbox/h;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Lcom/mokee/volley/toolbox/h;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/mokee/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/h;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/mokee/volley/toolbox/h;->setError(Lcom/mokee/volley/VolleyError;)V

    invoke-direct {p0, p1, v0}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Ljava/lang/String;Lcom/mokee/volley/toolbox/h;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/mokee/volley/toolbox/h;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mokee/volley/toolbox/g;

    invoke-direct {v0, p0}, Lcom/mokee/volley/toolbox/g;-><init>(Lcom/mokee/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/ImageLoader;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mokee/volley/toolbox/ImageLoader;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method static b(Lcom/mokee/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/mokee/volley/toolbox/ImageLoader;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    new-instance v0, Lcom/mokee/volley/toolbox/d;

    invoke-direct {v0, p2, p0, p1}, Lcom/mokee/volley/toolbox/d;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;)Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mokee/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;II)Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;
    .locals 14

    invoke-direct {p0}, Lcom/mokee/volley/toolbox/ImageLoader;->a()V

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/mokee/volley/toolbox/ImageLoader;->c:Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v2, v6}, Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v2, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/mokee/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Z)V

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/mokee/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/mokee/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;Z)V

    iget-object v3, p0, Lcom/mokee/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mokee/volley/toolbox/h;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v3, v2}, Lcom/mokee/volley/toolbox/h;->addContainer(Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    throw v2

    :cond_1
    new-instance v7, Lcom/mokee/volley/toolbox/ImageRequest;

    new-instance v9, Lcom/mokee/volley/toolbox/e;

    invoke-direct {v9, p0, v6}, Lcom/mokee/volley/toolbox/e;-><init>(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v12, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v13, Lcom/mokee/volley/toolbox/f;

    invoke-direct {v13, p0, v6}, Lcom/mokee/volley/toolbox/f;-><init>(Lcom/mokee/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lcom/mokee/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/mokee/volley/Response$Listener;IILandroid/graphics/Bitmap$Config;Lcom/mokee/volley/Response$ErrorListener;)V

    iget-object v3, p0, Lcom/mokee/volley/toolbox/ImageLoader;->a:Lcom/mokee/volley/RequestQueue;

    invoke-virtual {v3, v7}, Lcom/mokee/volley/RequestQueue;->add(Lcom/mokee/volley/Request;)Lcom/mokee/volley/Request;

    iget-object v3, p0, Lcom/mokee/volley/toolbox/ImageLoader;->d:Ljava/util/HashMap;

    new-instance v4, Lcom/mokee/volley/toolbox/h;

    invoke-direct {v4, p0, v7, v2}, Lcom/mokee/volley/toolbox/h;-><init>(Lcom/mokee/volley/toolbox/ImageLoader;Lcom/mokee/volley/Request;Lcom/mokee/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0}, Lcom/mokee/volley/toolbox/ImageLoader;->a()V

    invoke-static {p1, p2, p3}, Lcom/mokee/volley/toolbox/ImageLoader;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/mokee/volley/toolbox/ImageLoader;->c:Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/mokee/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    iput p1, p0, Lcom/mokee/volley/toolbox/ImageLoader;->b:I

    return-void
.end method
