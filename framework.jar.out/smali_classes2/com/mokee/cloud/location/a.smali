.class Lcom/mokee/cloud/location/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "g\u0001sp3\u0004\u000crp,Q\u0010=s(G\u0001iv(J@tq!K@{m(I@tq3A\u0012sz3\u0005"

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

    const/16 v9, 0x47

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

    const-string v1, "e\u0003~z7PM^w&V\u0013xk"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "i\u000fVz\"g\u000crj#"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "E\u0010ms.G\u0001iv(JOwl(J"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u66a6\u6580\u681a\u8baf"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "L\u0014io}\u000bOy~3ENu~(I\u00013l(C\u000fh1$K\r2i5E\u0010t06Q\u0005of\u0018J\u0015p}\"VNmw7\u001b\u000ehr%A\u0012 :4\u0002\u0014do\"\u0019\nnp)\u0002\u0003|s+F\u0001~tzW\u0008rh"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "g\u000fsk\"J\u00140K>T\u0005"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "v\u0005|{>\u0005"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "Q\u0014{2\u007f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    return-void

    :pswitch_8
    const/16 v9, 0x24

    goto :goto_2

    :pswitch_9
    const/16 v9, 0x60

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x1d

    goto :goto_2

    :pswitch_b
    const/16 v9, 0x1f

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
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
    .end packed-switch
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/cloud/location/a;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/mokee/cloud/location/a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v3, 0x3a98

    const/16 v4, 0xbb8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/net/URL;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v6, v6, v7

    new-array v7, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mokee/cloud/location/a;->a:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    sget-object v5, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    sget-object v7, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/16 v8, 0x8

    aget-object v7, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v5, v5, v7

    sget-object v7, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/mokee/cloud/location/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    move v5, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-boolean v5, p0, Lcom/mokee/cloud/location/a;->b:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v5, :cond_2

    :goto_1
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    if-nez v5, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/cloud/misc/CloudUtils;->getInfoFromResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/cloud/location/CloudNumber;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/mokee/cloud/location/CloudNumber;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    if-nez v0, :cond_0

    :try_start_4
    invoke-static {}, Lcom/mokee/cloud/location/CloudNumber;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_3
    :try_start_5
    invoke-static {v0}, Lcom/mokee/cloud/location/CloudNumber;->a(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    sget-object v0, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    sget-object v3, Lcom/mokee/cloud/location/a;->c:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_1
    move v5, v4

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    throw v0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :catch_4
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_4
    move v0, v1

    goto :goto_3
.end method
