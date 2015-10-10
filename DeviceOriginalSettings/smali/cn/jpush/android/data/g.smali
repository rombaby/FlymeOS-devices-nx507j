.class public final Lcn/jpush/android/data/g;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final F:[Ljava/lang/String;

.field public static b:Lcn/jpush/android/b/a/f;


# instance fields
.field private A:F

.field private B:Landroid/webkit/WebView;

.field private C:Lcn/jpush/android/data/d;

.field private D:Landroid/graphics/Bitmap;

.field private E:Landroid/graphics/Bitmap;

.field a:[[I

.field c:Landroid/os/Handler;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ScrollView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Landroid/content/Context;

.field private w:Landroid/graphics/Bitmap;

.field private x:Landroid/graphics/Bitmap;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0xd

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "\u0017u)Z\rU"

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

    const/16 v9, 0x52

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

    const-string v1, "\u0000d.w;\u0007n&"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_0
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "\u53b2\u6d89"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "\u0017u)Z\rT"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "\u4e6f\u8f7c\u5bc1\u88ed"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "\u8f0b\u4ef7\u4e83\u7ee5"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "\u0000d.w;\tf"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "\u7089\u9501\u8f27\u4ede"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "D\u4ebb\u8b8c\u522e"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x9

    const-string v1, "\u0008n)L\u0007\u0016mr"

    const/16 v0, 0x8

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    const/16 v2, 0xa

    const-string v1, "\u0017d)Z1\u000cC\'P\u0018\u0005w)j \re/M\r"

    const/16 v0, 0x9

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_9
    aput-object v1, v3, v2

    const/16 v2, 0xb

    const-string v1, "1U\u000e\u0005j"

    const/16 v0, 0xa

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_a
    aput-object v1, v3, v2

    const/16 v2, 0xc

    const-string v1, ".Q=[:3d*"

    const/16 v0, 0xb

    move-object v3, v4

    goto/16 :goto_0

    :pswitch_b
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/data/g;->b:Lcn/jpush/android/b/a/f;

    return-void

    :pswitch_c
    const/16 v9, 0x64

    goto/16 :goto_2

    :pswitch_d
    const/4 v9, 0x1

    goto/16 :goto_2

    :pswitch_e
    const/16 v9, 0x48

    goto/16 :goto_2

    :pswitch_f
    const/16 v9, 0x28

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
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
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/data/g;->w:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/data/g;->x:Landroid/graphics/Bitmap;

    iput v8, p0, Lcn/jpush/android/data/g;->y:I

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/jpush/android/data/g;->a:[[I

    new-instance v0, Lcn/jpush/android/data/h;

    invoke-direct {v0, p0}, Lcn/jpush/android/data/h;-><init>(Lcn/jpush/android/data/g;)V

    iput-object v0, p0, Lcn/jpush/android/data/g;->c:Landroid/os/Handler;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iput-object p1, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    iput-object p2, p0, Lcn/jpush/android/data/g;->C:Lcn/jpush/android/data/d;

    iget-object v0, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/jpush/android/data/g;->z:I

    iget-object v0, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/jpush/android/data/g;->A:F

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->w:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sget-object v1, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/jpush/android/data/g;->x:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v1, p0, Lcn/jpush/android/data/g;->a:[[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcn/jpush/android/data/g;->y:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcn/jpush/android/data/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v10}, Lcn/jpush/android/data/g;->setOrientation(I)V

    invoke-virtual {p0, v9, v9, v9, v9}, Lcn/jpush/android/data/g;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    const/16 v2, 0x75

    const/16 v3, 0x75

    const/16 v4, 0x75

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcn/jpush/android/data/g;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x4b

    invoke-direct {v0, v12, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0xa0

    const/16 v3, 0xc8

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x48

    const/16 v2, 0x48

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->j:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_1
    iget-object v1, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/jpush/android/data/g;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxEms(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->l:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->l:Landroid/widget/ScrollView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->l:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    const/16 v2, 0xe5

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xf7

    const/16 v4, 0xf8

    const/16 v5, 0xf9

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jpush/android/data/g;->n:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/jpush/android/data/g;->n:Landroid/widget/TextView;

    const/16 v6, 0x14

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->n:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->n:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->n:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jpush/android/data/g;->o:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/jpush/android/data/g;->o:Landroid/widget/TextView;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->o:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->o:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->o:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcn/jpush/android/data/g;->p:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/jpush/android/data/g;->p:Landroid/widget/TextView;

    const/16 v6, 0x14

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v9, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->p:Landroid/widget/TextView;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->p:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/jpush/android/data/g;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/jpush/android/data/g;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcn/jpush/android/data/g;->i:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v3, p0, Lcn/jpush/android/data/g;->i:Landroid/widget/LinearLayout;

    const/16 v4, 0x64

    invoke-virtual {v3, v8, v8, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcn/jpush/android/data/g;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->i:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcn/jpush/android/data/g;->a(Landroid/widget/LinearLayout;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->q:Landroid/widget/TextView;

    const/16 v2, 0xe5

    const/16 v3, 0xe5

    const/16 v4, 0xe5

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->m:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->q:Landroid/widget/TextView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->q:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->q:Landroid/widget/TextView;

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v8, v10, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->r:Landroid/widget/TextView;

    const/16 v2, 0xf7

    const/16 v3, 0xf8

    const/16 v4, 0xf9

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->r:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->r:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->r:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->h:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/data/g;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x14

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x435c0000    # 220.0f

    iget v2, p0, Lcn/jpush/android/data/g;->A:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    iget v3, p0, Lcn/jpush/android/data/g;->A:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->s:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->s:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :try_start_2
    iget-object v1, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcn/jpush/android/data/g;->s:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_2
    iget-object v1, p0, Lcn/jpush/android/data/g;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->s:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0xa0

    const/16 v3, 0xc8

    invoke-static {v8, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcn/jpush/android/data/g;->z:I

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/data/g;->t:Landroid/widget/Button;

    iget-object v0, p0, Lcn/jpush/android/data/g;->t:Landroid/widget/Button;

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/Button;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jpush/android/data/g;->u:Landroid/widget/Button;

    iget-object v0, p0, Lcn/jpush/android/data/g;->u:Landroid/widget/Button;

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/data/g;->g:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->u:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic a(Lcn/jpush/android/data/g;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/g;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, -0x2

    const/4 v6, 0x5

    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->w:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcn/jpush/android/data/g;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcn/jpush/android/data/g;->a:[[I

    iget v4, p0, Lcn/jpush/android/data/g;->y:I

    aget-object v1, v1, v4

    array-length v4, v1

    if-ne v4, v7, :cond_4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aget v0, v1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/data/g;->w:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    aget v0, v1, v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/jpush/android/data/g;->w:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x7d0

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0xc8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/data/g;->x:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/jpush/android/data/g;->x:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v0, v7, :cond_1

    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcn/jpush/android/data/g;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method static synthetic b(Lcn/jpush/android/data/g;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/g;->D:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic c(Lcn/jpush/android/data/g;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/g;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcn/jpush/android/data/g;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/g;->E:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/data/g;->u:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/g;->u:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcn/jpush/android/util/x;->c()V

    iget-object v0, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/data/g;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v1, Lcn/jpush/android/b/a/f;

    iget-object v2, p0, Lcn/jpush/android/data/g;->v:Landroid/content/Context;

    iget-object v3, p0, Lcn/jpush/android/data/g;->C:Lcn/jpush/android/data/d;

    invoke-direct {v1, v2, v3}, Lcn/jpush/android/b/a/f;-><init>(Landroid/content/Context;Lcn/jpush/android/data/d;)V

    sput-object v1, Lcn/jpush/android/data/g;->b:Lcn/jpush/android/b/a/f;

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    sget-object v2, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    new-instance v2, Lcn/jpush/android/b/a/a;

    sget-object v3, Lcn/jpush/android/data/g;->F:[Ljava/lang/String;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    const-class v4, Lcn/jpush/android/b/a/b;

    invoke-direct {v2, v3, v4}, Lcn/jpush/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v1, p0, Lcn/jpush/android/data/g;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jpush/android/data/g;->B:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/data/g;->t:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcn/jpush/android/data/g;->u:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
