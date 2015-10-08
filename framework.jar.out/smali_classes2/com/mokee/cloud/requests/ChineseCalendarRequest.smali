.class public Lcom/mokee/cloud/requests/ChineseCalendarRequest;
.super Lcom/mokee/volley/toolbox/StringRequest;


# static fields
.field public static final CALENDAR_REQUEST_MAX_RETRIES:I = 0x3

.field public static final CALENDAR_REQUEST_TIMEOUT:I = 0x1388

.field public static q:Z

.field private static final r:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, "\r\"\u0015:["

    const/4 v0, -0x1

    move-object v7, v6

    move-object v8, v6

    move v6, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v9, v5

    if-gt v9, v2, :cond_2

    move v10, v1

    :cond_0
    move-object v11, v5

    move v12, v10

    move v15, v9

    move-object v9, v5

    move v5, v15

    :goto_1
    aget-char v14, v9, v10

    rem-int/lit8 v13, v12, 0x5

    packed-switch v13, :pswitch_data_0

    const/16 v13, 0x63

    :goto_2
    xor-int/2addr v13, v14

    int-to-char v13, v13

    aput-char v13, v9, v10

    add-int/lit8 v10, v12, 0x1

    if-nez v5, :cond_1

    move-object v9, v11

    move v12, v10

    move v10, v5

    goto :goto_1

    :cond_1
    move v9, v5

    move-object v5, v11

    :goto_3
    if-gt v9, v10, :cond_0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    packed-switch v0, :pswitch_data_1

    aput-object v5, v7, v6

    const-string v0, "\u001b\u00170\u007f\u0006u5<y\u0017*\u0019?"

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "6\u0019~t\u0002;\u001e6"

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, ".\u0013!d\n7\u0018"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "*\u0019}z\u0008v\u00006e\u00101\u0019="

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->r:[Ljava/lang/String;

    return-void

    :pswitch_4
    const/16 v13, 0x58

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x76

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x53

    goto :goto_2

    :pswitch_7
    const/16 v13, 0x17

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/mokee/volley/Response$Listener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mokee/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mokee/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mokee/volley/NetworkResponse;",
            ")",
            "Lcom/mokee/volley/Response",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mokee/volley/NetworkResponse;->data:[B

    sget-object v2, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->r:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p1}, Lcom/mokee/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mokee/volley/NetworkResponse;)Lcom/mokee/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mokee/volley/Response;->success(Ljava/lang/Object;Lcom/mokee/volley/Cache$Entry;)Lcom/mokee/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/mokee/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/mokee/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/mokee/volley/Response;->error(Lcom/mokee/volley/VolleyError;)Lcom/mokee/volley/Response;

    move-result-object v0

    goto :goto_0
.end method

.method protected c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    sget-boolean v0, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->q:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v2, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->r:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->r:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z
    :try_end_0
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mokee/volley/VolleyError;->b:Z

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokee/volley/AuthFailureError;
        }
    .end annotation

    const/4 v0, 0x1

    sget-boolean v1, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->q:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v3, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->r:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->r:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v3, Lcom/mokee/volley/VolleyError;->b:Z
    :try_end_0
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->q:Z

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catch Lcom/mokee/volley/AuthFailureError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0
.end method
