.class public abstract Lnubia/widget/MagnifierController;
.super Ljava/lang/Object;
.source "MagnifierController.java"


# static fields
.field private static final SCALE:F = 1.4f


# instance fields
.field private mAnchorLocation:[I

.field private mClipRect:Landroid/graphics/Rect;

.field private mContainer:Landroid/widget/PopupWindow;

.field private mContext:Landroid/content/Context;

.field private mLTPoint:Landroid/graphics/Point;

.field protected mLongClickX:I

.field protected mLongClickY:I

.field private mMagnifierHeight:I

.field private mMagnifierView:Lnubia/widget/MagnifierView;

.field private mMagnifierWidth:I

.field private mMoveEvent:Landroid/view/MotionEvent;

.field protected mParent:Landroid/view/View;

.field private mScaleMagnifierHeight:I

.field private mScaleMagnifierWidth:I

.field private mScreenSize:[I

.field private mShowing:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    .line 44
    iput-object p1, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierController;->initPopupWindow(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/MagnifierController;)Lnubia/widget/MagnifierView;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/MagnifierController;

    .prologue
    .line 24
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    return-object v0
.end method

.method private hideContainer()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x2

    const v4, 0x3fb33333    # 1.4f

    const/4 v3, 0x0

    .line 50
    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const v2, 0x10102c8

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    .line 52
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 53
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 54
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 56
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    const v1, 0x30e0049

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 57
    new-instance v0, Lnubia/widget/MagnifierView;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-direct {v0, v1}, Lnubia/widget/MagnifierView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    .line 58
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v0}, Lnubia/widget/MagnifierView;->viewWidth()I

    move-result v0

    iput v0, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    .line 60
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v0}, Lnubia/widget/MagnifierView;->viewHeight()I

    move-result v0

    iput v0, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    .line 61
    iget v0, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierWidth:I

    .line 62
    iget v0, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierHeight:I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierWidth:I

    iget v2, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    .line 65
    return-void
.end method

