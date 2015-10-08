.class public Lcom/mokee/volley/toolbox/Volley;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, ">U\u0000y\u00101"

    const/4 v0, -0x1

    move-object v5, v3

    move-object v6, v3

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v7, v2

    if-gt v7, v4, :cond_2

    move v8, v1

    :cond_0
    move-object v9, v2

    move v10, v8

    move v13, v7

    move-object v7, v2

    move v2, v13

    :goto_1
    aget-char v12, v7, v8

    rem-int/lit8 v11, v10, 0x5

    packed-switch v11, :pswitch_data_0

    const/16 v11, 0x75

    :goto_2
    xor-int/2addr v11, v12

    int-to-char v11, v11

    aput-char v11, v7, v8

    add-int/lit8 v8, v10, 0x1

    if-nez v2, :cond_1

    move-object v7, v9

    move v10, v8

    move v8, v2

    goto :goto_1

    :cond_1
    move v7, v2

    move-object v2, v9

    :goto_3
    if-gt v7, v8, :cond_0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    packed-switch v0, :pswitch_data_1

    aput-object v2, v5, v3

    const-string v0, ">U\u0000y\u00101\u0015\\"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcom/mokee/volley/toolbox/Volley;->a:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x48

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x3a

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x6c

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x15

    goto :goto_2

    :cond_2
    move v8, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newRequestQueue(Landroid/content/Context;)Lcom/mokee/volley/RequestQueue;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mokee/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/mokee/volley/toolbox/HttpStack;)Lcom/mokee/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/mokee/volley/toolbox/HttpStack;)Lcom/mokee/volley/RequestQueue;
    .locals 5

    const/4 v3, 0x0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/mokee/volley/toolbox/Volley;->a:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lcom/mokee/volley/toolbox/Volley;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    new-instance p1, Lcom/mokee/volley/toolbox/HurlStack;

    invoke-direct {p1}, Lcom/mokee/volley/toolbox/HurlStack;-><init>()V

    sget v2, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    if-eqz v2, :cond_1

    :cond_0
    new-instance p1, Lcom/mokee/volley/toolbox/HttpClientStack;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mokee/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    :cond_1
    new-instance v0, Lcom/mokee/volley/toolbox/BasicNetwork;

    invoke-direct {v0, p1}, Lcom/mokee/volley/toolbox/BasicNetwork;-><init>(Lcom/mokee/volley/toolbox/HttpStack;)V

    new-instance v2, Lcom/mokee/volley/RequestQueue;

    new-instance v3, Lcom/mokee/volley/toolbox/DiskBasedCache;

    invoke-direct {v3, v1}, Lcom/mokee/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Lcom/mokee/volley/RequestQueue;-><init>(Lcom/mokee/volley/Cache;Lcom/mokee/volley/Network;)V

    invoke-virtual {v2}, Lcom/mokee/volley/RequestQueue;->start()V

    return-object v2

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v2

    goto :goto_0
.end method
