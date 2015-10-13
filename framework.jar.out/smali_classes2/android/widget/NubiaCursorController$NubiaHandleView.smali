.class abstract Landroid/widget/NubiaCursorController$NubiaHandleView;
.super Landroid/view/View;
.source "NubiaCursorController.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NubiaCursorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NubiaHandleView"
.end annotation


# static fields
.field public static final HANDLE_END:I = 0x2

.field public static final HANDLE_INSERT:I = 0x0

.field public static final HANDLE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field static final TAG:Ljava/lang/String; = "NubiaCursorController"

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field protected final mContainer:Landroid/widget/PopupWindow;

.field protected mContainerX:I

.field protected mContainerY:I

.field private mCursorController:Landroid/widget/NubiaCursorController;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableMark:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mEditor:Landroid/widget/Editor;

.field protected mHandleNoShadowHeight:I

.field protected mHandleNoShadowMinHeight:I

.field private mHandleRange:I

.field protected mHandleTypeOffset:I

.field protected mHotspotX:I

.field protected mIdealVerticalOffset:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field protected mLineHeight:I

.field protected mMarkHeightMatchHandleHeight:I

.field protected mMinHandleRatio:F

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field protected mRatio:F

.field protected mTextView:Landroid/widget/TextView;

.field protected mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private mType:I

.field final synthetic this$0:Landroid/widget/NubiaCursorController;


