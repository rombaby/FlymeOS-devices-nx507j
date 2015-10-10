.class final Lcn/jpush/android/api/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field final synthetic a:Lcn/jpush/android/data/d;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, "nb\u001eA\u001c"

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

    const/16 v13, 0x24

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

    const-string v0, "qf-\u001fLlS:"

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "HS9\u001eGSt7\u0014nZ@9.VRR?\t{"

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, "SB,\u001c"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "L_6\u0008KL"

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcn/jpush/android/api/r;->z:[Ljava/lang/String;

    return-void

    :pswitch_4
    const/16 v13, 0x3b

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x36

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x58

    goto :goto_2

    :pswitch_7
    const/16 v13, 0x6c

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

.method constructor <init>(Lcn/jpush/android/data/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/api/r;->a:Lcn/jpush/android/data/d;

    iput-object p2, p0, Lcn/jpush/android/api/r;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcn/jpush/android/api/r;->a:Lcn/jpush/android/data/d;

    instance-of v0, v0, Lcn/jpush/android/data/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jpush/android/api/r;->a:Lcn/jpush/android/data/d;

    invoke-virtual {v0}, Lcn/jpush/android/data/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/api/r;->a:Lcn/jpush/android/data/d;

    check-cast v0, Lcn/jpush/android/data/s;

    iget-object v1, v0, Lcn/jpush/android/data/s;->a:Ljava/lang/String;

    iget-object v0, p0, Lcn/jpush/android/api/r;->b:Landroid/content/Context;

    sget-object v2, Lcn/jpush/android/api/r;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcn/jpush/android/api/r;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageButton;

    iget-object v4, p0, Lcn/jpush/android/api/r;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcn/jpush/android/api/r;->b:Landroid/content/Context;

    invoke-static {v4, v0, v2, v3}, Lcn/jpush/android/api/q;->a(Landroid/content/Context;Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    const/high16 v4, 0x2000000

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v5, Lcn/jpush/android/api/r;->z:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v4, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v4, Lcn/jpush/android/b/a/e;

    iget-object v5, p0, Lcn/jpush/android/api/r;->b:Landroid/content/Context;

    iget-object v6, p0, Lcn/jpush/android/api/r;->a:Lcn/jpush/android/data/d;

    invoke-direct {v4, v5, v0, v2, v3}, Lcn/jpush/android/b/a/e;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    sput-object v4, Lcn/jpush/android/api/q;->a:Lcn/jpush/android/b/a/e;

    sget-object v4, Lcn/jpush/android/api/r;->z:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    new-instance v4, Lcn/jpush/android/b/a/a;

    sget-object v5, Lcn/jpush/android/api/r;->z:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-class v6, Lcn/jpush/android/b/a/b;

    invoke-direct {v4, v5, v6}, Lcn/jpush/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v4, Lcn/jpush/android/ui/d;

    iget-object v5, p0, Lcn/jpush/android/api/r;->a:Lcn/jpush/android/data/d;

    invoke-direct {v4, v5}, Lcn/jpush/android/ui/d;-><init>(Lcn/jpush/android/data/d;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcn/jpush/android/api/r;->z:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcn/jpush/android/api/s;

    invoke-direct {v1, p0, v0, v2, v3}, Lcn/jpush/android/api/s;-><init>(Lcn/jpush/android/api/r;Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/widget/ImageButton;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/jpush/android/util/x;->f()V

    goto :goto_0
.end method
