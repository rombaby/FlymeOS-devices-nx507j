.class public Lnubia/widget/NubiaMorePopup;
.super Ljava/lang/Object;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/NubiaMorePopup$MyAdapter;,
        Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;,
        Lnubia/widget/NubiaMorePopup$OnClickListener;
    }
.end annotation


# static fields
.field private static final ENTER_DELAY_TIME:J = 0xc8L

.field private static final ENTER_PART_DURATION_TIME:J = 0x96L

.field private static final ENTER_TOTAL_DURATION_TIME:J = 0xfaL

.field private static final EXIT_DELAY_TIME:J = 0x32L

.field private static final EXIT_PART_DURATION_TIME:J = 0x64L

.field private static final EXIT_TOTAL_DURATION_TIME:J = 0xc8L


# instance fields
.field private mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

.field private mBackgroundView:Landroid/view/View;

.field private mBottomDivider:Landroid/view/View;

.field private mBottomImageView:Landroid/widget/ImageView;

.field private mBottomMarginView:Landroid/view/View;

.field private mBottomView:Landroid/widget/LinearLayout;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownList:Landroid/widget/ListView;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field final mHandler:Landroid/os/Handler;

.field private mIsOnTop:Z

.field private mItemEnabled:[Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLastClickTime:J

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mMockStatusBarView:Landroid/view/View;

.field private mMoreImageView:Landroid/widget/ImageView;

.field private mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

.field private mParams:[I

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupPanel:Landroid/widget/LinearLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTopDivider:Landroid/view/View;

.field private mTopImageView:Landroid/widget/ImageView;

.field private mTopMarginView:Landroid/view/View;

.field private mTopView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, v0, v0}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lnubia/widget/NubiaMorePopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v3, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lnubia/widget/NubiaMorePopup$1;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaMorePopup$1;-><init>(Lnubia/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lnubia/widget/NubiaMorePopup$2;

    invoke-direct {v0, p0}, Lnubia/widget/NubiaMorePopup$2;-><init>(Lnubia/widget/NubiaMorePopup;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    .line 89
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnubia/widget/NubiaMorePopup;->mLastClickTime:J

    .line 91
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    .line 92
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 94
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 95
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 96
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 97
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 99
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 101
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setNubiaMorePopup(Z)V

    .line 102
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    .line 103
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lnubia/widget/NubiaMorePopup;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 34
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->startEntryAnimation()V

    return-void
.end method

.method static synthetic access$100(Lnubia/widget/NubiaMorePopup;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 34
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lnubia/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method static synthetic access$400(Lnubia/widget/NubiaMorePopup;)[Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    return-object v0
.end method

.method static synthetic access$500(Lnubia/widget/NubiaMorePopup;)Lnubia/widget/NubiaMorePopup$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lnubia/widget/NubiaMorePopup;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lnubia/widget/NubiaMorePopup;

    .prologue
    .line 34
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buildImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 382
    .local v0, "img":Landroid/widget/ImageView;
    const v1, 0x30200e5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    const v1, 0x30200de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 384
    return-object v0
.end method

.method private createBottomView(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v8, 0x3080039

    const/4 v10, 0x1

    const v9, 0x308003b

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 342
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 343
    .local v6, "textView":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 344
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 347
    .local v5, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 348
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 355
    .local v0, "bottomPara":Landroid/widget/LinearLayout$LayoutParams;
    const v7, 0x3080066

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 357
    const v7, 0x308003d

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 360
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 361
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_0

    .line 362
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 364
    :cond_0
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v1, Landroid/widget/TextView;

    const/4 v7, 0x0

    const v8, 0x1010360

    invoke-direct {v1, p1, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 368
    .local v1, "more":Landroid/widget/TextView;
    const v7, 0x30c006e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 371
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 374
    .local v2, "morePara":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 375
    const v7, 0x3080068

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 377
    invoke-virtual {v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void
.end method

.method private createContainer()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaMorePopup;->createTopView(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lnubia/widget/NubiaMorePopup;->createBottomView(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createListView()V

    .line 210
    return-void
.end method

.method private createContentView()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lnubia/widget/NubiaMorePopup;->getPopupWindowInfo(Landroid/view/View;I)Z

    move-result v1

    iput-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    .line 172
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->initView()V

    .line 174
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createContainer()V

    .line 175
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->createPopupWindow(Z)V

    .line 180
    :goto_0
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x50

    .line 181
    .local v0, "gravity":I
    :goto_1
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 182
    return-void

    .line 177
    .end local v0    # "gravity":I
    :cond_0
    iget-boolean v1, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    goto :goto_0

    .line 180
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method private createListView()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lnubia/widget/NubiaMorePopup$MyAdapter;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v1, v2}, Lnubia/widget/NubiaMorePopup$MyAdapter;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;[Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lnubia/widget/NubiaMorePopup;->mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

    .line 186
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mAdapter:Lnubia/widget/NubiaMorePopup$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    new-instance v1, Lnubia/widget/NubiaMorePopup$3;

    invoke-direct {v1, p0}, Lnubia/widget/NubiaMorePopup$3;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    :cond_0
    return-void
.end method

.method private createPopupWindow(Z)V
    .locals 5
    .param p1, "onTop"    # Z

    .prologue
    const/4 v4, -0x1

    .line 239
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->updatePopupWindow(Z)V

    .line 240
    new-instance v1, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;)V

    .line 243
    .local v1, "container":Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v0, "backPara":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 264
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v3, v0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v2}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 267
    return-void

    .line 253
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 258
    .restart local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 259
    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x308006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private createTopView(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v7, 0x308003b

    const v6, 0x3080039

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 311
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 312
    .local v3, "textView":Landroid/widget/LinearLayout;
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 314
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v5

    if-nez v5, :cond_1

    .line 315
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v2, "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    const/16 v6, 0x15

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 325
    :goto_0
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mMorePopupOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 332
    .local v4, "topPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 333
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 336
    :cond_0
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    return-void

    .line 320
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "topPara":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3080069

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x3080003

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 323
    .restart local v2    # "textPara":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private delayAnimation()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    return-void
.end method

.method private getInitHeight()I
    .locals 4

    .prologue
    .line 436
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 439
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 440
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->measureView(Landroid/view/View;)V

    .line 441
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 443
    .local v0, "height":I
    goto :goto_0
.end method

.method private getPopupWindowInfo(Landroid/view/View;I)Z
    .locals 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    const/4 v9, 0x1

    .line 388
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 389
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 390
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 391
    .local v1, "bottomEdge":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 393
    .local v8, "topEdge":I
    const/4 v10, 0x2

    new-array v0, v10, [I

    .line 394
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 395
    iget-object v10, p0, Lnubia/widget/NubiaMorePopup;->mParams:[I

    invoke-virtual {p1, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 397
    aget v10, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    sub-int v10, v1, v10

    sub-int v3, v10, p2

    .line 400
    .local v3, "distanceToBottom":I
    if-gez v3, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 402
    .local v6, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 403
    .local v7, "scrollY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v11, p2

    invoke-direct {v5, v6, v7, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 405
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v5, v9}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 409
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "scrollX":I
    .end local v7    # "scrollY":I
    :cond_0
    aget v10, v0, v9

    sub-int/2addr v10, v8

    add-int v4, v10, p2

    .line 410
    .local v4, "distanceToTop":I
    if-le v4, v3, :cond_1

    :goto_0
    return v9

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private initItemsState([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "items"    # [Ljava/lang/CharSequence;

    .prologue
    .line 641
    array-length v1, p1

    new-array v1, v1, [Z

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    .line 642
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 643
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 645
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 214
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x3030011

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    .line 216
    const v1, 0x3030012

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Landroid/view/View;

    .line 218
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d0037

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    .line 220
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d003a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    .line 222
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    .line 224
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d003c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopMarginView:Landroid/view/View;

    .line 226
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d003e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomMarginView:Landroid/view/View;

    .line 228
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d003d

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 230
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d0039

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    .line 232
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d0040

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    .line 234
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContainer:Landroid/widget/RelativeLayout;

    const v2, 0x30d0038

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    .line 236
    return-void
.end method

.method private isDoubleClick()Z
    .locals 6

    .prologue
    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 649
    .local v0, "time":J
    iget-wide v2, p0, Lnubia/widget/NubiaMorePopup;->mLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 650
    const/4 v2, 0x1

    .line 653
    :goto_0
    return v2

    .line 652
    :cond_0
    iput-wide v0, p0, Lnubia/widget/NubiaMorePopup;->mLastClickTime:J

    .line 653
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 419
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_0

    .line 420
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 423
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v5, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 425
    .local v1, "childMeasureWidth":I
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 426
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 432
    .local v0, "childMeasureHeight":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 433
    return-void

    .line 429
    .end local v0    # "childMeasureHeight":I
    :cond_1
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childMeasureHeight":I
    goto :goto_0
.end method

.method private prepapreEnterAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 448
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 449
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 450
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 451
    return-void
.end method

.method private setViewBackgroundColor(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->isPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 306
    :cond_0
    return-void
.end method

.method private startEntryAnimation()V
    .locals 13

    .prologue
    .line 454
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->getInitHeight()I

    move-result v4

    .line 459
    .local v4, "height":I
    :goto_0
    iget-boolean v8, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v8, :cond_1

    .line 460
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v4

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 462
    .local v7, "totalTranslate":Landroid/animation/Animator;
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 470
    .local v3, "contentTranslate":Landroid/animation/Animator;
    :goto_1
    const-wide/16 v8, 0xfa

    invoke-virtual {v7, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 471
    new-instance v8, Lnubia/widget/NubiaMorePopup$4;

    invoke-direct {v8, p0}, Lnubia/widget/NubiaMorePopup$4;-><init>(Lnubia/widget/NubiaMorePopup;)V

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    const-wide/16 v8, 0xc8

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 478
    const-wide/16 v8, 0x96

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 480
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Landroid/view/View;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 482
    .local v1, "backgroudAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0x96

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 484
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 486
    .local v2, "contentAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 487
    const-wide/16 v8, 0x96

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 489
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v9, "rotation"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 491
    .local v6, "iconRotate":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 492
    const-wide/16 v8, 0x96

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 494
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 496
    .local v5, "iconAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 497
    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 499
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 500
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v8, 0x6

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    aput-object v1, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    const/4 v9, 0x4

    aput-object v6, v8, v9

    const/4 v9, 0x5

    aput-object v5, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 502
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 504
    return-void

    .line 454
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v1    # "backgroudAlpha":Landroid/animation/Animator;
    .end local v2    # "contentAlpha":Landroid/animation/Animator;
    .end local v3    # "contentTranslate":Landroid/animation/Animator;
    .end local v4    # "height":I
    .end local v5    # "iconAlpha":Landroid/animation/Animator;
    .end local v6    # "iconRotate":Landroid/animation/Animator;
    .end local v7    # "totalTranslate":Landroid/animation/Animator;
    :cond_0
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    goto/16 :goto_0

    .line 465
    .restart local v4    # "height":I
    :cond_1
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    neg-int v12, v4

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 467
    .restart local v7    # "totalTranslate":Landroid/animation/Animator;
    iget-object v8, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .restart local v3    # "contentTranslate":Landroid/animation/Animator;
    goto/16 :goto_1

    .line 462
    nop

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x0
    .end array-data

    .line 480
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 484
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 489
    :array_3
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    .line 494
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 467
    :array_5
    .array-data 4
        -0x3e100000    # -30.0f
        0x0
    .end array-data
.end method

.method private startExitAnimation(Landroid/widget/PopupWindow;)V
    .locals 12
    .param p1, "popup"    # Landroid/widget/PopupWindow;

    .prologue
    .line 509
    iget-boolean v7, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v7, :cond_0

    .line 510
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 512
    .local v6, "totalTranslate":Landroid/animation/Animator;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 520
    .local v3, "contentTranslate":Landroid/animation/Animator;
    :goto_0
    const-wide/16 v8, 0x32

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 521
    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 522
    const-wide/16 v8, 0x64

    invoke-virtual {v3, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 524
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mBackgroundView:Landroid/view/View;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 526
    .local v1, "backgroudAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 528
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 530
    .local v2, "contentAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0x64

    invoke-virtual {v2, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 532
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v8, "rotation"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 534
    .local v5, "iconRotate":Landroid/animation/Animator;
    const-wide/16 v8, 0x64

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 536
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 538
    .local v4, "iconAlpha":Landroid/animation/Animator;
    const-wide/16 v8, 0x64

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 540
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 541
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    aput-object v5, v7, v8

    const/4 v8, 0x5

    aput-object v4, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 543
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 544
    new-instance v7, Lnubia/widget/NubiaMorePopup$5;

    invoke-direct {v7, p0, p1}, Lnubia/widget/NubiaMorePopup$5;-><init>(Lnubia/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 550
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 551
    return-void

    .line 515
    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    .end local v1    # "backgroudAlpha":Landroid/animation/Animator;
    .end local v2    # "contentAlpha":Landroid/animation/Animator;
    .end local v3    # "contentTranslate":Landroid/animation/Animator;
    .end local v4    # "iconAlpha":Landroid/animation/Animator;
    .end local v5    # "iconRotate":Landroid/animation/Animator;
    .end local v6    # "totalTranslate":Landroid/animation/Animator;
    :cond_0
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lnubia/widget/NubiaMorePopup;->mPopupPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 517
    .restart local v6    # "totalTranslate":Landroid/animation/Animator;
    iget-object v7, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const-string v8, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .restart local v3    # "contentTranslate":Landroid/animation/Animator;
    goto/16 :goto_0

    .line 512
    :array_0
    .array-data 4
        0x0
        0x41f00000    # 30.0f
    .end array-data

    .line 524
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 528
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 532
    :array_3
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    .line 536
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 517
    :array_5
    .array-data 4
        0x0
        -0x3e100000    # -30.0f
    .end array-data
.end method

.method private updatePopupWindow(Z)V
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopMarginView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 278
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 299
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopMarginView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mBottomMarginView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mTopImageView:Landroid/widget/ImageView;

    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMoreImageView:Landroid/widget/ImageView;

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "flag":I
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 291
    :cond_1
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->isFullScreenWindow(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->isImmersedStatusBar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-direct {p0, v1}, Lnubia/widget/NubiaMorePopup;->setViewBackgroundColor(Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mMockStatusBarView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 161
    iput-object v1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownList:Landroid/widget/ListView;

    .line 162
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 107
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    .line 108
    return-void
.end method

.method public setItemEnabled(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isEnabled"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mItemEnabled:[Z

    aput-boolean p2, v0, p1

    .line 140
    return-void
.end method

.method public setItems(ILnubia/widget/NubiaMorePopup$OnClickListener;)V
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Lnubia/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 135
    iget-object v0, p0, Lnubia/widget/NubiaMorePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnubia/widget/NubiaMorePopup;->setItems([Ljava/lang/CharSequence;Lnubia/widget/NubiaMorePopup$OnClickListener;)V

    .line 136
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Lnubia/widget/NubiaMorePopup$OnClickListener;)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Lnubia/widget/NubiaMorePopup$OnClickListener;

    .prologue
    .line 129
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup;->mItems:[Ljava/lang/CharSequence;

    .line 130
    invoke-direct {p0, p1}, Lnubia/widget/NubiaMorePopup;->initItemsState([Ljava/lang/CharSequence;)V

    .line 131
    iput-object p2, p0, Lnubia/widget/NubiaMorePopup;->mOnClickListener:Lnubia/widget/NubiaMorePopup$OnClickListener;

    .line 132
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->createContentView()V

    .line 152
    iget-object v1, p0, Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lnubia/widget/NubiaMorePopup;->mDropDownAnchorView:Landroid/view/View;

    iget-boolean v0, p0, Lnubia/widget/NubiaMorePopup;->mIsOnTop:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x50

    :goto_1
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 154
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->prepapreEnterAnim()V

    .line 155
    invoke-direct {p0}, Lnubia/widget/NubiaMorePopup;->delayAnimation()V

    goto :goto_0

    .line 152
    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method
