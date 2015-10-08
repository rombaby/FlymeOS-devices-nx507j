.class public Lcom/mokee/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xc

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "4qh3m\u0014z"

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

    const/16 v9, 0x1f

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

    const-string v1, "4]y="

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u001ff59~\u0012a}"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "5hl?"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u0001{w\"f\\{},~\u001d`|;k\u0014"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "2h{2z\\Jw4k\u0003ft"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u001ch`w~\u0016l%"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u001ff5)k\u001e{}"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "\u001c|k.2\u0003ln;s\u0018my.z"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "8ZWw\'I<!w."

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "2fv.z\u001f}5\u000ef\u0001l"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "\u0012ay(l\u0014}"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    return-void

    :pswitch_b
    const/16 v9, 0x71

    goto/16 :goto_2

    :pswitch_c
    const/16 v9, 0x9

    goto/16 :goto_2

    :pswitch_d
    const/16 v9, 0x18

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x5a

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
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
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheHeaders(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Cache$Entry;
    .locals 20

    sget v14, Lcom/mokee/volley/toolbox/ImageLoader;->h:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mokee/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget-object v2, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v4, v2

    :cond_0
    sget-object v2, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c

    const/4 v3, 0x1

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v14, :cond_5

    :cond_1
    aget-object v9, v8, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v18, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v19, 0x2

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    :try_start_0
    sget-object v18, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v19, 0x7

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_3

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    throw v2

    :cond_3
    sget-object v18, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v19, 0x6

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x8

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_5
    array-length v9, v8

    if-lt v2, v9, :cond_1

    :goto_2
    sget-object v2, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v8

    :goto_3
    sget-object v2, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v2, v2, v10

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_a

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long v6, v6, v16

    if-eqz v14, :cond_6

    :goto_4
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_6

    cmp-long v3, v8, v4

    if-ltz v3, :cond_6

    sub-long v6, v8, v4

    add-long v6, v6, v16

    :cond_6
    new-instance v3, Lcom/mokee/volley/Cache$Entry;

    invoke-direct {v3}, Lcom/mokee/volley/Cache$Entry;-><init>()V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mokee/volley/NetworkResponse;->data:[B

    iput-object v8, v3, Lcom/mokee/volley/Cache$Entry;->data:[B

    iput-object v2, v3, Lcom/mokee/volley/Cache$Entry;->etag:Ljava/lang/String;

    iput-wide v6, v3, Lcom/mokee/volley/Cache$Entry;->softTtl:J

    iget-wide v6, v3, Lcom/mokee/volley/Cache$Entry;->softTtl:J

    iput-wide v6, v3, Lcom/mokee/volley/Cache$Entry;->ttl:J

    iput-wide v4, v3, Lcom/mokee/volley/Cache$Entry;->serverDate:J

    iput-object v15, v3, Lcom/mokee/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    sget-boolean v2, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v14, 0x1

    sput v2, Lcom/mokee/volley/toolbox/ImageLoader;->h:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_7
    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v18

    if-eqz v14, :cond_4

    :cond_8
    :try_start_3
    sget-object v18, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v19, 0x8

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v18

    if-nez v18, :cond_9

    :try_start_4
    sget-object v18, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v19, 0x4

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_9
    const-wide/16 v6, 0x0

    goto :goto_1

    :catch_2
    move-exception v2

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v2

    throw v2

    :catch_4
    move-exception v2

    throw v2

    :cond_a
    move-wide v6, v12

    goto :goto_4

    :cond_b
    move-wide v8, v10

    goto :goto_3

    :cond_c
    move v3, v8

    goto/16 :goto_2
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x1

    sget-object v0, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    :cond_0
    sget-object v0, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    :goto_1
    return-object v0

    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const/4 v4, 0x0

    aget-object v4, v3, v4

    sget-object v5, Lcom/mokee/volley/toolbox/HttpHeaderParser;->a:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v0, v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method
