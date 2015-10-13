.class Landroid/widget/NubiaCursorController$InsertionHandleView;
.super Landroid/widget/NubiaCursorController$NubiaHandleView;
.source "NubiaCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsertionHandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xbb8

.field protected static final DELAY_WHEN_HANDLE_INVISIBLE:I = 0xc8


# instance fields
.field private mHiderRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "editor"    # Landroid/widget/Editor;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 397
    iput-object p1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 398
    invoke-direct {p0, p1, p2, p3, p3}, Landroid/widget/NubiaCursorController$NubiaHandleView;-><init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method private removeHiderCallback()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHiderRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHiderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 404
    :cond_0
    return-void
.end method


# virtual methods
.method protected getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getHotspotLocationOnScreen([I)V
    .locals 3
    .param p1, "outLocation"    # [I

    .prologue
    .line 413
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 414
    const/4 v0, 0x1

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mContainerY:I

    iget v2, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mLineHeight:I

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 415
    return-void
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected hideAfterDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 423
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 424
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHiderRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Landroid/widget/NubiaCursorController$InsertionHandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/NubiaCursorController$InsertionHandleView$1;-><init>(Landroid/widget/NubiaCursorController$InsertionHandleView;)V

    iput-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHiderRunnable:Ljava/lang/Runnable;

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHiderRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 432
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 435
    invoke-super {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onDetached()V

    .line 436
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 437
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 440
    iget-object v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 441
    .local v2, "markWidth":I
    iget v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRight:I

    iget v5, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mLeft:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    div-int/lit8 v1, v4, 0x2

    .line 442
    .local v1, "left":I
    add-int v3, v1, v2

    .line 443
    .local v3, "right":I
    iget v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mBottom:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    .line 444
    .local v0, "bottom":I
    iget-object v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v8, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 445
    iget-object v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 446
    iget-object v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mBottom:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRight:I

    iget v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mBottom:I

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 448
    iget-object v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 449
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onHandleMoved()V

    .line 453
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$InsertionHandleView;->removeHiderCallback()V

    .line 454
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 468
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 463
    :pswitch_1
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Landroid/widget/NubiaCursorController$InsertionHandleView;->hideAfterDelay(I)V

    goto :goto_0

    .line 457
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public show()V
    .locals 0

    .prologue
    .line 472
    invoke-super {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->show()V

    .line 473
    return-void
.end method

.method protected updateContainerSize()V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 477
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    .line 478
    .local v0, "lineheight":I
    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mLineHeight:I

    if-ne v1, v0, :cond_0

    .line 487
    :goto_0
    return-void

    .line 479
    :cond_0
    iput v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mLineHeight:I

    .line 480
    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mMinHandleRatio:F

    iget v2, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mMarkHeightMatchHandleHeight:I

    div-int v2, v0, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    .line 481
    iget v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iput v3, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    .line 482
    :cond_1
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 483
    iget-object v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mContainer:Landroid/widget/PopupWindow;

    int-to-float v2, v0

    iget-object v3, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mRatio:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 484
    iput v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHandleTypeOffset:I

    .line 485
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTouchOffsetY:F

    .line 486
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/NubiaCursorController$InsertionHandleView;->positionAtCursorOffset(IZ)V

    .line 492
    return-void
.end method

.method protected updatePositionXY(IZ)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "hasPositionChanged"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 496
    iget-object v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 497
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 498
    .local v1, "line":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mHotspotX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionX:I

    .line 499
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    iput v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionY:I

    .line 500
    iget v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionX:I

    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionX:I

    .line 501
    iget v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionY:I

    iget-object v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionY:I

    .line 502
    if-eqz p2, :cond_2

    .line 503
    new-array v2, v10, [I

    .line 504
    .local v2, "location":[I
    iget-object v4, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    .line 505
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 506
    .local v5, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 507
    check-cast v4, Landroid/view/View;

    .line 508
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    goto :goto_0

    .line 510
    :cond_0
    iget-object v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 512
    new-array v3, v10, [I

    .line 513
    .local v3, "locationViewParent":[I
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 515
    if-eqz v5, :cond_1

    .line 516
    aget v6, v2, v8

    aget v7, v3, v8

    sub-int/2addr v6, v7

    aput v6, v2, v8

    .line 517
    aget v6, v2, v9

    aget v7, v3, v9

    sub-int/2addr v6, v7

    aput v6, v2, v9

    .line 520
    :cond_1
    aget v6, v2, v8

    iget v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionX:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mContainerX:I

    .line 521
    aget v6, v2, v9

    iget v7, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mPositionY:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mContainerY:I

    .line 523
    .end local v2    # "location":[I
    .end local v3    # "locationViewParent":[I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewParent":Landroid/view/ViewParent;
    :cond_2
    return-void
.end method

.method protected updateSelection(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/NubiaCursorController$InsertionHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, p1}, Landroid/widget/Editor;->setTextSelectionWrap(II)V

    .line 528
    return-void
.end method
