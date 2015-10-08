.class public abstract Lcom/mokee/volley/toolbox/JsonRequest;
.super Lcom/mokee/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mokee/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;

.field private static final s:[Ljava/lang/String;


# instance fields
.field private final q:Lcom/mokee/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mokee/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "] ok\u0001"

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

    const/16 v9, 0x39

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

    const-string v1, "}:z3IX;{2\\LtL(ZG0`(^\u0008#a/UMt}4@A:nfMGtn#M\u0008 a#\u0019J-}#J\u0008;of\u001c[t|5PF3)cJ"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "] ok\u0001"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    sput-object v4, Lcom/mokee/volley/toolbox/JsonRequest;->s:[Ljava/lang/String;

    const-string v0, "I$y*PK5}/VF{c5VFo)%QI&z#M\u0015qz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_5

    :cond_3
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_3
    aget-char v6, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_2

    const/16 v5, 0x39

    :goto_4
    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_4

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_3

    :pswitch_2
    const/16 v9, 0x28

    goto :goto_2

    :pswitch_3
    const/16 v9, 0x54

    goto :goto_2

    :pswitch_4
    const/16 v9, 0x9

    goto :goto_2

    :pswitch_5
    const/16 v9, 0x46

    goto :goto_2

    :pswitch_6
    const/16 v5, 0x28

    goto :goto_4

    :pswitch_7
    const/16 v5, 0x54

    goto :goto_4

    :pswitch_8
    const/16 v5, 0x9

    goto :goto_4

    :pswitch_9
    const/16 v5, 0x46

    goto :goto_4

    :cond_4
    move v1, v0

    move-object v0, v3

    :cond_5
    if-gt v1, v2, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v0, "] ok\u0001"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v1, v3, :cond_8

    :cond_6
    move-object v3, v0

    move v4, v2

    move v11, v1

    move-object v1, v0

    move v0, v11

    :goto_5
    aget-char v9, v1, v2

    rem-int/lit8 v5, v4, 0x5

    packed-switch v5, :pswitch_data_3

    const/16 v5, 0x39

    :goto_6
    xor-int/2addr v5, v9

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v4, 0x1

    if-nez v0, :cond_7

    move-object v1, v3

    move v4, v2

    move v2, v0

    goto :goto_5

    :pswitch_a
    const/16 v5, 0x28

    goto :goto_6

    :pswitch_b
    const/16 v5, 0x54

    goto :goto_6

    :pswitch_c
    const/16 v5, 0x9

    goto :goto_6

    :pswitch_d
    const/16 v5, 0x46

    goto :goto_6

    :cond_7
    move v1, v0

    move-object v0, v3

    :cond_8
    if-gt v1, v2, :cond_6

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/volley/toolbox/JsonRequest;->p:Ljava/lang/String;

    return-void

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

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<TT;>;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/mokee/volley/Request;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$ErrorListener;)V

    iput-object p4, p0, Lcom/mokee/volley/toolbox/JsonRequest;->q:Lcom/mokee/volley/Response$Listener;

    iput-object p3, p0, Lcom/mokee/volley/toolbox/JsonRequest;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<TT;>;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mokee/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mokee/volley/toolbox/JsonRequest;->q:Lcom/mokee/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/mokee/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public getBody()[B
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mokee/volley/toolbox/JsonRequest;->r:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    sget-object v1, Lcom/mokee/volley/toolbox/JsonRequest;->s:[Ljava/lang/String;

    aget-object v1, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mokee/volley/toolbox/JsonRequest;->r:Ljava/lang/String;

    aput-object v3, v2, v4

    sget-object v3, Lcom/mokee/volley/toolbox/JsonRequest;->s:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/mokee/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/mokee/volley/toolbox/JsonRequest;->r:Ljava/lang/String;

    sget-object v2, Lcom/mokee/volley/toolbox/JsonRequest;->s:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mokee/volley/toolbox/JsonRequest;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBody()[B
    .locals 1

    invoke-virtual {p0}, Lcom/mokee/volley/toolbox/JsonRequest;->getBody()[B

    move-result-object v0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mokee/volley/toolbox/JsonRequest;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
