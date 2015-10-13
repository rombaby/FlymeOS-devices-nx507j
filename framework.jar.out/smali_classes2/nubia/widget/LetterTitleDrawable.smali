.class public Lnubia/widget/LetterTitleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/LetterTitleDrawable$1;,
        Lnubia/widget/LetterTitleDrawable$LetterTile;
    }
.end annotation


# static fields
.field public static final CARD_RES_TYPE_LARGE:I = 0x1

.field public static final CARD_RES_TYPE_NORMAL:I = 0x0

.field public static final CARD_RES_TYPE_SMALL:I = 0x2

.field private static final DIGITS_MAX_SHOW_COUNT:I = 0x3

.field public static final SUB1:I = 0x0

.field public static final SUB2:I = 0x1

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;


# instance fields
.field private mCardId:I

.field private mCardResType:I

.field private mContactType:I

.field private mDisplayName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mIsCircle:Z

.field private mOffset:F

.field private mPaint:Landroid/graphics/Paint;

.field private mResources:Landroid/content/res/Resources;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "cardId"    # I

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput v1, p0, Lnubia/widget/LetterTitleDrawable;->mContactType:I

    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/LetterTitleDrawable;->mIsCircle:Z

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    .line 72
    iput-object p1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    .line 73
    iput p2, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    .line 74
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    .line 75
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 76
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 77
    new-instance v0, Lnubia/widget/LetterTitleDrawable$LetterTile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;-><init>(Landroid/content/res/Resources;Lnubia/widget/LetterTitleDrawable$1;)V

    sput-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    .line 78
    return-void
.end method

