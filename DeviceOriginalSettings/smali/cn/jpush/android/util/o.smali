.class final Lcn/jpush/android/util/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/jpush/android/util/p;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/jpush/android/util/p;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/util/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/jpush/android/util/o;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/jpush/android/util/o;->c:Lcn/jpush/android/util/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Lcn/jpush/android/util/n;->a()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v3, p0, Lcn/jpush/android/util/o;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_9

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    iget-object v4, p0, Lcn/jpush/android/util/o;->a:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcn/jpush/android/util/o;->a:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcn/jpush/android/util/o;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v6, v2

    if-nez v4, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcn/jpush/android/util/o;->c:Lcn/jpush/android/util/p;

    const/4 v2, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcn/jpush/android/util/p;->a(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :goto_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v0, 0x400

    :try_start_3
    new-array v0, v0, [B

    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    :goto_3
    :try_start_4
    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    iget-object v3, p0, Lcn/jpush/android/util/o;->c:Lcn/jpush/android/util/p;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lcn/jpush/android/util/p;->a(ZLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_3
    :goto_5
    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_4
    :try_start_8
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/jpush/android/util/o;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_3

    :cond_6
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcn/jpush/android/util/o;->c:Lcn/jpush/android/util/p;

    const/4 v4, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcn/jpush/android/util/p;->a(ZLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_7
    :goto_6
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_8
    :goto_7
    if-eqz v3, :cond_0

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :cond_9
    :try_start_d
    iget-object v1, p0, Lcn/jpush/android/util/o;->c:Lcn/jpush/android/util/p;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcn/jpush/android/util/p;->a(ZLjava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_8
    if-eqz v1, :cond_a

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_a
    :goto_9
    if-eqz v2, :cond_b

    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    :cond_b
    :goto_a
    if-eqz v3, :cond_c

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    :cond_c
    :goto_b
    throw v0

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_a

    :catch_a
    move-exception v1

    goto :goto_b

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_8

    :catch_b
    move-exception v1

    move-object v1, v0

    move-object v2, v3

    goto/16 :goto_3

    :catch_c
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_3
.end method
