.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$FlymeInjector;,
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field public static final LAYOUT_MODE_AUTO:I = 0x1

.field public static final LAYOUT_MODE_CENTER:I = 0x2

.field public static final LAYOUT_MODE_CENTER_IN_SCREEN:I = 0x3

.field public static final LAYOUT_MODE_DEFAULT:I = 0x0

.field public static final LAYOUT_MODE_RIGHT:I = 0x4

.field public static final LAYOUT_MODE_RIGHT_IN_SCREEN:I = 0x5

.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private isNubiaMorePopup:Z

.field public mMzHelper:Landroid/widget/MzPopupWindowHelper;

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRelativeX:I

.field private mAnchorRelativeY:I

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mElevation:F

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSmartShowContext:Landroid/content/ISmartShowContext;

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, #android:attr@state_above_anchor#t

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 282
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, #android:attr@popupWindowStyle#t

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->isNubiaMorePopup:Z

    .line 108
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 109
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 110
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 111
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 112
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 113
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 116
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 117
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 134
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 135
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 136
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 147
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 150
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 152
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 160
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 215
    sget-boolean v7, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v7, :cond_0

    .line 216
    invoke-static {}, Landroid/content/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mSmartShowContext:Landroid/content/ISmartShowContext;

    .line 220
    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 221
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 223
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 227
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 228
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 230
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 231
    .local v2, "animStyle":I
    const v7, #android:style@Animation.PopupWindow#t

    if-ne v2, v7, :cond_1

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_1
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 243
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_3

    .line 244
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 247
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 251
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 252
    .local v5, "count":I
    const/4 v4, -0x1

    .line 253
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_2

    .line 254
    if-eq v6, v1, :cond_4

    .line 255
    move v4, v6

    .line 262
    :cond_2
    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    .line 263
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 264
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p0 .. p0}, Landroid/widget/PopupWindow$FlymeInjector;->initExtFlymeFields(Landroid/widget/PopupWindow;)V

    .line 272
    return-void

    .line 253
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 266
    :cond_5
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 325
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->isNubiaMorePopup:Z

    .line 108
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 109
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 110
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 111
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 112
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 113
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 116
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 117
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 134
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 135
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 147
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 150
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 152
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 160
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 340
    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 342
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-static/range {p0 .. p0}, Landroid/widget/PopupWindow$FlymeInjector;->initExtFlymeFields(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, #android:style@Animation.DropDownUp#t

    :goto_0
    return v0

    :cond_0
    const v0, #android:style@Animation.DropDownDown#t

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1132
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1140
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1141
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1143
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1144
    or-int/lit8 p1, p1, 0x8

    .line 1145
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1146
    or-int/2addr p1, v2

    .line 1151
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1152
    or-int/lit8 p1, p1, 0x10

    .line 1154
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1155
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1157
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1158
    or-int/lit16 p1, p1, 0x200

    .line 1160
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1161
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1163
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1164
    or-int/lit16 p1, p1, 0x100

    .line 1166
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1167
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1169
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1170
    or-int/lit8 p1, p1, 0x20

    .line 1172
    :cond_8
    return p1

    .line 1148
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1149
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1109
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1114
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1115
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1116
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1117
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1118
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1122
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1123
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1124
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1125
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1128
    return-object v0

    .line 1120
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->mzFindDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v6

    return v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .local v1, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .local v2, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v14, :cond_0

    .line 1208
    sub-int p4, p4, v1

    .line 1211
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1213
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1215
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v14

    move/from16 v0, p5

    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    and-int/lit8 v5, v14, 0x7

    .line 1217
    .local v5, "hgrav":I
    const/4 v14, 0x5

    if-ne v5, v14, :cond_1

    .line 1220
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    sub-int/2addr v15, v2

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1223
    :cond_1
    const/4 v6, 0x0

    .line 1225
    .local v6, "onTop":Z
    const/16 v14, 0x33

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1227
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1228
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1229
    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v11, v14, p4

    .line 1232
    .local v11, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1233
    .local v10, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v14, v11

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v14, v15, :cond_2

    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v14, v15

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    if-lez v14, :cond_5

    .line 1238
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v14, :cond_3

    .line 1239
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 1240
    .local v12, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    .line 1241
    .local v13, "scrollY":I
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v14, v12

    add-int v14, v14, p3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v15, v13

    add-int/2addr v15, v1

    add-int v15, v15, p4

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1243
    .local v8, "r":Landroid/graphics/Rect;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1248
    .end local v8    # "r":Landroid/graphics/Rect;
    .end local v12    # "scrollX":I
    .end local v13    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1250
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1253
    const/4 v14, 0x5

    if-ne v5, v14, :cond_4

    .line 1254
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    sub-int/2addr v15, v2

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1258
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1259
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    sub-int/2addr v14, v1

    sub-int v14, v14, p4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int v15, v15, p4

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v14, v15, :cond_9

    const/4 v6, 0x1

    .line 1261
    :goto_0
    if-eqz v6, :cond_a

    .line 1262
    const/16 v14, 0x53

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1263
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1269
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v14, :cond_8

    .line 1270
    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v14, v15

    .line 1271
    .local v4, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v9, v14, v15

    .line 1272
    .local v9, "right":I
    if-le v9, v4, :cond_6

    .line 1273
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v15, v9, v4

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1277
    :cond_6
    sget-boolean v14, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v14, :cond_b

    .line 1278
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v14, :cond_7

    .line 1279
    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1280
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1290
    :cond_7
    :goto_2
    if-eqz v6, :cond_d

    .line 1293
    sget-boolean v14, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v14, :cond_c

    .line 1294
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    iget v15, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int v7, v14, v15

    .line 1300
    .local v7, "popupTop":I
    :goto_3
    if-gez v7, :cond_8

    .line 1301
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v14, v7

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1314
    .end local v4    # "displayFrameWidth":I
    .end local v7    # "popupTop":I
    .end local v9    # "right":I
    :cond_8
    :goto_4
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v15, 0x10000000

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1317
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v14, v15

    div-int/lit8 v15, v1, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/PopupWindow;->mAnchorRelativeX:I

    .line 1318
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v14, v15

    div-int/lit8 v15, v2, 0x2

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/PopupWindow;->mAnchorRelativeY:I

    .line 1320
    return v6

    .line 1259
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1265
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    .line 1283
    .restart local v4    # "displayFrameWidth":I
    .restart local v9    # "right":I
    :cond_b
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    if-ge v14, v15, :cond_7

    .line 1284
    iget v14, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1285
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_2

    .line 1296
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int v7, v14, v15

    .restart local v7    # "popupTop":I
    goto :goto_3

    .line 1305
    .end local v7    # "popupTop":I
    :cond_d
    sget-boolean v14, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v14, :cond_e

    .line 1306
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4

    .line 1308
    :cond_e
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1082
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1085
    :cond_0
    invoke-static/range {p0 .. p1}, Landroid/widget/PopupWindow$FlymeInjector;->unChangeNavigationBar(Landroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1086
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1087
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1088
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1039
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1040
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1044
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1045
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1046
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1047
    .local v0, "height":I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1049
    const/4 v0, -0x2

    .line 1054
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1055
    .local v3, "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1058
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow$PopupViewContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1059
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1066
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget v5, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setElevation(F)V

    .line 1067
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1069
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1070
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1071
    return-void

    .line 1063
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1067
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1688
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1690
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1691
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1692
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1693
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1696
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1697
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1698
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 1699
    return-void
.end method

.method private resetWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1785
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->isNubiaMorePopup:Z

    if-eqz v1, :cond_1

    .line 1786
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1787
    .local v0, "v":I
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->isFullScreenWindow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1788
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1790
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->isImmersedStatusBar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1791
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1794
    .end local v0    # "v":I
    :cond_1
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1091
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1092
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1093
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1097
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1675
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1676
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1677
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1678
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1680
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1681
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1682
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1684
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1685
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1620
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1625
    .local v15, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 1627
    .local v14, "needsUpdate":Z
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_8

    .line 1628
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1636
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1638
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1639
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_9

    .line 1640
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1644
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_a

    .line 1645
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1651
    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v16, v0

    .line 1652
    .local v16, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    .line 1654
    .local v17, "y":I
    if-eqz p2, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1655
    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1661
    :goto_5
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_c

    :cond_6
    const/4 v13, 0x1

    :goto_6
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1625
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "needsUpdate":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 1629
    .restart local v14    # "needsUpdate":Z
    :cond_8
    if-eqz v14, :cond_4

    .line 1631
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1632
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1633
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto :goto_2

    .line 1642
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1647
    :cond_a
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1657
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1661
    :cond_c
    const/4 v13, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 995
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 996
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 998
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1003
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 1004
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1009
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1420
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1423
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1426
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1428
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1431
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1433
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1438
    :cond_1
    return-void

    .line 1428
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1429
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1431
    :cond_2
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1433
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1434
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 399
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 12
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v11, 0x1

    .line 1370
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1371
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1373
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1374
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1376
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 1377
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_1

    .line 1379
    const/4 v2, 0x0

    .line 1380
    .local v2, "bounds":Landroid/graphics/Rect;
    sget-boolean v8, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v8, :cond_0

    .line 1381
    iget-object v8, p0, Landroid/widget/PopupWindow;->mSmartShowContext:Landroid/content/ISmartShowContext;

    invoke-interface {v8}, Landroid/content/ISmartShowContext;->getStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1383
    :cond_0
    if-eqz v2, :cond_3

    .line 1384
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1393
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    sget-boolean v8, Landroid/util/PowerMoConfig;->WITHOUT_ALL:Z

    if-nez v8, :cond_4

    if-eqz p3, :cond_4

    .line 1394
    iget v8, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    aget v9, v0, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    sub-int v4, v8, p2

    .line 1400
    .local v4, "distanceToBottom":I
    :goto_1
    aget v8, v0, v11

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v5, v8, p2

    .line 1403
    .local v5, "distanceToTop":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1404
    .local v7, "returnedHeight":I
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 1405
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1406
    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 1409
    :cond_2
    return v7

    .line 1386
    .end local v4    # "distanceToBottom":I
    .end local v5    # "distanceToTop":I
    .end local v7    # "returnedHeight":I
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1387
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 1396
    .end local v2    # "bounds":Landroid/graphics/Rect;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_4
    invoke-static {p0, p1, p3, v3}, Landroid/widget/PopupWindow$FlymeInjector;->computeDisplayFrameBottom(Landroid/widget/PopupWindow;Landroid/view/View;ZLandroid/graphics/Rect;)I

    move-result v1

    aget v8, v0, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v8, v1, v8

    sub-int v4, v8, p2

    .restart local v4    # "distanceToBottom":I
    goto :goto_1
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isFullScreenWindow(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1798
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImmersedStatusBar(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 1803
    const/high16 v0, 0x4000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 858
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 683
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 684
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 684
    goto :goto_0

    .line 686
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 672
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 673
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 432
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 433
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 370
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 371
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 661
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 662
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 663
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 651
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 652
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 458
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 464
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 468
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 390
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 391
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 509
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 510
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 823
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 824
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 415
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-static/range {p0 .. p1}, Landroid/widget/PopupWindow$FlymeInjector;->setInputMethodMode(Landroid/widget/PopupWindow;I)I

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 726
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 727
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 742
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 743
    return-void
.end method

.method public setNubiaMorePopup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1810
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->isNubiaMorePopup:Z

    .line 1811
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1446
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1447
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 622
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 623
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 549
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 550
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 703
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 704
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 478
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 479
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 770
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 771
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 590
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 849
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 850
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 796
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 797
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 798
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 753
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 754
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 932
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 933
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 952
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 953
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 973
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 979
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 980
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 982
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 983
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 985
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 987
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 988
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 989
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 991
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 891
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 897
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 898
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 900
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 901
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 903
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 904
    if-nez p2, :cond_2

    .line 905
    const p2, 0x800033

    .line 907
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 908
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 909
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 910
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 911
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 913
    :cond_4
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 914
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->resetWindow(Landroid/view/WindowManager$LayoutParams;)V

    .line 917
    :cond_5
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 876
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 877
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1457
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1464
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1466
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1467
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1468
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1469
    const/4 v3, 0x1

    .line 1472
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1473
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1474
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1475
    const/4 v3, 0x1

    .line 1478
    :cond_3
    if-eqz v3, :cond_0

    .line 1479
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1480
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1493
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1495
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1496
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1510
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1511
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1527
    if-eq p3, v7, :cond_0

    .line 1528
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1529
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1532
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1533
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1534
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1537
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1583
    :cond_2
    :goto_0
    return-void

    .line 1541
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1543
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1545
    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1546
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1547
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1548
    const/4 v5, 0x1

    .line 1551
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1552
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x1

    :cond_5
    invoke-direct {p0, v4, v5}, Landroid/widget/PopupWindow;->mzUpdate(Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v5, 0x1

    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v5, 0x1

    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1574
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1575
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1576
    const/4 v5, 0x1

    .line 1579
    :cond_9
    if-eqz v5, :cond_2

    .line 1580
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1581
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1545
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_a
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1551
    .restart local v1    # "finalWidth":I
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1595
    const/4 v5, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1596
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1614
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1615
    return-void
.end method

.method private mzFindDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 30
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    .local v17, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    .local v18, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v3, :cond_0

    sub-int p4, p4, v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v3, v3, v17

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    move/from16 v0, p5

    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v22, v3, 0x7

    .local v22, "hgrav":I
    const/4 v3, 0x5

    move/from16 v0, v22

    if-ne v0, v3, :cond_1

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    sub-int v4, v4, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    const/4 v9, 0x0

    .local v9, "onTop":Z
    const/16 v3, 0x33

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .local v8, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/widget/MzPopupWindowHelper;->adjustDisplayFrameBottom(Landroid/view/View;I)I

    move-result v3

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v3, v3, v17

    add-int v27, v3, p4

    .local v27, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v26

    .local v26, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int v3, v3, v27

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v3, v4

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v28

    .local v28, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v29

    .local v29, "scrollY":I
    new-instance v24, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int v3, v3, v28

    add-int v3, v3, p3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int v4, v4, v29

    add-int v4, v4, v17

    add-int v4, v4, p4

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v24, "r":Landroid/graphics/Rect;
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .end local v24    # "r":Landroid/graphics/Rect;
    .end local v28    # "scrollX":I
    .end local v29    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v3, v3, v17

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x5

    move/from16 v0, v22

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    sub-int v4, v4, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int v3, v3, v27

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_5

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    sub-int v3, v3, v17

    sub-int v3, v3, p4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v4, v4, p4

    iget v5, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_c

    const/4 v9, 0x1

    :cond_5
    :goto_0
    if-eqz v9, :cond_e

    const/16 v3, 0x53

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v6

    if-le v3, v6, :cond_d

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v3

    :goto_1
    aput v3, v4, v5

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Landroid/widget/MzPopupWindowHelper;->meansurePopupPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Z[I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object v11, v8

    move-object/from16 v12, p2

    move v13, v9

    move/from16 v14, p4

    invoke-virtual/range {v10 .. v15}, Landroid/widget/MzPopupWindowHelper;->clipToScreenWithoutBackGround(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[I)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v16, v0

    move-object v11, v8

    move-object/from16 v12, p2

    move v13, v9

    move/from16 v14, p4

    invoke-virtual/range {v10 .. v16}, Landroid/widget/MzPopupWindowHelper;->clipToScreenWithDeviceDefaultTheme(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;ZI[IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_7
    const/16 v21, 0x1

    .local v21, "hasAdjusted":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v3, :cond_a

    if-nez v21, :cond_a

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v19, v3, v4

    .local v19, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v25, v3, v4

    .local v25, "right":I
    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, v25, v19

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_8
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_9

    iget v3, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, v19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_9
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v3, v3, p4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int v23, v3, v4

    .local v23, "popupTop":I
    if-gez v23, :cond_a

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v3, v3, v23

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .end local v19    # "displayFrameWidth":I
    .end local v23    # "popupTop":I
    .end local v25    # "right":I
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/PopupWindow;->mHeightMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v20

    .local v20, "h":I
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v3, v3, v20

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_b

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .end local v20    # "h":I
    :cond_b
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v4, 0x10000000

    or-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v3, v4

    div-int/lit8 v4, v17, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/PopupWindow;->mAnchorRelativeX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v4

    div-int/lit8 v4, v18, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/PopupWindow;->mAnchorRelativeY:I

    return v9

    .end local v21    # "hasAdjusted":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v6, 0x1

    aget v3, v3, v6

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v3, v3, v17

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_2

    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_3

    .restart local v19    # "displayFrameWidth":I
    .restart local v21    # "hasAdjusted":Z
    .restart local v25    # "right":I
    :cond_10
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_4
.end method

.method private mzUpdate(Landroid/view/WindowManager$LayoutParams;Z)Z
    .locals 3
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "update"    # Z

    .prologue
    move v0, p2

    .local v0, "flag":Z
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public adjustWindowPositionForMz(Z)V
    .locals 1
    .param p1, "adjust"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {v0, p1}, Landroid/widget/MzPopupWindowHelper;->adjustWindowPositionForMz(Z)V

    return-void
.end method

.method public getPopupHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    return v0
.end method

.method public getPopupView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method mzGetFieldAnchor()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method mzGetFieldContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setLayoutMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {v0, p1}, Landroid/widget/MzPopupWindowHelper;->setLayoutMode(I)V

    return-void
.end method

.method public setMzClippingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/widget/PopupWindow;->mMzHelper:Landroid/widget/MzPopupWindowHelper;

    invoke-virtual {v0, p1}, Landroid/widget/MzPopupWindowHelper;->setMzClippingEnabled(Z)V

    return-void
.end method
