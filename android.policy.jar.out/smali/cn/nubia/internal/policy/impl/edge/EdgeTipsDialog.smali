.class public Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;
.super Ljava/lang/Object;
.source "EdgeTipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeTipsDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplay:Landroid/view/Display;

.field private mLastType:I

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mShow:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;-><init>(Landroid/content/Context;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mLastType:I

    .line 44
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    .line 46
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 48
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDisplay:Landroid/view/Display;

    .line 49
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 50
    return-void
.end method

.method private buildDialog()Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 62
    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mContext:Landroid/content/Context;

    const v7, 0x103012a

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    .line 63
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EdgeTipsDialog:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 65
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x3030003

    .line 66
    .local v2, "layoutResId":I
    iget v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 67
    const v2, 0x3030004

    .line 69
    :cond_0
    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, "contentView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->initContentView(Landroid/view/View;)V

    .line 71
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 72
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 73
    .local v4, "window":Landroid/view/Window;
    invoke-direct {p0, v4}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->setBackground(Landroid/view/Window;)V

    .line 74
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 75
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 77
    iput-object v9, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 78
    const/16 v5, 0x7d3

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    const/16 v5, 0xe

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 80
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 81
    const v5, 0x40028

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 84
    iget-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    return-object v5
.end method

.method private doBlurScreenshot(F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "degree"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    const/4 v3, 0x2

    new-array v0, v3, [F

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    aput v3, v0, v5

    iget-object v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    aput v3, v0, v6

    .line 137
    .local v0, "dims":[F
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    .line 138
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    .local v1, "matrix":Landroid/graphics/Matrix;
    neg-float v3, p1

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 140
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 141
    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v5

    .line 142
    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v0, v6

    .line 144
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    aget v3, v0, v5

    float-to-int v3, v3

    aget v4, v0, v6

    float-to-int v4, v4

    invoke-static {v3, v4}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    .local v2, "screenshot":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v2, v3}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 239
    packed-switch p0, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 241
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 243
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 245
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getIndexByType(I)I
    .locals 0
    .param p0, "type"    # I

    .prologue
    .line 235
    return p0
.end method

.method private initContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 88
    const v1, 0x30d0019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x30d001a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->getIndexByType(I)I

    move-result v0

    .line 92
    .local v0, "index":I
    const v1, 0x30d0016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_TEXT_TIPS_RESIDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v1, 0x30d0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_TEXT_ACTION_RESIDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    const v1, 0x30d0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Lcn/nubia/internal/policy/impl/edge/ResConsts;->TIPS_IMAGE_RESIDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    return-void
.end method

.method private releaseBitmap()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 165
    :cond_0
    return-void
.end method

.method private setBackground(Landroid/view/Window;)V
    .locals 14
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 101
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v10

    invoke-static {v10}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->getDegreesForRotation(I)F

    move-result v1

    .line 102
    .local v1, "degree":F
    invoke-direct {p0, v1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->doBlurScreenshot(F)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 103
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_1

    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    .line 104
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 105
    .local v9, "w":I
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 106
    .local v2, "h":I
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 107
    .local v3, "physX":I
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 108
    .local v4, "physY":I
    div-int v10, v3, v9

    int-to-float v6, v10

    .line 109
    .local v6, "sx":F
    div-int v10, v4, v2

    int-to-float v7, v10

    .line 110
    .local v7, "sy":F
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v10, v11, :cond_0

    .line 111
    move v8, v6

    .line 112
    .local v8, "tmp":F
    move v6, v7

    .line 113
    move v7, v8

    .line 115
    .end local v8    # "tmp":F
    :cond_0
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v10, v10

    div-float/2addr v10, v6

    float-to-int v10, v10

    iget-object v11, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    float-to-int v11, v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 118
    .local v5, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 121
    neg-int v10, v9

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    neg-int v11, v2

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    iput-object v5, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 126
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "h":I
    .end local v3    # "physX":I
    .end local v4    # "physY":I
    .end local v5    # "ss":Landroid/graphics/Bitmap;
    .end local v6    # "sx":F
    .end local v7    # "sy":F
    .end local v9    # "w":I
    :cond_1
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    .line 127
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 128
    iget-object v10, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 129
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v11, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v10, v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_2
    return-void
.end method

.method private startSettings()V
    .locals 4

    .prologue
    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NUBIA_EDGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v2, "gestureType"

    iget v3, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :try_start_0
    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 149
    iget-boolean v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mShow:Z

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 151
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mDialog:Landroid/app/Dialog;

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mShow:Z

    .line 153
    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mLastType:I

    .line 154
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->releaseBitmap()V

    .line 155
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    .line 157
    :cond_0
    return v0
.end method

.method public enableGestrue(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->getNameByType(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    :cond_0
    return-void
.end method

.method public getNameByType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    return-object v0

    .line 195
    :pswitch_0
    const-string v0, "left_side_slide"

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    const-string v0, "right_side_slide"

    .line 199
    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "side_slide_back_and_forth"

    .line 202
    goto :goto_0

    .line 204
    :pswitch_3
    const-string v0, "both_sides_slide"

    .line 205
    goto :goto_0

    .line 207
    :pswitch_4
    const-string v0, "hands_hold_both_sides"

    .line 208
    goto :goto_0

    .line 210
    :pswitch_5
    const-string v0, "hand_hold_and_leave"

    .line 211
    goto :goto_0

    .line 213
    :pswitch_6
    const-string v0, "hand_hold_and_click"

    .line 214
    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->dismiss()I

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :goto_0
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    invoke-virtual {p0, v0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->enableGestrue(I)V

    .line 182
    return-void

    .line 176
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->startSettings()V

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x30d001a
        :pswitch_0
    .end packed-switch
.end method

.method public setGestureType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 168
    iput p1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    .line 169
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    iget v1, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mLastType:I

    if-eq v0, v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->dismiss()I

    .line 55
    invoke-direct {p0}, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->buildDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mShow:Z

    .line 57
    iget v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mType:I

    iput v0, p0, Lcn/nubia/internal/policy/impl/edge/EdgeTipsDialog;->mLastType:I

    .line 59
    :cond_0
    return-void
.end method
