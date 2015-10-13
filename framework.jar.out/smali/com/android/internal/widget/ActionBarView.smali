.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/widget/DecorToolbar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ActionBarView"


# instance fields
.field private mActionBarTopShow:Z

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDefaultUpDescription:I

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsCollapsible:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mNubiaActionBar:Lnubia/widget/IActionBar;

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUserTitle:Z

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 147
    const v0, 0x10405a3

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 152
    iput-boolean v12, p0, Lcom/android/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 155
    new-instance v0, Lcom/android/internal/widget/ActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/android/internal/widget/ActionBarView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 178
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->setBackgroundResource(I)V

    .line 180
    sget-object v0, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v1, 0x10102ce

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 183
    .local v7, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 185
    const/4 v0, 0x5

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 186
    const/16 v0, 0x9

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 187
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 188
    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 190
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 192
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lnubia/widget/NubiaActionBar;

    invoke-direct {v0, p1, p0}, Lnubia/widget/NubiaActionBar;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarView;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v0, v7}, Lnubia/widget/IActionBar;->getHomeLayoutResId(Landroid/content/res/TypedArray;)I

    move-result v9

    .line 197
    .local v9, "homeResId":I
    const v0, 0x109001b

    invoke-virtual {v10, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView$HomeView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 210
    .local v11, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/ActionBarView$HomeView;->setFocusable(Z)V

    .line 216
    const/16 v0, 0xb

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 217
    const/16 v0, 0xc

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 218
    invoke-virtual {v7, v12, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 219
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 222
    const/16 v0, 0xf

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 223
    const/16 v0, 0x11

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 225
    const/16 v0, 0x8

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 227
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 228
    .local v8, "customNavId":I
    if-eqz v8, :cond_1

    .line 229
    invoke-virtual {v10, v8, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 230
    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 231
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 234
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    .line 236
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    const v3, 0x102002c

    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 245
    invoke-virtual {p0, v12}, Lcom/android/internal/widget/ActionBarView;->setImportantForAccessibility(I)V

    .line 247
    :cond_2
    return-void

    .line 192
    .end local v8    # "customNavId":I
    .end local v9    # "homeResId":I
    .end local v11    # "upBackground":Landroid/graphics/drawable/Drawable;
    :cond_3
    new-instance v0, Lnubia/widget/ProtoActionBar;

    invoke-direct {v0, p1, p0}, Lnubia/widget/ProtoActionBar;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarView;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 628
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 638
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 639
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 640
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 642
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405a6

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 652
    :goto_1
    return-object v1

    .line 631
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 632
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 634
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 647
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10405a5

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 652
    goto :goto_1
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 486
    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 495
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 878
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_3

    .line 879
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 880
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001a

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 882
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10202b4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 883
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x10202b5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 885
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 888
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 889
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v1, :cond_2

    .line 893
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 902
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 903
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 906
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_5
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 593
    if-eqz p2, :cond_0

    .line 594
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 608
    :goto_0
    return-void

    .line 604
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 607
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 556
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 557
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 558
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 562
    .local v0, "visible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 564
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v1, :cond_2

    .line 565
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 568
    return-void

    :cond_3
    move v0, v1

    .line 559
    goto :goto_0

    .line 562
    .restart local v0    # "visible":Z
    :cond_4
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 618
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public canSplit()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 503
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 505
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 508
    :cond_0
    return-void

    .line 503
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 856
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1339
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1344
    if-nez p1, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1347
    :cond_0
    return-object p1
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 840
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getNubiaStartOffset()I
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 285
    .local v0, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getNubiaStartOffset()I

    move-result v1

    return v1

    .line 284
    .end local v0    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_0
.end method

.method public getStartOffset()I
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 280
    .local v0, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v1

    return v1

    .line 279
    .end local v0    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 849
    return-object p0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 330
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020375

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 322
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 323
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x1020376

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 924
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 939
    :cond_0
    :goto_0
    return v3

    .line 928
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 929
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 933
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 934
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 935
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 936
    const/4 v3, 0x1

    goto :goto_0

    .line 934
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 253
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 254
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 255
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 259
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 263
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v1, :cond_2

    .line 264
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->setNavigationContentDescription(I)V

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_4

    .line 268
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 269
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_3

    .line 270
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 271
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 275
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onDetachedFromWindow()V

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 310
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 312
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    .line 314
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 861
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onFinishInflate()V

    .line 863
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 864
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 866
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 868
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 869
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 870
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 875
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1164
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1166
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->isLayoutRtl()Z

    move-result v8

    .line 1172
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_c

    const/16 v22, 0x1

    .line 1173
    .local v22, "direction":I
    :goto_1
    if-eqz v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v11

    .line 1176
    .local v11, "menuStart":I
    :goto_2
    if-eqz v8, :cond_e

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1177
    .local v36, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v6

    .line 1179
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1180
    .local v26, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_10

    const/16 v32, 0x1

    .line 1182
    .local v32, "showTitle":Z
    :goto_5
    const/16 v33, 0x0

    .line 1183
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 1184
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_11

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v3}, Lnubia/widget/IActionBar;->getHomeViewStartOffset()I

    move-result v33

    .line 1194
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1196
    .end local v36    # "x":I
    .local v5, "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1199
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1221
    :cond_3
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_5

    .line 1222
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v8, :cond_14

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v3}, Lnubia/widget/IActionBar;->resetPositionChild()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1225
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v8, :cond_15

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionMenuChild(Landroid/view/View;IIIZ)I

    .line 1228
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v9}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v10}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v10

    move/from16 v0, v22

    invoke-interface {v3, v0, v4, v9, v10}, Lnubia/widget/IActionBar;->computeMenuStart(IIII)I

    move-result v3

    add-int/2addr v11, v3

    .line 1234
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    .line 1236
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_16

    const/4 v14, 0x1

    :goto_a
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1240
    :cond_6
    const/16 v20, 0x0

    .line 1241
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_17

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1247
    :cond_7
    :goto_b
    if-eqz v20, :cond_b

    .line 1248
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getLayoutDirection()I

    move-result v27

    .line 1249
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1250
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_18

    check-cast v28, Landroid/app/ActionBar$LayoutParams;

    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1252
    .local v15, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_c
    if-eqz v15, :cond_19

    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1253
    .local v23, "gravity":I
    :goto_d
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1255
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1256
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1257
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_8

    .line 1258
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1259
    invoke-virtual {v15}, Landroid/app/ActionBar$LayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1260
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1261
    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1264
    :cond_8
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1266
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1d

    .line 1267
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1268
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1b

    .line 1269
    add-int v19, v18, v29

    .line 1270
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1271
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_1a

    .line 1272
    const/16 v25, 0x5

    .line 1289
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_9
    :goto_e
    const/16 v37, 0x0

    .line 1290
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1302
    :goto_f
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1304
    .local v35, "vgravity":I
    if-nez v23, :cond_a

    .line 1305
    const/16 v35, 0x10

    .line 1308
    :cond_a
    const/16 v38, 0x0

    .line 1309
    .local v38, "ypos":I
    sparse-switch v35, :sswitch_data_0

    .line 1323
    :goto_10
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1324
    .local v21, "customWidth":I
    add-int v3, v37, v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1326
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1329
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1332
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto/16 :goto_0

    .line 1172
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v20    # "customView":Landroid/view/View;
    .end local v22    # "direction":I
    .end local v24    # "halfProgressHeight":I
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_c
    const/16 v22, -0x1

    goto/16 :goto_1

    .line 1173
    .restart local v22    # "direction":I
    :cond_d
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_2

    .line 1176
    .restart local v11    # "menuStart":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v36

    goto/16 :goto_3

    .line 1179
    .restart local v6    # "y":I
    .restart local v36    # "x":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_4

    .line 1180
    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1188
    .restart local v32    # "showTitle":Z
    .restart local v33    # "startOffset":I
    :cond_11
    if-eqz v32, :cond_2

    .line 1189
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v33

    goto/16 :goto_6

    .line 1203
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 1204
    if-eqz v32, :cond_12

    .line 1205
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1207
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1208
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1212
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3

    .line 1213
    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1214
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/ActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1215
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1222
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1225
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1236
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_a

    .line 1243
    .restart local v20    # "customView":Landroid/view/View;
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_7

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_b

    .line 1250
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 1252
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_19
    const v23, 0x800013

    goto/16 :goto_d

    .line 1273
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v23    # "gravity":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_1a
    move/from16 v0, v17

    if-ge v0, v11, :cond_9

    .line 1274
    const/16 v25, 0x3

    goto/16 :goto_e

    .line 1277
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1b
    move/from16 v19, v18

    .line 1278
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1279
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_1c

    .line 1280
    const/16 v25, 0x3

    goto/16 :goto_e

    .line 1281
    :cond_1c
    move/from16 v0, v17

    if-le v0, v11, :cond_9

    .line 1282
    const/16 v25, 0x5

    goto/16 :goto_e

    .line 1285
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1d
    if-nez v23, :cond_9

    .line 1286
    const v25, 0x800003

    goto/16 :goto_e

    .line 1292
    .restart local v37    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1293
    goto/16 :goto_f

    .line 1295
    :pswitch_5
    if-eqz v8, :cond_1e

    move/from16 v37, v11

    .line 1296
    :goto_11
    goto/16 :goto_f

    :cond_1e
    move/from16 v37, v5

    .line 1295
    goto :goto_11

    .line 1298
    :pswitch_6
    if-eqz v8, :cond_1f

    sub-int v37, v5, v29

    :goto_12
    goto/16 :goto_f

    :cond_1f
    sub-int v37, v11, v29

    goto :goto_12

    .line 1311
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v31

    .line 1312
    .local v31, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1313
    .local v30, "paddedBottom":I
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    .line 1314
    goto/16 :goto_10

    .line 1316
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1317
    goto/16 :goto_10

    .line 1319
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_10

    .line 1199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1290
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1309
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getChildCount()I

    move-result v8

    .line 945
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    move/from16 v45, v0

    if-eqz v45, :cond_6

    .line 946
    const/16 v43, 0x0

    .line 947
    .local v43, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 948
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 949
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v45

    if-eqz v45, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    if-eq v7, v0, :cond_1

    .line 952
    add-int/lit8 v43, v43, 0x1

    .line 947
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 956
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v39

    .line 957
    .local v39, "upChildCount":I
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 959
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_3

    .line 960
    add-int/lit8 v43, v43, 0x1

    .line 957
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 964
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v43, :cond_6

    .line 966
    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1160
    .end local v26    # "i":I
    .end local v39    # "upChildCount":I
    .end local v43    # "visibleChildren":I
    :cond_5
    :goto_2
    return-void

    .line 971
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v44

    .line 972
    .local v44, "widthMode":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v44

    move/from16 v1, v45

    if-eq v0, v1, :cond_7

    .line 973
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 977
    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 978
    .local v18, "heightMode":I
    const/high16 v45, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v45

    if-eq v0, v1, :cond_8

    .line 979
    new-instance v45, Ljava/lang/IllegalStateException;

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, " can only be used "

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    invoke-direct/range {v45 .. v46}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 983
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 985
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-ltz v45, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v31, v0

    .line 988
    .local v31, "maxHeight":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingTop()I

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingBottom()I

    move-result v46

    add-int v42, v45, v46

    .line 989
    .local v42, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingLeft()I

    move-result v34

    .line 990
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getPaddingRight()I

    move-result v35

    .line 991
    .local v35, "paddingRight":I
    sub-int v17, v31, v42

    .line 992
    .local v17, "height":I
    const/high16 v45, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 993
    .local v9, "childSpecHeight":I
    const/high16 v45, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v45

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 995
    .local v16, "exactHeightSpec":I
    sub-int v45, v10, v34

    sub-int v6, v45, v35

    .line 996
    .local v6, "availableWidth":I
    div-int/lit8 v28, v6, 0x2

    .line 997
    .local v28, "leftOfCenter":I
    move/from16 v36, v28

    .line 999
    .local v36, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x8

    if-eqz v45, :cond_17

    const/16 v37, 0x1

    .line 1002
    .local v37, "showTitle":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1004
    .local v20, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1006
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-gez v45, :cond_19

    .line 1007
    const/high16 v45, -0x80000000

    move/from16 v0, v45

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1020
    .local v24, "homeWidthSpec":I
    :goto_6
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->measure(II)V

    .line 1022
    const/16 v23, 0x0

    .line 1023
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_a

    :cond_9
    if-eqz v37, :cond_b

    .line 1025
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getMeasuredWidth()I

    move-result v23

    .line 1026
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v45

    add-int v22, v23, v45

    .line 1027
    .local v22, "homeOffsetWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1028
    const/16 v45, 0x0

    sub-int v46, v6, v22

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1031
    .end local v22    # "homeOffsetWidth":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_c

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v16

    move/from16 v3, v46

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1033
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1036
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_d

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1040
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v36, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1044
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-nez v45, :cond_e

    .line 1045
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v45, v0

    packed-switch v45, :pswitch_data_0

    .line 1075
    :cond_e
    :goto_7
    const/4 v15, 0x0

    .line 1076
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_1c

    .line 1077
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1083
    :cond_f
    :goto_8
    if-eqz v15, :cond_13

    .line 1084
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    .line 1085
    .local v30, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v30

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v45, v0

    if-eqz v45, :cond_1d

    move-object/from16 v45, v30

    check-cast v45, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v45

    .line 1088
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_9
    const/16 v25, 0x0

    .line 1089
    .local v25, "horizontalMargin":I
    const/16 v41, 0x0

    .line 1090
    .local v41, "verticalMargin":I
    if-eqz v5, :cond_10

    .line 1091
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->leftMargin:I

    move/from16 v45, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->rightMargin:I

    move/from16 v46, v0

    add-int v25, v45, v46

    .line 1092
    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->topMargin:I

    move/from16 v45, v0

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v41, v45, v46

    .line 1098
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_1e

    .line 1099
    const/high16 v12, -0x80000000

    .line 1104
    .local v12, "customNavHeightMode":I
    :goto_a
    const/16 v45, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    if-ltz v46, :cond_11

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v46, v0

    move/from16 v0, v46

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .end local v17    # "height":I
    :cond_11
    sub-int v46, v17, v41

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1107
    .local v11, "customNavHeight":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_20

    const/high16 v14, 0x40000000    # 2.0f

    .line 1109
    .local v14, "customNavWidthMode":I
    :goto_b
    const/16 v46, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    if-ltz v45, :cond_21

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v45

    :goto_c
    sub-int v45, v45, v25

    move/from16 v0, v46

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1112
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_22

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v45, v0

    :goto_d
    and-int/lit8 v19, v45, 0x7

    .line 1117
    .local v19, "hgrav":I
    const/16 v45, 0x1

    move/from16 v0, v19

    move/from16 v1, v45

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_12

    .line 1118
    move/from16 v0, v28

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v45

    mul-int/lit8 v13, v45, 0x2

    .line 1121
    :cond_12
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v45

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    move/from16 v0, v45

    move/from16 v1, v46

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1124
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    add-int v45, v45, v25

    sub-int v6, v6, v45

    .line 1131
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v45, v0

    add-int v46, v6, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    move/from16 v4, v48

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/ActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_14

    .line 1134
    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v46

    sub-int v46, v28, v46

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1137
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mContentHeight:I

    move/from16 v45, v0

    if-gtz v45, :cond_25

    .line 1138
    const/16 v32, 0x0

    .line 1139
    .local v32, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_23

    .line 1140
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v40

    .line 1141
    .local v40, "v":Landroid/view/View;
    invoke-virtual/range {v40 .. v40}, Landroid/view/View;->getMeasuredHeight()I

    move-result v45

    add-int v33, v45, v42

    .line 1142
    .local v33, "paddedViewHeight":I
    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_15

    .line 1143
    move/from16 v32, v33

    .line 1139
    :cond_15
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 985
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v28    # "leftOfCenter":I
    .end local v31    # "maxHeight":I
    .end local v32    # "measuredHeight":I
    .end local v33    # "paddedViewHeight":I
    .end local v34    # "paddingLeft":I
    .end local v35    # "paddingRight":I
    .end local v36    # "rightOfCenter":I
    .end local v37    # "showTitle":Z
    .end local v40    # "v":Landroid/view/View;
    .end local v42    # "verticalPadding":I
    :cond_16
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v31

    goto/16 :goto_3

    .line 999
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v28    # "leftOfCenter":I
    .restart local v31    # "maxHeight":I
    .restart local v34    # "paddingLeft":I
    .restart local v35    # "paddingRight":I
    .restart local v36    # "rightOfCenter":I
    .restart local v42    # "verticalPadding":I
    :cond_17
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1002
    .restart local v37    # "showTitle":Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_5

    .line 1009
    .restart local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_19
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v45, v0

    const/high16 v46, 0x40000000    # 2.0f

    invoke-static/range {v45 .. v46}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_6

    .line 1047
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1048
    if-eqz v37, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1049
    .local v27, "itemPaddingSize":I
    :goto_f
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1050
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v29

    .line 1055
    .local v29, "listNavWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1056
    const/16 v45, 0x0

    sub-int v46, v28, v29

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1057
    goto/16 :goto_7

    .line 1048
    .end local v27    # "itemPaddingSize":I
    .end local v29    # "listNavWidth":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_f

    .line 1060
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_e

    .line 1061
    if-eqz v37, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v45, v0

    mul-int/lit8 v27, v45, 0x2

    .line 1062
    .restart local v27    # "itemPaddingSize":I
    :goto_10
    const/16 v45, 0x0

    sub-int v46, v6, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1063
    const/16 v45, 0x0

    sub-int v46, v28, v27

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    const/high16 v46, -0x80000000

    move/from16 v0, v46

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    const/high16 v47, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v47

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Lcom/android/internal/widget/ScrollingTabContainerView;->measure(II)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v38

    .line 1068
    .local v38, "tabWidth":I
    const/16 v45, 0x0

    sub-int v46, v6, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1069
    const/16 v45, 0x0

    sub-int v46, v28, v38

    invoke-static/range {v45 .. v46}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_7

    .line 1061
    .end local v27    # "itemPaddingSize":I
    .end local v38    # "tabWidth":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v27, v0

    goto :goto_10

    .line 1078
    .restart local v15    # "customView":Landroid/view/View;
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v45, v0

    and-int/lit8 v45, v45, 0x10

    if-eqz v45, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v45, v0

    if-eqz v45, :cond_f

    .line 1080
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_8

    .line 1085
    .restart local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1101
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v41    # "verticalMargin":I
    :cond_1e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v45, v0

    const/16 v46, -0x2

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_1f

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_11
    goto/16 :goto_a

    .end local v12    # "customNavHeightMode":I
    :cond_1f
    const/high16 v12, -0x80000000

    goto :goto_11

    .line 1107
    .end local v17    # "height":I
    .restart local v11    # "customNavHeight":I
    .restart local v12    # "customNavHeightMode":I
    :cond_20
    const/high16 v14, -0x80000000

    goto/16 :goto_b

    .restart local v14    # "customNavWidthMode":I
    :cond_21
    move/from16 v45, v6

    .line 1109
    goto/16 :goto_c

    .line 1112
    .restart local v13    # "customNavWidth":I
    :cond_22
    const v45, 0x800013

    goto/16 :goto_d

    .line 1146
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v30    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v41    # "verticalMargin":I
    .restart local v26    # "i":I
    .restart local v32    # "measuredHeight":I
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    .line 1151
    .end local v26    # "i":I
    .end local v32    # "measuredHeight":I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    if-eqz v45, :cond_24

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v45, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v46

    invoke-virtual/range {v45 .. v46}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1155
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    if-eqz v45, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v45

    const/16 v46, 0x8

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_5

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v46, v0

    mul-int/lit8 v46, v46, 0x2

    sub-int v46, v10, v46

    const/high16 v47, 0x40000000    # 2.0f

    invoke-static/range {v46 .. v47}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v46

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView;->getMeasuredHeight()I

    move-result v47

    const/high16 v48, -0x80000000

    invoke-static/range {v47 .. v48}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v47

    invoke-virtual/range {v45 .. v47}, Landroid/widget/ProgressBar;->measure(II)V

    goto/16 :goto_2

    .line 1148
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v10, v1}, Lcom/android/internal/widget/ActionBarView;->setMeasuredDimension(II)V

    goto :goto_12

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1366
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1368
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1370
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1372
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1373
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1374
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1378
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_1

    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->postShowOverflowMenu()V

    .line 1381
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1352
    invoke-super {p0}, Lcom/android/internal/widget/AbsActionBarView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1353
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1355
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1356
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1361
    return-object v0