# direct methods
.method public constructor <init>(Landroid/widget/NubiaCursorController;Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p2, "editor"    # Landroid/widget/Editor;
    .param p3, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 808
    iput-object p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->this$0:Landroid/widget/NubiaCursorController;

    .line 809
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 790
    iput v6, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLineHeight:I

    .line 792
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMinHandleRatio:F

    .line 793
    iput v6, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    .line 794
    iput-boolean v7, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    .line 797
    const/4 v3, -0x1

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    .line 798
    iput v6, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    .line 799
    new-array v3, v4, [I

    iput-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsets:[I

    .line 800
    new-array v3, v4, [J

    iput-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    .line 801
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    .line 810
    iput-object p2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    .line 811
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    .line 812
    invoke-virtual {p2}, Landroid/widget/Editor;->textview()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 813
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleRange:I

    .line 814
    new-instance v3, Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v3, v1, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 815
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 816
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 817
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 818
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 819
    iput-object p3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 820
    iput-object p4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 821
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x302010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    .line 822
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 824
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    const/16 v3, 0xfc

    const v4, 0x3090004

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 827
    .local v0, "appThemeColor":I
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 828
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableMark:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0xf2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 829
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 831
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    .line 832
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowMinHeight:I

    .line 833
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3080032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMarkHeightMatchHandleHeight:I

    .line 834
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowMinHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mMinHandleRatio:F

    .line 835
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateDrawable()V

    .line 836
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 839
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    .line 840
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 841
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 842
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    .line 843
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 846
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 847
    .local v4, "now":J
    const/4 v0, 0x0

    .line 848
    .local v0, "i":I
    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    .line 849
    .local v2, "index":I
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 850
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 851
    add-int/lit8 v0, v0, 0x1

    .line 852
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 855
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 857
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 859
    :cond_1
    return-void
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 862
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mNumberPreviousOffsets:I

    .line 863
    invoke-direct {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->addPositionToTouchUpFilter(I)V

    .line 864
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    .line 868
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 869
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onDetached()V

    .line 870
    return-void
.end method

.method public distance(FF)F
    .locals 2
    .param p1, "xpos"    # F
    .param p2, "ypos"    # F

    .prologue
    .line 873
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method protected abstract getCurrentCursorOffset()I
.end method

.method public getHandleNoShadowRealHeight()I
    .locals 2

    .prologue
    .line 879
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mRatio:F

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleNoShadowHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public abstract getHotspotLocationOnScreen([I)V
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->dismiss()V

    .line 887
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p0}, Landroid/widget/Editor;->removePositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 888
    return-void
.end method

.method public inRecRange(FF)Z
    .locals 5
    .param p1, "xTouch"    # F
    .param p2, "yTouch"    # F

    .prologue
    .line 891
    iget-object v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 892
    .local v0, "height":I
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int v1, v3, v4

    .line 893
    .local v1, "x":I
    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    div-int/lit8 v4, v0, 0x2

    add-int v2, v3, v4

    .line 894
    .local v2, "y":I
    int-to-float v3, v1

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleRange:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v3, v2

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invisible()V
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 900
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    return v0
.end method

.method protected isOffsetVisible(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 907
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1}, Landroid/widget/Editor;->isOffsetVisibleWrap(I)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isVisible()Z
    .locals 3

    .prologue
    .line 916
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x1

    .line 922
    :goto_0
    return v0

    .line 919
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    const/4 v0, 0x0

    goto :goto_0

    .line 922
    :cond_1
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor;->isPositionVisibleWrap(II)Z

    move-result v0

    goto :goto_0
.end method

.method protected needShowHandle()Z
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x1

    return v0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 929
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 935
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 981
    :goto_0
    iget-object v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v9, p0, p1}, Landroid/widget/NubiaCursorController;->onHandleTouchEvent(Landroid/widget/NubiaCursorController$NubiaHandleView;Landroid/view/MotionEvent;)Z

    .line 982
    return v11

    .line 937
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/widget/NubiaCursorController$NubiaHandleView;->startTouchUpFilter(I)V

    .line 938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHandleTypeOffset:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    .line 941
    iget-object v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v9}, Landroid/widget/Editor;->getPositionListenerPosition()J

    move-result-wide v4

    .line 942
    .local v4, "packRangeLong":J
    # invokes: Landroid/widget/NubiaCursorController;->extractRangeStartFromLong(J)I
    invoke-static {v4, v5}, Landroid/widget/NubiaCursorController;->access$400(J)I

    move-result v9

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    .line 943
    # invokes: Landroid/widget/NubiaCursorController;->extractRangeEndFromLong(J)I
    invoke-static {v4, v5}, Landroid/widget/NubiaCursorController;->access$500(J)I

    move-result v9

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    .line 944
    iput-boolean v11, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    goto :goto_0

    .line 949
    .end local v4    # "packRangeLong":J
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 950
    .local v7, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 953
    .local v8, "rawY":F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 954
    .local v6, "previousVerticalOffset":F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 956
    .local v0, "currentVerticalOffset":F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    cmpg-float v9, v6, v9

    if-gez v9, :cond_0

    .line 957
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 958
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 963
    :goto_1
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iput v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    .line 965
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    sub-float v9, v7, v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    int-to-float v10, v10

    add-float v1, v9, v10

    .line 966
    .local v1, "newPosX":F
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    sub-float v9, v8, v9

    iget v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchOffsetY:F

    add-float v2, v9, v10

    .line 968
    .local v2, "newPosY":F
    invoke-virtual {p0, v1, v2}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updatePosition(FF)V

    goto :goto_0

    .line 960
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    :cond_0
    iget v9, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 961
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 973
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v6    # "previousVerticalOffset":F
    .end local v7    # "rawX":F
    .end local v8    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->filterOnTouchUp()V

    .line 974
    iput-boolean v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 978
    :pswitch_3
    iput-boolean v10, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 935
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public positionAtCursorOffset(IZ)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 987
    iget-object v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 988
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 990
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    iget v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    if-eq p1, v4, :cond_3

    move v1, v2

    .line 994
    .local v1, "offsetChanged":Z
    :goto_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 995
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateSelection(I)V

    .line 996
    invoke-direct {p0, p1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->addPositionToTouchUpFilter(I)V

    .line 997
    invoke-virtual {p0, p1, v3}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updatePositionXY(IZ)V

    .line 998
    iput p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    .line 999
    iput-boolean v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    goto :goto_0

    .end local v1    # "offsetChanged":Z
    :cond_3
    move v1, v3

    .line 993
    goto :goto_1
.end method

.method public setCursorController(Landroid/widget/NubiaCursorController;)V
    .locals 0
    .param p1, "controller"    # Landroid/widget/NubiaCursorController;

    .prologue
    .line 1004
    iput-object p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mCursorController:Landroid/widget/NubiaCursorController;

    .line 1005
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1008
    iput p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mType:I

    .line 1009
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor;->addPositionListenerSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 1015
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPreviousOffset:I

    .line 1016
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method protected abstract updateContainerSize()V
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 1022
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1023
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1024
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1025
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->updateContainerSize()V

    .line 1026
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mHotspotX:I

    .line 1027
    return-void

    .line 1024
    :cond_0
    iget-object v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1033
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->getCurrentCursorOffset()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Landroid/widget/NubiaCursorController$NubiaHandleView;->positionAtCursorOffset(IZ)V

    .line 1034
    if-nez p3, :cond_0

    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    if-eqz v0, :cond_4

    .line 1035
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 1037
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    if-eq p2, v0, :cond_2

    .line 1038
    :cond_1
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetX:F

    .line 1039
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTouchToWindowOffsetY:F

    .line 1040
    iput p1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentX:I

    .line 1041
    iput p2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mLastParentY:I

    .line 1042
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hasMagnifierController()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1043
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getMagnifierController()Lnubia/widget/TextMagnifierController;

    move-result-object v0

    invoke-virtual {v0}, Lnubia/widget/TextMagnifierController;->onParentChanged()V

    .line 1046
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->onHandleMoved()V

    .line 1048
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1049
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionX:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    .line 1050
    iget v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionY:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    .line 1051
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->needShowHandle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1052
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1053
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1064
    :cond_4
    :goto_0
    iput-boolean v4, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mPositionHasChanged:Z

    .line 1065
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mCursorController:Landroid/widget/NubiaCursorController;

    invoke-virtual {v0}, Landroid/widget/NubiaCursorController;->updatePosition()V

    .line 1066
    return-void

    .line 1055
    :cond_5
    iget-object v0, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerX:I

    iget v3, p0, Landroid/widget/NubiaCursorController$NubiaHandleView;->mContainerY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 1059
    :cond_6
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1060
    invoke-virtual {p0}, Landroid/widget/NubiaCursorController$NubiaHandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updatePositionXY(IZ)V
.end method

.method protected abstract updateSelection(I)V
.end method