.method private configDrawLetterCanvas(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "minDimension"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 142
    const/4 v3, 0x1

    .line 143
    .local v3, "drawLetterCount":I
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable;->isEnglishName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 146
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 147
    const/4 v3, 0x2

    .line 148
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v0, v4

    .line 161
    :cond_0
    :goto_0
    invoke-direct {p0, v3, p3}, Lnubia/widget/LetterTitleDrawable;->configDrawPaint(II)V

    .line 162
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    sget-object v5, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;
    invoke-static {v5}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 166
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->getShowDigitsCharAndCount()I

    move-result v3

    .line 152
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    goto :goto_0

    .line 154
    :cond_2
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    const v4, 0x30c006f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 157
    const v0, -0x42b33333    # -0.05f

    iput v0, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    .line 158
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->initOnlyOneChar()V

    goto :goto_0
.end method

.method private configDrawPaint(II)V
    .locals 4
    .param p1, "drawLetterCount"    # I
    .param p2, "minDimension"    # I

    .prologue
    .line 170
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mLetterToTileRatio:F
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$400(Lnubia/widget/LetterTitleDrawable$LetterTile;)F

    move-result v2

    mul-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;
    invoke-static {v3}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 174
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mTileFontColor:I
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$500(Lnubia/widget/LetterTitleDrawable$LetterTile;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    sget-object v0, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 176
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 97
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 101
    .local v0, "destRect":Landroid/graphics/Rect;
    iget v2, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 104
    .local v1, "halfLength":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 110
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 113
    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 116
    sget-object v4, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/LetterTitleDrawable;->mIdentifier:Ljava/lang/String;

    invoke-direct {p0, v5}, Lnubia/widget/LetterTitleDrawable;->pickColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    sget-object v4, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 119
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 121
    .local v2, "minDimension":I
    iget-boolean v4, p0, Lnubia/widget/LetterTitleDrawable;->mIsCircle:Z

    if-eqz v4, :cond_2

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    sget-object v7, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v7}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    :goto_0
    iget-object v4, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->getDefImgResId()I

    move-result v1

    .line 131
    .local v1, "defImgResId":I
    invoke-direct {p0, p1, v0, v1}, Lnubia/widget/LetterTitleDrawable;->mergeDefaultImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 134
    .end local v1    # "defImgResId":I
    :cond_0
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->getCardImageResID()I

    move-result v3

    .line 135
    .local v3, "resId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 136
    invoke-direct {p0, p1, v0, v3}, Lnubia/widget/LetterTitleDrawable;->mergeCardTag(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 138
    :cond_1
    return-void

    .line 125
    .end local v3    # "resId":I
    :cond_2
    sget-object v4, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getCardImageResID()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    const/4 v0, -0x1

    .line 221
    .local v0, "result":I
    invoke-direct {p0}, Lnubia/widget/LetterTitleDrawable;->shouldDisplayMulti()Z

    move-result v1

    if-nez v1, :cond_3

    .line 222
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-eqz v1, :cond_0

    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-ne v2, v1, :cond_1

    .line 223
    :cond_0
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    if-nez v1, :cond_2

    const v0, 0x30200d3

    .line 236
    :cond_1
    :goto_0
    return v0

    .line 223
    :cond_2
    const v0, 0x30200d4

    goto :goto_0

    .line 227
    :cond_3
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-nez v1, :cond_4

    .line 228
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    if-nez v1, :cond_5

    const v0, 0x30200cf

    .line 231
    :cond_4
    :goto_1
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardId:I

    if-ne v2, v1, :cond_1

    .line 232
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    if-nez v1, :cond_6

    const v0, 0x30200d1

    :goto_2
    goto :goto_0

    .line 228
    :cond_5
    const v0, 0x30200d0

    goto :goto_1

    .line 232
    :cond_6
    const v0, 0x30200d2

    goto :goto_2
.end method

.method private getDefImgResId()I
    .locals 3

    .prologue
    .line 240
    const v0, 0x30200c6

    .line 241
    .local v0, "resId":I
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 242
    const v0, 0x30200c7

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 244
    const v0, 0x30200c8

    goto :goto_0
.end method

.method public static getLastChineseCharPosition(Ljava/lang/String;)I
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v3, -0x1

    .line 311
    .local v3, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 312
    .local v1, "ch":[C
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 313
    aget-char v0, v1, v2

    .line 314
    .local v0, "c":C
    invoke-static {v0}, Lnubia/widget/LetterTitleDrawable;->isChinese(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    move v3, v2

    .line 319
    .end local v0    # "c":C
    :cond_0
    return v3

    .line 312
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getShowDigitsCharAndCount()I
    .locals 4

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "drawLetterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 192
    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v2

    iget-object v3, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v2, v1

    .line 194
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 196
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 200
    :cond_1
    return v0

    .line 191
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getSimState(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 258
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method private hasIccCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lnubia/widget/LetterTitleDrawable;->getSimState(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initOnlyOneChar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable;->getLastChineseCharPosition(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "lastChineseCharPos":I
    if-ltz v0, :cond_0

    .line 181
    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v4

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C

    move-result-object v1

    iget-object v2, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v4

    goto :goto_0
.end method

.method private static isChinese(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 299
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 300
    .local v0, "ub":Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 304
    :cond_0
    const/4 v1, 0x1

    .line 306
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isEnglishLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 323
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnglishName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v0, 0x1

    .line 285
    .local v0, "bRet":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 286
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "temp":C
    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable;->isEnglishLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 295
    .end local v2    # "temp":C
    :cond_2
    return v0
.end method

.method private mergeCardTag(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resId"    # I

    .prologue
    .line 204
    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, "card":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget-object v3, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 208
    const/4 v0, 0x0

    .line 209
    return-void
.end method

.method private mergeDefaultImage(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "resId"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lnubia/widget/LetterTitleDrawable;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 213
    .local v0, "defaultImage":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-object v3, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 215
    const/16 v1, 0x1f

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    return-void
.end method

.method private pickColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lnubia/widget/LetterTitleDrawable;->mContactType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 271
    :cond_0
    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mDefaultColor:I
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$600(Lnubia/widget/LetterTitleDrawable$LetterTile;)I

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 278
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mColors:Landroid/content/res/TypedArray;
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$700(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int v0, v1, v2

    .line 280
    .local v0, "color":I
    sget-object v1, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mColors:Landroid/content/res/TypedArray;
    invoke-static {v1}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$700(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v2, Lnubia/widget/LetterTitleDrawable;->mLetterTile:Lnubia/widget/LetterTitleDrawable$LetterTile;

    # getter for: Lnubia/widget/LetterTitleDrawable$LetterTile;->mDefaultColor:I
    invoke-static {v2}, Lnubia/widget/LetterTitleDrawable$LetterTile;->access$600(Lnubia/widget/LetterTitleDrawable$LetterTile;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    goto :goto_0
.end method

.method private shouldDisplayMulti()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, v1}, Lnubia/widget/LetterTitleDrawable;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lnubia/widget/LetterTitleDrawable;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 82
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 83
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lnubia/widget/LetterTitleDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lnubia/widget/LetterTitleDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    .line 86
    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mIdentifier:Ljava/lang/String;

    invoke-direct {p0, v0}, Lnubia/widget/LetterTitleDrawable;->pickColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 338
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 329
    return-void
.end method

.method public setCardResType(I)V
    .locals 0
    .param p1, "cardResType"    # I

    .prologue
    .line 386
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mCardResType:I

    .line 387
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 333
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 334
    return-void
.end method

.method public setContactDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lnubia/widget/LetterTitleDrawable;->mDisplayName:Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lnubia/widget/LetterTitleDrawable;->mIdentifier:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setContactType(I)V
    .locals 0
    .param p1, "contactType"    # I

    .prologue
    .line 378
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mContactType:I

    .line 379
    return-void
.end method

.method public setIsCircular(Z)V
    .locals 0
    .param p1, "isCircle"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lnubia/widget/LetterTitleDrawable;->mIsCircle:Z

    .line 383
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 369
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mOffset:F

    .line 370
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 350
    iput p1, p0, Lnubia/widget/LetterTitleDrawable;->mScale:F

    .line 351
    return-void
.end method
