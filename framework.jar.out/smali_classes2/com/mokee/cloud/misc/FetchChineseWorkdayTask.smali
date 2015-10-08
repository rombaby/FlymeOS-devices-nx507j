.class public Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;
.super Landroid/os/AsyncTask;

# interfaces
.implements Lcom/mokee/volley/Response$ErrorListener;
.implements Lcom/mokee/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/mokee/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/mokee/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Lcom/mokee/volley/RequestQueue;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, "F5\u0006"

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

    const/16 v13, 0x61

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

    const-string v0, "J5\u000c"

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "O;\u0011\\\t"

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, "J \u000bX[\r{\u001cD\u000eW0QE\u000eI1\u001aL\u0004Tz\u001cG\u000c\r7\u001eD\u0004L0\u001eZNa<\u0016F\u0004Q1(G\u0013I0\u001eQ\u0012\u000c$\u0017X"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "g&\rG\u0013\u0018t"

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->d:[Ljava/lang/String;

    return-void

    :pswitch_4
    const/16 v13, 0x22

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x54

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x7f

    goto :goto_2

    :pswitch_7
    const/16 v13, 0x28

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

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/mokee/volley/RequestQueue;I)V
    .locals 2

    sget-boolean v0, Lcom/mokee/cloud/misc/CloudUtils;->b:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->b:Lcom/mokee/volley/RequestQueue;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->c:Ljava/lang/String;

    sget-boolean v1, Lcom/mokee/volley/VolleyError;->b:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/mokee/cloud/misc/CloudUtils;->b:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences;Lcom/mokee/volley/RequestQueue;)V
    .locals 5

    const/4 v4, 0x3

    sget-object v0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->d:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/mokee/cloud/requests/ChineseCalendarRequest;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p0, p0}, Lcom/mokee/cloud/requests/ChineseCalendarRequest;-><init>(ILjava/lang/String;Lcom/mokee/volley/Response$Listener;Lcom/mokee/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/mokee/volley/DefaultRetryPolicy;

    const/16 v2, 0x1388

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v3}, Lcom/mokee/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v1, v0}, Lcom/mokee/cloud/requests/ChineseCalendarRequest;->setRetryPolicy(Lcom/mokee/volley/RetryPolicy;)Lcom/mokee/volley/Request;

    invoke-virtual {p2, v1}, Lcom/mokee/volley/RequestQueue;->add(Lcom/mokee/volley/Request;)Lcom/mokee/volley/Request;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->b:Lcom/mokee/volley/RequestQueue;

    invoke-direct {p0, v0, v1}, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->a(Landroid/content/SharedPreferences;Lcom/mokee/volley/RequestQueue;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public onErrorResponse(Lcom/mokee/volley/VolleyError;)V
    .locals 4

    sget-object v0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->d:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mokee/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mokee/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    sget-boolean v3, Lcom/mokee/cloud/misc/CloudUtils;->b:Z

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->d:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget-object v2, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    iget-object v0, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    if-eqz v3, :cond_3

    move v2, v1

    :goto_0
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-eqz v3, :cond_2

    move v0, v1

    :cond_0
    aget-object v9, v7, v0

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->c:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-lt v0, v8, :cond_0

    add-int/lit8 v0, v2, 0x1

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->d:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mokee/cloud/misc/FetchChineseWorkdayTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
