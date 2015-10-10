.class public final Lcn/jpush/android/ui/a;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static b:Lcn/jpush/android/b/a/f;

.field private static final z:[Ljava/lang/String;


# instance fields
.field a:Landroid/widget/ImageView;

.field c:Landroid/view/View$OnTouchListener;

.field private final d:Landroid/content/Context;

.field private e:Landroid/webkit/WebView;

.field private f:Lcn/jpush/android/ui/c;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/String;

    const-string v5, " Lv/c>O-"

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

    const/16 v13, 0x36

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

    const-string v0, "?Fv9U$ax3|-Uv\tD%Gp.i"

    move-object v5, v0

    move v6, v2

    move-object v7, v8

    move v0, v1

    goto :goto_0

    :pswitch_0
    aput-object v5, v7, v6

    const-string v0, "\u0019wQf\u000e"

    move-object v5, v0

    move v6, v3

    move-object v7, v8

    move v0, v2

    goto :goto_0

    :pswitch_1
    aput-object v5, v7, v6

    const-string v0, "\u0006sb8^\u001bFu"

    move-object v5, v0

    move v6, v4

    move-object v7, v8

    move v0, v3

    goto :goto_0

    :pswitch_2
    aput-object v5, v7, v6

    const/4 v5, 0x4

    const-string v0, "&Sb8^\u0013@{$E)\rg%Q"

    move v6, v5

    move-object v7, v8

    move-object v5, v0

    move v0, v4

    goto :goto_0

    :pswitch_3
    aput-object v5, v7, v6

    sput-object v8, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/ui/a;->b:Lcn/jpush/android/b/a/f;

    return-void

    :pswitch_4
    const/16 v13, 0x4c

    goto :goto_2

    :pswitch_5
    const/16 v13, 0x23

    goto :goto_2

    :pswitch_6
    const/16 v13, 0x17

    goto :goto_2

    :pswitch_7
    const/16 v13, 0x4b

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

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

.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x2

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v3, 0x1

    const/4 v5, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcn/jpush/android/ui/b;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/b;-><init>(Lcn/jpush/android/ui/a;)V

    iput-object v0, p0, Lcn/jpush/android/ui/a;->c:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcn/jpush/android/ui/c;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/c;-><init>(Lcn/jpush/android/ui/a;)V

    iput-object v0, p0, Lcn/jpush/android/ui/a;->f:Lcn/jpush/android/ui/c;

    iput-object p1, p0, Lcn/jpush/android/ui/a;->d:Landroid/content/Context;

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v6}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget-object v2, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v1, Lcn/jpush/android/b/a/f;

    invoke-direct {v1, p1, p2}, Lcn/jpush/android/b/a/f;-><init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    sput-object v1, Lcn/jpush/android/ui/a;->b:Lcn/jpush/android/b/a/f;

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    sget-object v2, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/b/a/a;

    sget-object v3, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const-class v4, Lcn/jpush/android/b/a/b;

    invoke-direct {v2, v3, v4}, Lcn/jpush/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/ui/d;

    invoke-direct {v2, p2}, Lcn/jpush/android/ui/d;-><init>(Lcn/jpush/android/data/d;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/ui/a;->c:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v6}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcn/jpush/android/ui/a;)Lcn/jpush/android/ui/c;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/a;->f:Lcn/jpush/android/ui/c;

    return-object v0
.end method

.method static synthetic b(Lcn/jpush/android/ui/a;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->f:Lcn/jpush/android/ui/c;

    invoke-virtual {v0, v4}, Lcn/jpush/android/ui/c;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->f:Lcn/jpush/android/ui/c;

    invoke-virtual {v0, v2}, Lcn/jpush/android/ui/c;->removeMessages(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->f:Lcn/jpush/android/ui/c;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Lcn/jpush/android/ui/c;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic c(Lcn/jpush/android/ui/a;)V
    .locals 2

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, -0x1

    const/high16 v4, 0x42200000    # 40.0f

    iget-object v0, p0, Lcn/jpush/android/ui/a;->d:Landroid/content/Context;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, v4}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v0, v4}, Lcn/jpush/android/util/a;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcn/jpush/android/ui/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->f:Lcn/jpush/android/ui/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/jpush/android/ui/c;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/ui/a;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/jpush/android/ui/a;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcn/jpush/android/ui/a;->e:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcn/jpush/android/ui/a;->a:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method
