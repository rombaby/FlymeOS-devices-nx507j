.class public Lnubia/widget/HorizontalPagedView;
.super Landroid/view/ViewGroup;
.source "HorizontalPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/HorizontalPagedView$1;,
        Lnubia/widget/HorizontalPagedView$IndicatorHelper;
    }
.end annotation


# static fields
.field private static final TOUCH_SLOP:I = 0xa

.field private static final TOUCH_STATE_MOVING:I = 0x1

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SLOWING:I = 0x2


# instance fields
.field private mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

.field private mCurrentPageIndex:I

.field mIndicatorHelper:Lnubia/widget/HorizontalPagedView$IndicatorHelper;

.field private mIsLocked:Z

.field private mLastMotionX:F

.field private mMaximumVelocity:I

.field private mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnubia/widget/HorizontalPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v1, p0, Lnubia/widget/HorizontalPagedView;->mIsLocked:Z

    .line 24
    iput v1, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/HorizontalPagedView;->mLastMotionX:F

    .line 36
    iput v1, p0, Lnubia/widget/HorizontalPagedView;->mCurrentPageIndex:I

    .line 49
    invoke-direct {p0}, Lnubia/widget/HorizontalPagedView;->Init()V

    .line 50
    return-void
.end method

.method private AddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 139
    :cond_0
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 140
    return-void
.end method

.method private Init()V
    .locals 3

    .prologue
    .line 53
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 55
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lnubia/widget/HorizontalPagedView;->mMaximumVelocity:I

    .line 57
    new-instance v1, Lnubia/widget/HorizontalPagedView$IndicatorHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnubia/widget/HorizontalPagedView$IndicatorHelper;-><init>(Lnubia/widget/HorizontalPagedView;Lnubia/widget/HorizontalPagedView$1;)V

    iput-object v1, p0, Lnubia/widget/HorizontalPagedView;->mIndicatorHelper:Lnubia/widget/HorizontalPagedView$IndicatorHelper;

    .line 58
    new-instance v1, Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-direct {v1}, Lnubia/widget/HorizontalPagedViewScrollHelper;-><init>()V

    iput-object v1, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    .line 59
    new-instance v1, Lnubia/widget/HorizontalPagedViewAdapterHelper;

    iget-object v2, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v2}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getViewList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lnubia/widget/HorizontalPagedViewAdapterHelper;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    .line 60
    return-void
.end method

.method private ReleaseMovement()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 147
    :cond_0
    return-void
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 91
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 93
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 94
    move v0, v2

    .line 99
    :goto_0
    return v0

    .line 96
    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->addView(Landroid/view/View;)V

    .line 67
    return-void
.end method

