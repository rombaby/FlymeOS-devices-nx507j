.class public Lnubia/widget/MagnifierView;
.super Landroid/view/View;
.source "MagnifierView.java"


# static fields
.field static final PADDING_LEFT:I = 0xb

.field static final PADDING_TOP:I = 0x2


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mClipPath:Landroid/graphics/Path;

.field private mDstRect:Landroid/graphics/Rect;

.field private mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

.field private mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mUpdateDrawingCache:Z

.field private sHeight:I

.field private sRadius:I

.field private sWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierView;->initDrawable(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lnubia/widget/MagnifierView;->initPaintFlagsDrawFilter()V

    .line 43
    invoke-direct {p0}, Lnubia/widget/MagnifierView;->initRect()V

    .line 44
    iput-object p1, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 45
    return-void
.end method

.method private static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 139
    .local v3, "willNotCache":Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v0

    .line 141
    .local v0, "bgColor":I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 147
    .local v2, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 148
    const/4 v1, 0x0

    .line 153
    :goto_0
    return-object v1

    .line 149
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 151
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private initDrawable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x30200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    const v1, 0x30200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierView;->sHeight:I

    .line 54
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierView;->sWidth:I

    .line 55
    return-void
.end method

.method private initPaintFlagsDrawFilter()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 60
    return-void
.end method

.method private initRect()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierView;->sWidth:I

    iget v2, p0, Lnubia/widget/MagnifierView;->sHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    .line 66
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0xb

    iput v0, p0, Lnubia/widget/MagnifierView;->sRadius:I

    .line 67
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    iget v1, p0, Lnubia/widget/MagnifierView;->sRadius:I

    add-int/lit8 v1, v1, 0xb

    int-to-float v1, v1

    iget v2, p0, Lnubia/widget/MagnifierView;->sRadius:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lnubia/widget/MagnifierView;->sRadius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 69
    return-void
.end method

.method private takeScreenShot()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    .line 122
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 123
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 124
    check-cast v0, Landroid/view/View;

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {v0}, Lnubia/widget/MagnifierView;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public notifyUpdateDrawingCache()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnubia/widget/MagnifierView;->mUpdateDrawingCache:Z

    .line 118
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 82
    iget-boolean v1, p0, Lnubia/widget/MagnifierView;->mUpdateDrawingCache:Z

    if-eqz v1, :cond_1

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnubia/widget/MagnifierView;->mUpdateDrawingCache:Z

    .line 84
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 87
    :cond_0
    invoke-direct {p0}, Lnubia/widget/MagnifierView;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 92
    :cond_1
    :goto_0
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 94
    .local v0, "saveCount":I
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 95
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 96
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 97
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 100
    .end local v0    # "saveCount":I
    :cond_2
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lnubia/widget/MagnifierView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 101
    iget-object v1, p0, Lnubia/widget/MagnifierView;->mMagnifierMaskDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    return-void

    .line 90
    :cond_3
    invoke-direct {p0}, Lnubia/widget/MagnifierView;->takeScreenShot()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/MagnifierView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 73
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    iget v1, p0, Lnubia/widget/MagnifierView;->sHeight:I

    invoke-virtual {p0, v0, v1}, Lnubia/widget/MagnifierView;->setMeasuredDimension(II)V

    .line 74
    return-void
.end method

.method public setShowRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "srcRect"    # Landroid/graphics/Rect;

    .prologue
    .line 113
    iget-object v0, p0, Lnubia/widget/MagnifierView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    return-void
.end method

.method public viewHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lnubia/widget/MagnifierView;->sHeight:I

    return v0
.end method

.method public viewWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lnubia/widget/MagnifierView;->sWidth:I

    return v0
.end method
