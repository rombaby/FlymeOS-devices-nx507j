.class public Lcom/mokee/volley/toolbox/DiskBasedCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mokee/volley/Cache;


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/toolbox/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xe

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "^5\u0015]<|t\u0008^yo&\u0015E<8<\u0019P=}&\\W6jtYB"

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

    const/16 v9, 0x59

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

    const-string v1, "[;\t]=8:\u0013Ey{8\u0019P78!\u000c\u0011?q8\u0019\u0011|k"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "[5\u001fY<87\u0010T8j1\u0018\u001f"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "[;\t]=8:\u0013Ey|1\u0010T-}t\u001fP:p1\\T7l&\u0005\u0011?w&\\Z<aiYBu82\u0015]<v5\u0011Td=\'"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "=\'F\u0011|k"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "M\u0000:\u001ca"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "M\u0000:\u001ca"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "h&\t_<|tYUy~=\u0010T*4tYUyz-\u0008T*4tYUyu\'"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "H&\t_0v3\\^5|t\u001fP:p1\\T7l&\u0015T*6"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "[;\t]=8:\u0013Ey|1\u0010T-}t\u001fP:p1\\T7l&\u0005\u0011?w&\\Z<aiYBu82\u0015]<v5\u0011Td=\'"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "M:\u001dS5}t\u0008^y{&\u0019P-}t\u001fP:p1\\U0jtYB"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "86\u0005E<kx\\C<y0\\"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, "86\u0005E<k"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    const/16 v2, 0xd

    const-string v1, "],\u000cT:l1\u0018\u0011"

    const/16 v0, 0xc

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_c
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    return-void

    :pswitch_d
    const/16 v9, 0x18

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x54

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x7c

    goto/16 :goto_2

    :pswitch_10
    const/16 v9, 0x31

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
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
    .end packed-switch
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/high16 v0, 0x500000

    invoke-direct {p0, p1, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    iput-object p1, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    iput p2, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->d:I

    return-void
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 12

    sget v2, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    iget-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    int-to-long v4, p1

    add-long/2addr v0, v4

    iget v3, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->d:I

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide v4, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    if-eqz v2, :cond_6

    :cond_3
    move v1, v0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/c;

    iget-object v8, v0, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/mokee/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v8, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v10, v0, Lcom/mokee/volley/toolbox/c;->size:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    if-eqz v2, :cond_5

    :cond_4
    sget-object v8, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/16 v9, 0x9

    aget-object v8, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v0, v0, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v1, 0x1

    iget-wide v8, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    int-to-long v10, p1

    add-long/2addr v8, v10

    long-to-float v1, v8

    iget v8, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->d:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    cmpg-float v1, v1, v8

    if-gez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_7
    sget-boolean v1, Lcom/mokee/volley/VolleyLog;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-wide v8, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mokee/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mokee/volley/toolbox/c;)V
    .locals 6

    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v2, p2, Lcom/mokee/volley/toolbox/c;->size:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    :goto_0
    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/c;

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v4, p2, Lcom/mokee/volley/toolbox/c;->size:J

    iget-wide v0, v0, Lcom/mokee/volley/toolbox/c;->size:J

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    goto :goto_0
.end method

.method static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/OutputStream;I)V

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    if-eq v0, p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static b(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/c;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    iget-wide v0, v0, Lcom/mokee/volley/toolbox/c;->size:J

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static c(Ljava/io/InputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0xff

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static d(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->c(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method static e(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->b(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->b:J

    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/mokee/volley/Cache$Entry;
    .locals 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/volley/toolbox/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    new-instance v2, Lcom/mokee/volley/toolbox/a;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/mokee/volley/toolbox/a;-><init>(Ljava/io/InputStream;Lcom/mokee/volley/toolbox/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/mokee/volley/toolbox/c;->readHeader(Ljava/io/InputStream;)Lcom/mokee/volley/toolbox/c;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v2}, Lcom/mokee/volley/toolbox/a;->a(Lcom/mokee/volley/toolbox/a;)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v4}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mokee/volley/toolbox/c;->toCacheEntry([B)Lcom/mokee/volley/Cache$Entry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Lcom/mokee/volley/toolbox/a;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_5
    sget-object v4, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Lcom/mokee/volley/toolbox/a;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Lcom/mokee/volley/toolbox/a;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public getFileForKey(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized initialize()V
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mokee/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/mokee/volley/toolbox/DiskBasedCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v1, 0x0

    :try_start_5
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v0}, Lcom/mokee/volley/toolbox/c;->readHeader(Ljava/io/InputStream;)Lcom/mokee/volley/toolbox/c;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/mokee/volley/toolbox/c;->size:J

    iget-object v6, v1, Lcom/mokee/volley/toolbox/c;->key:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;Lcom/mokee/volley/toolbox/c;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_3
    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :goto_4
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2
.end method

.method public declared-synchronized invalidate(Ljava/lang/String;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->get(Ljava/lang/String;)Lcom/mokee/volley/Cache$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/mokee/volley/Cache$Entry;->softTtl:J

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/mokee/volley/Cache$Entry;->ttl:J

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->put(Ljava/lang/String;Lcom/mokee/volley/Cache$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/mokee/volley/Cache$Entry;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p2, Lcom/mokee/volley/Cache$Entry;->data:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(I)V

    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Lcom/mokee/volley/toolbox/c;

    invoke-direct {v2, p1, p2}, Lcom/mokee/volley/toolbox/c;-><init>(Ljava/lang/String;Lcom/mokee/volley/Cache$Entry;)V

    invoke-virtual {v2, v0}, Lcom/mokee/volley/toolbox/c;->writeHeader(Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_5
    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_6
    iget-object v3, p2, Lcom/mokee/volley/Cache$Entry;->data:[B

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-direct {p0, p1, v2}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;Lcom/mokee/volley/toolbox/c;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->getFileForKey(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->b(Ljava/lang/String;)V

    if-nez v0, :cond_0

    sget-object v0, Lcom/mokee/volley/toolbox/DiskBasedCache;->e:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/mokee/volley/toolbox/DiskBasedCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mokee/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