.method public static isMagnifierEnabled(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "anchor"    # Landroid/widget/TextView;

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method private setVisibleScreenSize(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 194
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v7, v5, v6

    .line 195
    iget-object v5, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v6, v5, v8

    .line 196
    const-string v5, "input_method"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 198
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 199
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 200
    .local v1, "location":[I
    iget-object v3, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    .line 201
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 202
    .local v4, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v3, v4

    .line 203
    check-cast v3, Landroid/view/View;

    .line 204
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 207
    iget-object v5, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, v1, v8

    sub-int/2addr v6, v7

    aput v6, v5, v8

    .line 210
    .end local v1    # "location":[I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method private showMagnifier()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->onPreShow()V

    .line 98
    iget v2, p0, Lnubia/widget/MagnifierController;->mLongClickX:I

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    aget v3, v3, v6

    add-int v0, v2, v3

    .line 99
    .local v0, "x":I
    iget v2, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    aget v3, v3, v7

    add-int v1, v2, v3

    .line 100
    .local v1, "y":I
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v3, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 101
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-gez v2, :cond_2

    .line 102
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Point;->offset(II)V

    .line 106
    :cond_0
    :goto_0
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gez v2, :cond_3

    .line 107
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Point;->offset(II)V

    .line 110
    :cond_1
    :goto_1
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4, v8, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 116
    :goto_2
    return-void

    .line 103
    :cond_2
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v6

    if-le v2, v3, :cond_0

    .line 104
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v6

    iget-object v4, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v5, p0, Lnubia/widget/MagnifierController;->mMagnifierWidth:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Point;->offset(II)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v7

    if-le v2, v3, :cond_1

    .line 109
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v7

    iget-object v4, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lnubia/widget/MagnifierController;->mMagnifierHeight:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Point;->offset(II)V

    goto :goto_1

    .line 113
    :cond_4
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    iget-object v4, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lnubia/widget/MagnifierController;->mLTPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method

.method private updatePosition(Z)V
    .locals 7
    .param p1, "isShow"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    iget v2, p0, Lnubia/widget/MagnifierController;->mLongClickX:I

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    aget v3, v3, v5

    add-int v0, v2, v3

    .line 140
    .local v0, "x":I
    iget v2, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    aget v3, v3, v6

    add-int v1, v2, v3

    .line 141
    .local v1, "y":I
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v3, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    iget v4, p0, Lnubia/widget/MagnifierController;->mScaleMagnifierHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 143
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_4

    .line 144
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 148
    :cond_0
    :goto_0
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_5

    .line 149
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 152
    :cond_1
    :goto_1
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMoveEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v2}, Lnubia/widget/MagnifierController;->onUpdatePosition(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v2}, Lnubia/widget/MagnifierView;->notifyUpdateDrawingCache()V

    .line 154
    :cond_2
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lnubia/widget/MagnifierView;->setShowRect(Landroid/graphics/Rect;)V

    .line 155
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    new-instance v3, Lnubia/widget/MagnifierController$1;

    invoke-direct {v3, p0}, Lnubia/widget/MagnifierController$1;-><init>(Lnubia/widget/MagnifierController;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Lnubia/widget/MagnifierView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    if-nez p1, :cond_3

    .line 163
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->showMagnifier()V

    .line 165
    :cond_3
    return-void

    .line 145
    :cond_4
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v5

    if-le v2, v3, :cond_0

    .line 146
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v5

    iget-object v4, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 150
    :cond_5
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v6

    if-le v2, v3, :cond_1

    .line 151
    iget-object v2, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lnubia/widget/MagnifierController;->mScreenSize:[I

    aget v3, v3, v6

    iget-object v4, p0, Lnubia/widget/MagnifierController;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    .line 69
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/MagnifierController;->mMoveEvent:Landroid/view/MotionEvent;

    .line 73
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->hideContainer()V

    .line 74
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mMagnifierView:Lnubia/widget/MagnifierView;

    invoke-virtual {v0}, Lnubia/widget/MagnifierView;->onHide()V

    .line 75
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->onPostHide()V

    .line 76
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    return v0
.end method

.method public abstract onHandleController(Landroid/view/MotionEvent;)V
.end method

.method public onParentChanged()V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->showMagnifier()V

    .line 126
    :cond_0
    return-void
.end method

.method public abstract onPostHide()V
.end method

.method public abstract onPreShow()V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierController;->mLongClickX:I

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lnubia/widget/MagnifierController;->mLongClickY:I

    .line 170
    iput-object p1, p0, Lnubia/widget/MagnifierController;->mMoveEvent:Landroid/view/MotionEvent;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "result":Z
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    :goto_0
    invoke-virtual {p0, p1}, Lnubia/widget/MagnifierController;->onHandleController(Landroid/view/MotionEvent;)V

    .line 189
    :cond_0
    return v0

    .line 175
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lnubia/widget/MagnifierController;->updatePosition(Z)V

    .line 176
    const/4 v0, 0x1

    .line 177
    goto :goto_0

    .line 179
    :pswitch_1
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->hide()V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lnubia/widget/MagnifierController;->hide()V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public abstract onUpdatePosition(Landroid/view/MotionEvent;)Z
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    iput-boolean v2, p0, Lnubia/widget/MagnifierController;->mShowing:Z

    .line 130
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/MagnifierController;->setVisibleScreenSize(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lnubia/widget/MagnifierController;->mParent:Landroid/view/View;

    iget-object v1, p0, Lnubia/widget/MagnifierController;->mAnchorLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 134
    invoke-direct {p0, v2}, Lnubia/widget/MagnifierController;->updatePosition(Z)V

    .line 135
    invoke-direct {p0}, Lnubia/widget/MagnifierController;->showMagnifier()V

    .line 136
    return-void
.end method
