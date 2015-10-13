.class Lnubia/widget/LetterTitleDrawable$LetterTile;
.super Ljava/lang/Object;
.source "LetterTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/LetterTitleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTile"
.end annotation


# instance fields
.field private mColors:Landroid/content/res/TypedArray;

.field private mDefaultColor:I

.field private mLetterToTileRatio:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mShowChar:[C

.field private mTileFontColor:I


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C

    .line 37
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mColors:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 38
    const/high16 v0, 0x30a0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mColors:Landroid/content/res/TypedArray;

    .line 39
    const v0, 0x309001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mDefaultColor:I

    .line 40
    const v0, 0x309001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mTileFontColor:I

    .line 41
    const v0, 0x308006f

    invoke-virtual {p1, v0, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mLetterToTileRatio:F

    .line 43
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    const v1, 0x30c0070

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 47
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/Resources;Lnubia/widget/LetterTitleDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/res/Resources;
    .param p2, "x1"    # Lnubia/widget/LetterTitleDrawable$1;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lnubia/widget/LetterTitleDrawable$LetterTile;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/LetterTitleDrawable$LetterTile;)[C
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mShowChar:[C

    return-object v0
.end method

.method static synthetic access$400(Lnubia/widget/LetterTitleDrawable$LetterTile;)F
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mLetterToTileRatio:F

    return v0
.end method

.method static synthetic access$500(Lnubia/widget/LetterTitleDrawable$LetterTile;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mTileFontColor:I

    return v0
.end method

.method static synthetic access$600(Lnubia/widget/LetterTitleDrawable$LetterTile;)I
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mDefaultColor:I

    return v0
.end method

.method static synthetic access$700(Lnubia/widget/LetterTitleDrawable$LetterTile;)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/LetterTitleDrawable$LetterTile;

    .prologue
    .line 25
    iget-object v0, p0, Lnubia/widget/LetterTitleDrawable$LetterTile;->mColors:Landroid/content/res/TypedArray;

    return-object v0
.end method
