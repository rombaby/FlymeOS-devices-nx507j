.class public final Lcn/jpush/android/util/aa;
.super Ljava/lang/Object;


# static fields
.field private static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\u000cPt|e"

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

    const/16 v5, 0x5d

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

    sput-object v0, Lcn/jpush/android/util/aa;->z:Ljava/lang/String;

    return-void

    :pswitch_0
    const/16 v5, 0x59

    goto :goto_1

    :pswitch_1
    const/4 v5, 0x4

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x32

    goto :goto_1

    :pswitch_3
    const/16 v5, 0x51

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    invoke-virtual {v1, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    const-string v0, ""

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v0, Ljava/lang/String;

    sget-object v4, Lcn/jpush/android/util/aa;->z:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    const-string v0, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    throw v0

    :catch_3
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static a([BII)Ljava/lang/String;
    .locals 3

    invoke-static {p2}, Lcn/jpush/android/util/aa;->b(I)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcn/jpush/android/util/aa;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(I)[B
    .locals 4

    const/4 v3, 0x4

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    ushr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a(II)[B
    .locals 7

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/jpush/android/util/aa;->a(I)[B

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [B

    array-length v1, v3

    sub-int/2addr v1, v2

    array-length v5, v3

    if-le v2, v5, :cond_0

    array-length v1, v3

    sub-int v1, v2, v1

    array-length v2, v3

    :goto_0
    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_0
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;I)[B
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static b([BII)I
    .locals 3

    invoke-static {p2}, Lcn/jpush/android/util/aa;->b(I)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcn/jpush/android/util/aa;->b([B)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static final b([B)J
    .locals 8

    const-wide/16 v6, 0xff

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    int-to-long v4, v1

    and-long/2addr v4, v6

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x8

    shl-long/2addr v4, v1

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(I)[B
    .locals 4

    const/4 v1, 0x0

    new-array v2, p0, [B

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static c([BII)J
    .locals 4

    const/16 v0, 0x8

    invoke-static {v0}, Lcn/jpush/android/util/aa;->b(I)[B

    move-result-object v0

    const/16 v1, 0x15

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcn/jpush/android/util/aa;->b([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d([BII)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p2}, Lcn/jpush/android/util/aa;->b(I)[B

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcn/jpush/android/util/aa;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static e([BII)[B
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcn/jpush/android/util/aa;->a(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, p0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/x;->j()V

    const/4 p0, 0x0

    goto :goto_0
.end method
