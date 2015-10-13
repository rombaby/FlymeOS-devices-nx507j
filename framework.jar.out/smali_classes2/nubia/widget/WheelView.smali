.class public Lnubia/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/WheelView$TwoDigitFormatter;,
        Lnubia/widget/WheelView$Formatter;,
        Lnubia/widget/WheelView$OnScrollListener;,
        Lnubia/widget/WheelView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final LAYER_FLAGS:I = 0xd

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x1

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x4

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x9

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final sTwoDigitFormatter:Lnubia/widget/WheelView$TwoDigitFormatter;


# instance fields
.field private final mAdjustDrawPos:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDrawTextAlpha:[I

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lnubia/widget/WheelView$Formatter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mMaxValue:I

.field private mMaximumFlingVelocity:I

.field private mMiddleBottom:I

.field private mMiddleBottomEnd:I

.field private mMiddleTop:I

.field private mMiddleTopEnd:I

.field private mMinValue:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lnubia/widget/WheelView$OnScrollListener;

.field private mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedWheelPaint:Landroid/graphics/Paint;

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field mTextsLocation:[F

.field mTextsScaleX:[F

.field mTextsSize:[F

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 633
    new-instance v0, Lnubia/widget/WheelView$TwoDigitFormatter;

    invoke-direct {v0}, Lnubia/widget/WheelView$TwoDigitFormatter;-><init>()V

    sput-object v0, Lnubia/widget/WheelView;->sTwoDigitFormatter:Lnubia/widget/WheelView$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/16 v3, 0x9

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    .line 38
    new-array v2, v3, [I

    iput-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 40
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 45
    const/high16 v2, -0x80000000

    iput v2, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    .line 57
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lnubia/widget/WheelView;->mDrawTextAlpha:[I

    .line 66
    const/4 v2, 0x0

    iput v2, p0, Lnubia/widget/WheelView;->mScrollState:I

    .line 71
    new-array v2, v3, [F

    iput-object v2, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    .line 72
    new-array v2, v3, [F

    iput-object v2, p0, Lnubia/widget/WheelView;->mTextsSize:[F

    .line 73
    new-array v2, v3, [F

    iput-object v2, p0, Lnubia/widget/WheelView;->mTextsLocation:[F

    .line 81
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 82
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 84
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lnubia/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v2, p0, Lnubia/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    const v3, -0xffff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x3090003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 88
    .local v1, "selectedWheelPaintColor":I
    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 91
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x308001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnubia/widget/WheelView;->mTextSize:I

    .line 93
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x308001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lnubia/widget/WheelView;->mAdjustDrawPos:I

    .line 95
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 96
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lnubia/widget/WheelView;->mTouchSlop:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lnubia/widget/WheelView;->mMinimumFlingVelocity:I

    .line 98
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnubia/widget/WheelView;->mMaximumFlingVelocity:I

    .line 100
    return-void

    .line 57
    :array_0
    .array-data 4
        0xa
        0x15
        0x37
        0x87
        0xe3
        0x87
        0x37
        0x15
        0xa
    .end array-data
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 391
    :cond_0
    iput v1, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 399
    :goto_0
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    .line 400
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 415
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 416
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 415
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 418
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 419
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 420
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    .line 422
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 423
    invoke-direct {p0, v1}, Lnubia/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 424
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 219
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 220
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 234
    :goto_0
    return-void

    .line 223
    :cond_0
    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 224
    :cond_1
    const-string v2, ""

    .line 233
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_2
    iget-object v3, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 227
    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int v1, p1, v3

    .line 228
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 229
    goto :goto_1

    .line 230
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lnubia/widget/WheelView;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 297
    iget v0, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 298
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 299
    iput v1, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 300
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 301
    if-lez v4, :cond_2

    iget v0, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 304
    :cond_0
    iget-object v0, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 305
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    .line 306
    const/4 v1, 0x1

    .line 308
    :cond_1
    return v1

    .line 301
    :cond_2
    iget v0, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 459
    iput v1, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 460
    if-lez p1, :cond_0

    .line 461
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 466
    :goto_0
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    .line 468
    return-void

    .line 463
    :cond_0
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    invoke-interface {v0, p1}, Lnubia/widget/WheelView$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTwoDigitFormatter()Lnubia/widget/WheelView$Formatter;
    .locals 1

    .prologue
    .line 639
    sget-object v0, Lnubia/widget/WheelView;->sTwoDigitFormatter:Lnubia/widget/WheelView$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 194
    iget v0, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 195
    iget v0, p0, Lnubia/widget/WheelView;->mMinValue:I

    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 201
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 197
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 198
    iget v0, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v3, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 404
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 406
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 407
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 408
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    .line 410
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 411
    invoke-direct {p0, v1}, Lnubia/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 412
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setVerticalFadingEdgeEnabled(Z)V

    .line 566
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lnubia/widget/WheelView;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setFadingEdgeLength(I)V

    .line 567
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .prologue
    .line 542
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 543
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 544
    .local v0, "selectorIndices":[I
    array-length v4, v0

    iget v5, p0, Lnubia/widget/WheelView;->mTextSize:I

    mul-int v3, v4, v5

    .line 545
    .local v3, "totalTextHeight":I
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    int-to-float v2, v4

    .line 546
    .local v2, "totalTextGapHeight":F
    array-length v4, v0

    int-to-float v1, v4

    .line 547
    .local v1, "textGapCount":F
    div-float v4, v2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    .line 548
    iget v4, p0, Lnubia/widget/WheelView;->mTextSize:I

    iget v5, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    .line 549
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    .line 550
    iget v4, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v4, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 551
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    .line 552
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    .line 553
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getDrawTextAttri()V

    .line 554
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 237
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 238
    iget-object v3, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 239
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getValue()I

    move-result v0

    .line 240
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 241
    add-int/lit8 v4, v1, -0x4

    add-int v2, v0, v4

    .line 242
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 243
    invoke-direct {p0, v2}, Lnubia/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 245
    :cond_0
    aput v2, v3, v1

    .line 246
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lnubia/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 367
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 368
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 369
    .local v0, "amountToScroll":I
    iget v5, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 371
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 372
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 373
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 374
    if-lez v2, :cond_1

    .line 375
    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 380
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 381
    invoke-virtual {p0, v4, v0}, Lnubia/widget/WheelView;->scrollBy(II)V

    .line 384
    :goto_1
    return v3

    .line 377
    :cond_1
    iget v5, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 384
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

    iget v1, p0, Lnubia/widget/WheelView;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lnubia/widget/WheelView$OnValueChangeListener;->onValueChange(Lnubia/widget/WheelView;II)V

    .line 430
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 176
    iget v0, p0, Lnubia/widget/WheelView;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iput p1, p0, Lnubia/widget/WheelView;->mScrollState:I

    .line 180
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnScrollListener:Lnubia/widget/WheelView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lnubia/widget/WheelView;->mOnScrollListener:Lnubia/widget/WheelView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lnubia/widget/WheelView$OnScrollListener;->onScrollStateChange(Lnubia/widget/WheelView;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 169
    iget-object v0, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 170
    invoke-direct {p0}, Lnubia/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    .line 173
    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 437
    iget v1, p0, Lnubia/widget/WheelView;->mValue:I

    if-ne v1, p1, :cond_0

    .line 453
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 441
    invoke-direct {p0, p1}, Lnubia/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 446
    :goto_1
    iget v0, p0, Lnubia/widget/WheelView;->mValue:I

    .line 447
    .local v0, "previous":I
    iput p1, p0, Lnubia/widget/WheelView;->mValue:I

    .line 448
    if-eqz p2, :cond_1

    .line 449
    invoke-direct {p0, v0, p1}, Lnubia/widget/WheelView;->notifyChange(II)V

    .line 451
    :cond_1
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 452
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 443
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 444
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 108
    iget-object v1, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 109
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v1, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 111
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 116
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 117
    .local v0, "currentScrollerY":I
    iget v2, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 120
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lnubia/widget/WheelView;->scrollBy(II)V

    .line 121
    iput v0, p0, Lnubia/widget/WheelView;->mPreviousScrollerY:I

    .line 122
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    invoke-direct {p0, v1}, Lnubia/widget/WheelView;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDrawTextAttri()V
    .locals 18

    .prologue
    .line 471
    const/4 v5, 0x0

    .line 472
    .local v5, "mRadianY":F
    const v6, 0x3ec90fdb

    .line 473
    .local v6, "mSelectRadian":F
    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    const/high16 v12, 0x40800000    # 4.0f

    mul-float/2addr v12, v6

    float-to-double v12, v12

    sub-double/2addr v10, v12

    double-to-float v7, v10

    .line 475
    .local v7, "mStartRadian":F
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x8

    int-to-float v4, v10

    .line 477
    .local v4, "mMappingViewHeight":F
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v10, v10, 0x4

    int-to-float v3, v10

    .line 479
    .local v3, "mHalfViewHeight":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 480
    .local v8, "selectorIndices":[I
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    int-to-float v9, v10

    .line 481
    .local v9, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v8

    if-ge v2, v10, :cond_1

    .line 482
    const/high16 v10, 0x41000000    # 8.0f

    mul-float/2addr v10, v6

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    sub-float v11, v9, v11

    mul-float/2addr v10, v11

    div-float/2addr v10, v4

    add-float v5, v7, v10

    .line 485
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mTextSize:I

    int-to-double v12, v11

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 486
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    aget v10, v10, v2

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    const/4 v11, 0x0

    aput v11, v10, v2

    .line 489
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsLocation:[F

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    float-to-double v12, v11

    float-to-double v14, v5

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    aget v11, v11, v2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v11, v14

    float-to-double v14, v11

    add-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lnubia/widget/WheelView;->mAdjustDrawPos:I

    int-to-double v14, v11

    sub-double/2addr v12, v14

    double-to-float v11, v12

    aput v11, v10, v2

    .line 492
    move-object/from16 v0, p0

    iget-object v10, v0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    const-wide v12, 0x3fe999999999999aL    # 0.8

    const-wide v14, 0x3fc999999999999aL    # 0.2

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lnubia/widget/WheelView;->mTextSize:I

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lnubia/widget/WheelView;->mTextsSize:[F

    aget v13, v13, v2

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    aput v11, v10, v2

    .line 494
    move-object/from16 v0, p0

    iget v10, v0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 496
    :cond_1
    return-void
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lnubia/widget/WheelView;->mMaxValue:I

    return v0
.end method

.method public getMiddleBottom()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    return v0
.end method

.method public getMiddleTop()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lnubia/widget/WheelView;->mMinValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lnubia/widget/WheelView;->mValue:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0x88

    const/16 v6, 0xd

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v12, v0

    .line 501
    .local v12, "x":F
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lnubia/widget/WheelView;->mMiddleTop:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 502
    iget v0, p0, Lnubia/widget/WheelView;->mMiddleBottom:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getRight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lnubia/widget/WheelView;->getBottom()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 504
    iget-object v11, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 505
    .local v11, "selectorIndices":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v11

    if-ge v8, v0, :cond_0

    .line 506
    aget v10, v11, v8

    .line 507
    .local v10, "selectorIndex":I
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lnubia/widget/WheelView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 509
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lnubia/widget/WheelView;->mDrawTextAlpha:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 510
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 513
    .local v9, "scrollSelectorValue":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 514
    iget-object v0, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v0, v0, v8

    div-float v0, v13, v0

    invoke-virtual {p1, v13, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 515
    iget-object v0, p0, Lnubia/widget/WheelView;->mTextsLocation:[F

    aget v0, v0, v8

    iget-object v1, p0, Lnubia/widget/WheelView;->mTextsScaleX:[F

    aget v1, v1, v8

    mul-float v7, v0, v1

    .line 516
    .local v7, "currentLocation":F
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 518
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 505
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 520
    .end local v7    # "currentLocation":F
    .end local v9    # "scrollSelectorValue":Ljava/lang/String;
    .end local v10    # "selectorIndex":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 533
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 534
    if-eqz p1, :cond_0

    .line 535
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheel()V

    .line 536
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeFadingEdges()V

    .line 539
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 524
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x308001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 526
    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/view/View;->onMeasure(II)V

    .line 528
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 313
    iget-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 314
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 316
    :cond_0
    iget-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    packed-switch v5, :pswitch_data_0

    .line 363
    :cond_1
    :goto_0
    return v8

    .line 319
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lnubia/widget/WheelView;->mLastDownEventY:F

    iput v5, p0, Lnubia/widget/WheelView;->mLastDownOrMoveEventY:F

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lnubia/widget/WheelView;->mLastDownEventTime:J

    .line 321
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 322
    iget-object v5, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 323
    iget-object v5, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 324
    iget-object v5, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 325
    invoke-direct {p0, v9}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v5, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 327
    iget-object v5, p0, Lnubia/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 328
    iget-object v5, p0, Lnubia/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v8}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 334
    .local v0, "currentMoveY":F
    iget v5, p0, Lnubia/widget/WheelView;->mScrollState:I

    if-eq v5, v8, :cond_4

    .line 335
    iget v5, p0, Lnubia/widget/WheelView;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 336
    .local v1, "deltaDownY":I
    iget v5, p0, Lnubia/widget/WheelView;->mTouchSlop:I

    if-le v1, v5, :cond_3

    .line 337
    invoke-direct {p0, v8}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    .line 344
    .end local v1    # "deltaDownY":I
    :cond_3
    :goto_1
    iput v0, p0, Lnubia/widget/WheelView;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 340
    :cond_4
    iget v5, p0, Lnubia/widget/WheelView;->mLastDownOrMoveEventY:F

    sub-float v5, v0, v5

    float-to-int v2, v5

    .line 341
    .local v2, "deltaMoveY":I
    invoke-virtual {p0, v9, v2}, Lnubia/widget/WheelView;->scrollBy(II)V

    .line 342
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_1

    .line 348
    .end local v0    # "currentMoveY":F
    .end local v2    # "deltaMoveY":I
    :pswitch_2
    iget-object v4, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 349
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Lnubia/widget/WheelView;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 350
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 351
    .local v3, "initialVelocity":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lnubia/widget/WheelView;->mMinimumFlingVelocity:I

    if-le v5, v6, :cond_5

    .line 352
    invoke-direct {p0, v3}, Lnubia/widget/WheelView;->fling(I)V

    .line 358
    :goto_2
    iget-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 359
    const/4 v5, 0x0

    iput-object v5, p0, Lnubia/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 354
    :cond_5
    invoke-direct {p0}, Lnubia/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 355
    invoke-direct {p0, v9}, Lnubia/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_2

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 131
    iget-object v0, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    .line 132
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_0

    .line 134
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 163
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_1

    .line 139
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_0

    .line 142
    :cond_1
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 143
    :cond_2
    :goto_1
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_3

    .line 145
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 146
    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->decrementSelectorIndices([I)V

    .line 147
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lnubia/widget/WheelView;->setValueInternal(IZ)V

    .line 148
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 150
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_1

    .line 153
    :cond_3
    :goto_2
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_4

    .line 154
    iget v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    iget v2, p0, Lnubia/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    .line 155
    invoke-direct {p0, v0}, Lnubia/widget/WheelView;->incrementSelectorIndices([I)V

    .line 156
    aget v1, v0, v3

    invoke-direct {p0, v1, v4}, Lnubia/widget/WheelView;->setValueInternal(IZ)V

    .line 157
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 159
    iget v1, p0, Lnubia/widget/WheelView;->mInitialScrollOffset:I

    iput v1, p0, Lnubia/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_2

    .line 162
    :cond_4
    invoke-virtual {p0}, Lnubia/widget/WheelView;->getDrawTextAttri()V

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 575
    iget-object v0, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iput-object p1, p0, Lnubia/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    .line 579
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setFormatter(Lnubia/widget/WheelView$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lnubia/widget/WheelView$Formatter;

    .prologue
    .line 205
    iget-object v0, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    if-ne p1, v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-object p1, p0, Lnubia/widget/WheelView;->mFormatter:Lnubia/widget/WheelView$Formatter;

    .line 209
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 268
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 271
    :cond_0
    if-gez p1, :cond_1

    .line 272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_1
    iput p1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    .line 275
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mValue:I

    if-ge v1, v2, :cond_2

    .line 276
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iput v1, p0, Lnubia/widget/WheelView;->mValue:I

    .line 278
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 279
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 280
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 281
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 278
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 251
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 254
    :cond_0
    if-gez p1, :cond_1

    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1
    iput p1, p0, Lnubia/widget/WheelView;->mMinValue:I

    .line 258
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mValue:I

    if-le v1, v2, :cond_2

    .line 259
    iget v1, p0, Lnubia/widget/WheelView;->mMinValue:I

    iput v1, p0, Lnubia/widget/WheelView;->mValue:I

    .line 261
    :cond_2
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 262
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lnubia/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 263
    invoke-direct {p0}, Lnubia/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 264
    invoke-virtual {p0}, Lnubia/widget/WheelView;->invalidate()V

    goto :goto_0

    .line 261
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnValueChangedListener(Lnubia/widget/WheelView$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lnubia/widget/WheelView$OnValueChangeListener;

    .prologue
    .line 571
    iput-object p1, p0, Lnubia/widget/WheelView;->mOnValueChangeListener:Lnubia/widget/WheelView$OnValueChangeListener;

    .line 572
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 433
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/WheelView;->setValueInternal(IZ)V

    .line 434
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 186
    iget v1, p0, Lnubia/widget/WheelView;->mMaxValue:I

    iget v2, p0, Lnubia/widget/WheelView;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lnubia/widget/WheelView;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 187
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 189
    iput-boolean p1, p0, Lnubia/widget/WheelView;->mWrapSelectorWheel:Z

    .line 191
    :cond_1
    return-void

    .line 186
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