.method public getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public invalidate(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 213
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 215
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rt"    # Landroid/graphics/Rect;

    .prologue
    .line 208
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 209
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 289
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->registerDataSetObserver()V

    .line 290
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 295
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->unregisterDataSetObserver()V

    .line 296
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 109
    .local v2, "x":F
    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    iget v4, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    if-eqz v4, :cond_1

    :goto_1
    return v3

    .line 111
    :pswitch_1
    iget v4, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    if-nez v4, :cond_0

    .line 112
    iput v2, p0, Lnubia/widget/HorizontalPagedView;->mLastMotionX:F

    goto :goto_0

    .line 117
    :pswitch_2
    iget v4, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v4}, Lnubia/widget/HorizontalPagedViewScrollHelper;->pageSize()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 119
    iget v4, p0, Lnubia/widget/HorizontalPagedView;->mLastMotionX:F

    sub-float v1, v2, v4

    .line 121
    .local v1, "offsetX":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 123
    iput v3, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    .line 124
    iget-object v4, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    float-to-int v5, v1

    invoke-virtual {v4, v5}, Lnubia/widget/HorizontalPagedViewScrollHelper;->startMove(I)V

    goto :goto_0

    .line 132
    .end local v1    # "offsetX":F
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnubia/widget/HorizontalPagedViewScrollHelper;->layout(ZIIII)V

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 78
    iget-object v2, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v2, p1, p2}, Lnubia/widget/HorizontalPagedViewScrollHelper;->measureHeight(II)I

    move-result v0

    .line 80
    .local v0, "mHeight":I
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedView;->measureWidth(I)I

    move-result v1

    .line 84
    .local v1, "mWidth":I
    invoke-virtual {p0, v1, v0}, Lnubia/widget/HorizontalPagedView;->setMeasuredDimension(II)V

    .line 86
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 151
    iget-boolean v5, p0, Lnubia/widget/HorizontalPagedView;->mIsLocked:Z

    if-eqz v5, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v7

    .line 155
    :cond_1
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedView;->AddMovement(Landroid/view/MotionEvent;)V

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 158
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 160
    .local v4, "x":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 162
    :pswitch_0
    iget v5, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    if-nez v5, :cond_0

    .line 164
    iput v4, p0, Lnubia/widget/HorizontalPagedView;->mLastMotionX:F

    goto :goto_0

    .line 168
    :pswitch_1
    iget v5, p0, Lnubia/widget/HorizontalPagedView;->mLastMotionX:F

    sub-float v1, v4, v5

    .line 170
    .local v1, "offsetX":F
    iget v5, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    if-ne v5, v7, :cond_2

    .line 172
    iput v4, p0, Lnubia/widget/HorizontalPagedView;->mLastMotionX:F

    .line 174
    iget-object v5, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    float-to-int v6, v1

    invoke-virtual {v5, v6}, Lnubia/widget/HorizontalPagedViewScrollHelper;->moveView(I)V

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v5}, Lnubia/widget/HorizontalPagedViewScrollHelper;->pageSize()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 179
    iput v7, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    .line 180
    iget-object v5, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    float-to-int v6, v1

    invoke-virtual {v5, v6}, Lnubia/widget/HorizontalPagedViewScrollHelper;->startMove(I)V

    goto :goto_0

    .line 185
    .end local v1    # "offsetX":F
    :pswitch_2
    iget v5, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    if-ne v5, v7, :cond_0

    .line 186
    const/4 v5, 0x2

    iput v5, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    .line 187
    iget-object v2, p0, Lnubia/widget/HorizontalPagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 189
    .local v2, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    iget v6, p0, Lnubia/widget/HorizontalPagedView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 191
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 193
    .local v3, "velocityX":I
    invoke-direct {p0}, Lnubia/widget/HorizontalPagedView;->ReleaseMovement()V

    .line 195
    iget-object v5, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v5, v3}, Lnubia/widget/HorizontalPagedViewScrollHelper;->snapToFitView(I)V

    .line 196
    iget-object v6, p0, Lnubia/widget/HorizontalPagedView;->mIndicatorHelper:Lnubia/widget/HorizontalPagedView$IndicatorHelper;

    iget-object v5, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v5}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->setCurrentPage(I)V

    .line 199
    const/4 v5, 0x0

    iput v5, p0, Lnubia/widget/HorizontalPagedView;->mTouchState:I

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->removeAllViews()V

    .line 229
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 218
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0, p0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->setAdapter(Landroid/view/ViewGroup;Landroid/widget/ListAdapter;)V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/HorizontalPagedView;->mCurrentPageIndex:I

    .line 220
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mIndicatorHelper:Lnubia/widget/HorizontalPagedView$IndicatorHelper;

    iget-object v1, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->pageSize()I

    move-result v1

    iget v2, p0, Lnubia/widget/HorizontalPagedView;->mCurrentPageIndex:I

    invoke-virtual {v0, v1, v2}, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->setPageCount(II)V

    .line 222
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedView;->requestLayout()V

    .line 223
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1
    .param p1, "choiceMode"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->setChoiceMode(I)V

    .line 245
    return-void
.end method

.method public setIndicator(Lnubia/widget/HorizontalPageIndicatorCallback;)V
    .locals 1
    .param p1, "callback"    # Lnubia/widget/HorizontalPageIndicatorCallback;

    .prologue
    .line 232
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mIndicatorHelper:Lnubia/widget/HorizontalPagedView$IndicatorHelper;

    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedView$IndicatorHelper;->setIndicator(Lnubia/widget/HorizontalPageIndicatorCallback;)V

    .line 233
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    .line 248
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->setItemChecked(IZ)V

    .line 249
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 236
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 237
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 240
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 241
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v1, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->getItemPage(I)I

    move-result v0

    .line 257
    .local v0, "nPage":I
    iget-object v1, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v1, v0, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->setSelection(II)V

    .line 259
    iget-object v1, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v1, v0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->snapToPage(I)V

    .line 260
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lnubia/widget/HorizontalPagedView;->mScroller:Lnubia/widget/HorizontalPagedViewScrollHelper;

    iget-object v1, p0, Lnubia/widget/HorizontalPagedView;->mAdapter:Lnubia/widget/HorizontalPagedViewAdapterHelper;

    invoke-virtual {v1, p1}, Lnubia/widget/HorizontalPagedViewAdapterHelper;->getItemPage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->snapToPage(I)V

    .line 264
    return-void
.end method
