.class final Lcn/jpush/android/service/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v2, ",S\r/=\u0012S\u00108|\u0018SC-|\u0016Z\u0006/=R\u001bC"

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

    const/16 v11, 0x1d

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

    const-string v0, "*r"

    move-object v2, v0

    move v3, v4

    move-object v5, v6

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v2, v5, v3

    sput-object v6, Lcn/jpush/android/service/q;->z:[Ljava/lang/String;

    return-void

    :pswitch_1
    const/16 v11, 0x7f

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x36

    goto :goto_2

    :pswitch_3
    const/16 v11, 0x63

    goto :goto_2

    :pswitch_4
    const/16 v11, 0x4b

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

.method constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/jpush/android/service/q;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4e20

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v2, p0, Lcn/jpush/android/service/q;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v3, v1

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcn/jpush/android/util/aa;->a(II)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    sget-object v1, Lcn/jpush/android/service/q;->z:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->d()I

    move-result v1

    :goto_0
    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v3

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v4, v3, v5, v2, v1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcn/jpush/android/service/ServiceInterface;->f()I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/service/q;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/q;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcn/jpush/android/data/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_4
    invoke-static {}, Lcn/jpush/android/util/x;->h()V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/jpush/android/service/q;->b:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/jpush/android/service/q;->z:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    sget-object v2, Lcn/jpush/android/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/service/q;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcn/jpush/android/data/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2
.end method