.end method

.method public setActionBarShowOrHide(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mActionBarTopShow:Z

    .line 340
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z

    .prologue
    .line 917
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsible:Z

    .line 918
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 914
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 511
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 512
    .local v0, "showCustom":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 513
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 518
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 519
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 522
    :cond_2
    return-void

    .line 511
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 1409
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    if-ne v0, p1, :cond_0

    .line 1414
    :goto_0
    return-void

    .line 1412
    :cond_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDefaultUpDescription:I

    .line 1413
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1390
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 656
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_6

    .line 657
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 659
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_11

    .line 660
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 662
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 663
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_7

    move v4, v7

    .line 664
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 670
    if-eqz v4, :cond_0

    .line 671
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 675
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 676
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_8

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_8

    move v3, v7

    .line 677
    .local v3, "logoVis":Z
    :goto_2
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 680
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 681
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_a

    .line 682
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 688
    :cond_2
    :goto_4
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_b

    move v5, v7

    .line 689
    .local v5, "showHome":Z
    :goto_5
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    move v1, v7

    .line 690
    .local v1, "homeAsUp":Z
    :goto_6
    if-nez v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v7

    .line 692
    .local v6, "titleUp":Z
    :goto_7
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v9, v5}, Lnubia/widget/IActionBar;->setHomeViewShowIcon(Z)V

    .line 694
    if-nez v5, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_e

    move v2, v8

    .line 696
    .local v2, "homeVis":I
    :goto_8
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 698
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 699
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_f

    .line 700
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 706
    :cond_4
    :goto_9
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 708
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_10

    .line 709
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 710
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 717
    :cond_5
    :goto_a
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 723
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_b
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 724
    return-void

    .line 656
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_7
    move v4, v8

    .line 663
    goto/16 :goto_1

    :cond_8
    move v3, v8

    .line 676
    goto :goto_2

    .line 677
    .restart local v3    # "logoVis":Z
    :cond_9
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 684
    .end local v3    # "logoVis":Z
    :cond_a
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v5, v8

    .line 688
    goto :goto_5

    .restart local v5    # "showHome":Z
    :cond_c
    move v1, v8

    .line 689
    goto :goto_6

    .restart local v1    # "homeAsUp":Z
    :cond_d
    move v6, v8

    .line 690
    goto :goto_7

    .line 694
    .restart local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    goto :goto_8

    .line 702
    .restart local v2    # "homeVis":I
    :cond_f
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 712
    :cond_10
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 713
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 719
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_11
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->invalidate()V

    goto :goto_b
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "l"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 811
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 812
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 814
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 816
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 824
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 401
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 404
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 405
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 406
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 408
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 409
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 410
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 413
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 405
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 589
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 590
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 738
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 739
    return-void

    .line 738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 728
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 732
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 735
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 753
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 754
    return-void

    .line 753
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 747
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 750
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 420
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 483
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 424
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 427
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 428
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 429
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v4}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 431
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 432
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 435
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 437
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v4}, Lnubia/widget/IActionBar;->getActionMenuPresenter()Landroid/widget/ActionMenuPresenter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    .line 439
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 440
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x102003f

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setId(I)V

    .line 441
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 445
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 447
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 451
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 452
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 453
    .local v2, "menuView":Landroid/widget/ActionMenuView;
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 454
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 455
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 457
    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    goto/16 :goto_0

    .line 459
    .end local v2    # "menuView":Landroid/widget/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 461
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 464
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    .line 466
    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 467
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 468
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 469
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Landroid/widget/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Landroid/widget/ActionMenuView;

    .line 470
    .restart local v2    # "menuView":Landroid/widget/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 471
    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 472
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_6

    .line 473
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ActionMenuView;->setVisibility(I)V

    .line 476
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 479
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 417
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1402
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1403
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1404
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1405
    return-void

    .line 1403
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1398
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1399
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1394
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1385
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 761
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 762
    .local v0, "oldMode":I
    if-eq p1, v0, :cond_2

    .line 763
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 764
    packed-switch v0, :pswitch_data_0

    .line 776
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 804
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 805
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 807
    :cond_2
    return-void

    .line 766
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 767
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 771
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_0

    .line 772
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 778
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_3

    .line 779
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 781
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v3, 0x1020042

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 783
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-interface {v2, v3}, Lnubia/widget/IActionBar;->setDropDownSpinnerWidth(Landroid/widget/Spinner;)V

    .line 785
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 787
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 789
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 790
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_4

    .line 793
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 795
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 796
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 799
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 800
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 776
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setNubiaShowIcon(Z)V
    .locals 1
    .param p1, "showIcon"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setNubiaShowIcon(Z)V

    .line 294
    return-void
.end method

.method public setShowIcon(Z)V
    .locals 1
    .param p1, "showIcon"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 290
    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 4
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 346
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 348
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_0
    if-eqz p1, :cond_6

    .line 352
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->requestLayout()V

    .line 362
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 365
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionBarTopShow:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 370
    if-nez p1, :cond_8

    .line 371
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 383
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    .line 385
    :cond_5
    return-void

    .line 357
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 358
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 365
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 375
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 380
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 575
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 576
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 577
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 583
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 585
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 586
    return-void

    :cond_2
    move v1, v3

    .line 579
    goto :goto_0

    :cond_3
    move v0, v2

    .line 580
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 583
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 535
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 537
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 304
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v0, p1}, Lnubia/widget/IActionBar;->getTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 552
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method
