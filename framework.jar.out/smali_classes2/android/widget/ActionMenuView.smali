.class public Landroid/widget/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuView$1;,
        Landroid/widget/ActionMenuView$LayoutParams;,
        Landroid/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field private mNubiaActionBar:Lnubia/widget/IActionBar;

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 84
    .local v0, "density":F
    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    .line 85
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 86
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 87
    iput v2, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 89
    invoke-static {p1}, Lnubia/util/UiUtils;->isNubiaUi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lnubia/widget/NubiaActionBar;

    invoke-direct {v1, p1, p0}, Lnubia/widget/NubiaActionBar;-><init>(Landroid/content/Context;Landroid/widget/ActionMenuView;)V

    :goto_0
    iput-object v1, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    .line 91
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v1}, Lnubia/widget/IActionBar;->resetMaxItemHeight()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-direct {p0}, Landroid/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 95
    :cond_0
    return-void

    .line 89
    :cond_1
    new-instance v1, Lnubia/widget/ProtoActionBar;

    invoke-direct {v1, p1, p0}, Lnubia/widget/ProtoActionBar;-><init>(Landroid/content/Context;Landroid/widget/ActionMenuView;)V

    goto :goto_0
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuView;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuView;

    .prologue
    .line 47
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuView$LayoutParams;

    .line 438
    .local v8, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .line 440
    .local v2, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 441
    .local v1, "childHeightMode":I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 443
    .local v3, "childHeightSpec":I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .line 445
    .local v7, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .line 447
    .local v6, "hasText":Z
    :goto_1
    const/4 v0, 0x0

    .line 448
    .local v0, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    .line 449
    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 451
    .local v4, "childWidthSpec":I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 454
    .local v9, "measuredWidth":I
    div-int v0, v9, p1

    .line 455
    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 456
    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .line 459
    .end local v4    # "childWidthSpec":I
    .end local v9    # "measuredWidth":I
    :cond_2
    iget-boolean v11, v8, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .line 460
    .local v5, "expandable":Z
    :goto_2
    iput-boolean v5, v8, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 462
    iput v0, v8, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 463
    mul-int v10, v0, p1

    .line 464
    .local v10, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    .line 466
    return v0

    .line 443
    .end local v0    # "cellsUsed":I
    .end local v5    # "expandable":Z
    .end local v6    # "hasText":Z
    .end local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10    # "targetWidth":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 445
    .restart local v7    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 459
    .restart local v0    # "cellsUsed":I
    .restart local v6    # "hasText":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 210
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 211
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .line 212
    .local v37, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 214
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .line 215
    .local v36, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .line 217
    .local v18, "heightPadding":I
    const/16 v38, -0x2

    move/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v22

    .line 220
    .local v22, "itemHeightSpec":I
    sub-int v37, v37, v36

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .line 224
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .line 226
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_0

    .line 228
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    .line 419
    :goto_0
    return-void

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .line 234
    .local v5, "cellSize":I
    move v8, v4

    .line 235
    .local v8, "cellsRemaining":I
    const/16 v25, 0x0

    .line 236
    .local v25, "maxChildHeight":I
    const/16 v24, 0x0

    .line 237
    .local v24, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 238
    .local v14, "expandableItemCount":I
    const/16 v34, 0x0

    .line 239
    .local v34, "visibleItemCount":I
    const/16 v16, 0x0

    .line 242
    .local v16, "hasOverflow":Z
    const-wide/16 v32, 0x0

    .line 244
    .local v32, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v12

    .line 245
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_8

    .line 246
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 247
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2

    .line 245
    :cond_1
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 249
    :cond_2
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 250
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v34, v34, 0x1

    .line 252
    if-eqz v21, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 259
    .local v23, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 260
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 261
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 262
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 263
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 264
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 265
    if-eqz v21, :cond_6

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_6

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 268
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/4 v7, 0x1

    .line 270
    .local v7, "cellsAvailable":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 273
    .local v9, "cellsUsed":I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 274
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_4

    add-int/lit8 v14, v14, 0x1

    .line 275
    :cond_4
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    const/16 v16, 0x1

    .line 277
    :cond_5
    sub-int/2addr v8, v9

    .line 278
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 279
    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_1

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_2

    .line 265
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    :cond_6
    const/16 v38, 0x0

    goto :goto_3

    :cond_7
    move v7, v8

    .line 268
    goto :goto_4

    .line 284
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_8
    if-eqz v16, :cond_a

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    const/4 v10, 0x1

    .line 289
    .local v10, "centerSingleExpandedItem":Z
    :goto_5
    const/16 v30, 0x0

    .line 290
    .local v30, "needsExpansion":Z
    :goto_6
    if-lez v14, :cond_e

    if-lez v8, :cond_e

    .line 291
    const v26, 0x7fffffff

    .line 292
    .local v26, "minCells":I
    const-wide/16 v28, 0x0

    .line 293
    .local v28, "minCellsAt":J
    const/16 v27, 0x0

    .line 294
    .local v27, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    if-ge v0, v12, :cond_d

    .line 295
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 296
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 299
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_b

    .line 294
    :cond_9
    :goto_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 284
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "needsExpansion":Z
    :cond_a
    const/4 v10, 0x0

    goto :goto_5

    .line 302
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "needsExpansion":Z
    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 303
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    .line 304
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 305
    const/16 v27, 0x1

    goto :goto_8

    .line 306
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 307
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v28, v28, v38

    .line 308
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 313
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_d
    or-long v32, v32, v28

    .line 315
    move/from16 v0, v27

    if-le v0, v8, :cond_13

    .line 344
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_e
    if-nez v16, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    const/16 v31, 0x1

    .line 345
    .local v31, "singleItem":Z
    :goto_9
    if-lez v8, :cond_20

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_20

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_f

    if-nez v31, :cond_f

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_20

    .line 347
    :cond_f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .line 349
    .local v13, "expandCount":F
    if-nez v31, :cond_11

    .line 351
    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_10

    .line 352
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 353
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 355
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_10
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_11

    .line 356
    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 357
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_11

    const/high16 v38, 0x3f000000    # 0.5f

    sub-float v13, v13, v38

    .line 361
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_11
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_19

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .line 364
    .local v15, "extraPixels":I
    :goto_a
    const/16 v20, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v0, v12, :cond_1f

    .line 365
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1a

    .line 364
    :cond_12
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_b

    .line 318
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v31    # "singleItem":Z
    .restart local v26    # "minCells":I
    .restart local v27    # "minCellsItemCount":I
    .restart local v28    # "minCellsAt":J
    :cond_13
    add-int/lit8 v26, v26, 0x1

    .line 320
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_17

    .line 321
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 322
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 323
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v28

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_15

    .line 325
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    .line 320
    :cond_14
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 329
    :cond_15
    if-eqz v10, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_16

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_16

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 333
    :cond_16
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 334
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 335
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 338
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_17
    const/16 v30, 0x1

    .line 339
    goto/16 :goto_6

    .line 344
    .end local v26    # "minCells":I
    .end local v27    # "minCellsItemCount":I
    .end local v28    # "minCellsAt":J
    :cond_18
    const/16 v31, 0x0

    goto/16 :goto_9

    .line 361
    .restart local v13    # "expandCount":F
    .restart local v31    # "singleItem":Z
    :cond_19
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 367
    .restart local v15    # "extraPixels":I
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 368
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 369
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1c

    .line 371
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 372
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 373
    if-nez v20, :cond_1b

    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1b

    .line 376
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 378
    :cond_1b
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 379
    :cond_1c
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1d

    .line 380
    move-object/from16 v0, v23

    iput v15, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 381
    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 382
    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    .line 383
    const/16 v30, 0x1

    goto/16 :goto_c

    .line 388
    :cond_1d
    if-eqz v20, :cond_1e

    .line 389
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 391
    :cond_1e
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_12

    .line 392
    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 397
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_1f
    const/4 v8, 0x0

    .line 401
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_20
    if-eqz v30, :cond_22

    .line 402
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 403
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 404
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/ActionMenuView$LayoutParams;

    .line 406
    .restart local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_21

    .line 402
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 408
    :cond_21
    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .line 409
    .local v35, "width":I
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_10

    .line 414
    .end local v11    # "child":Landroid/view/View;
    .end local v23    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v35    # "width":I
    :cond_22
    const/high16 v38, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_23

    .line 415
    move/from16 v19, v25

    .line 418
    :cond_23
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActionMenuView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method private setResetMaxItemHeight()V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x3080038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuView;->mMaxItemHeight:I

    .line 101
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 634
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 740
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 607
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(II)V

    .line 609
    .local v0, "params":Landroid/widget/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 610
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 615
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 620
    if-eqz p1, :cond_2

    .line 621
    instance-of v1, p1, Landroid/widget/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/widget/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/widget/ActionMenuView$LayoutParams;)V

    .line 624
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 625
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->gravity:I

    .line 629
    .end local v0    # "result":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 621
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Landroid/widget/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 640
    .local v0, "result":Landroid/widget/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 641
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 668
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 669
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 670
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 671
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Landroid/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 672
    new-instance v1, Landroid/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 673
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 674
    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 676
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    iget-object v3, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 677
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 680
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1

    .line 674
    .restart local v0    # "context":Landroid/content/Context;
    :cond_1
    new-instance v1, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/widget/ActionMenuView;Landroid/widget/ActionMenuView$1;)V

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 747
    if-nez p1, :cond_1

    .line 748
    const/4 v2, 0x0

    .line 759
    :cond_0
    :goto_0
    return v2

    .line 750
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 751
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 752
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 753
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 754
    check-cast v1, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 756
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 757
    check-cast v0, Landroid/widget/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 656
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 657
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 646
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public nubiaUiOnLayout(ZIIII)Z
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 473
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public nubiaUiOnMeasure(II)Z
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 164
    iget v1, p0, Landroid/widget/ActionMenuView;->mMaxItemHeight:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 165
    .local v0, "itemHeightSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 166
    const/4 v1, 0x1

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 145
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v0}, Lnubia/widget/IActionBar;->resetMaxItemHeight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Landroid/widget/ActionMenuView;->setResetMaxItemHeight()V

    .line 149
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 151
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    .line 153
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 591
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 592
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 593
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 35
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-interface/range {v4 .. v9}, Lnubia/widget/IActionBar;->getActionMenuViewOnLayout(ZIIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-nez v4, :cond_2

    .line 486
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v11

    .line 491
    .local v11, "childCount":I
    add-int v4, p3, p5

    div-int/lit8 v20, v4, 0x2

    .line 492
    .local v20, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getDividerWidth()I

    move-result v12

    .line 493
    .local v12, "dividerWidth":I
    const/16 v23, 0x0

    .line 494
    .local v23, "overflowWidth":I
    const/16 v22, 0x0

    .line 495
    .local v22, "nonOverflowWidth":I
    const/16 v21, 0x0

    .line 496
    .local v21, "nonOverflowCount":I
    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    sub-int v34, v4, v5

    .line 497
    .local v34, "widthRemaining":I
    const/4 v13, 0x0

    .line 498
    .local v13, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->isLayoutRtl()Z

    move-result v16

    .line 499
    .local v16, "isLayoutRtl":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v11, :cond_8

    .line 500
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 501
    .local v32, "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 499
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 505
    :cond_3
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/ActionMenuView$LayoutParams;

    .line 506
    .local v24, "p":Landroid/widget/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_6

    .line 507
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 508
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    add-int v23, v23, v12

    .line 512
    :cond_4
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 515
    .local v14, "height":I
    if-eqz v16, :cond_5

    .line 516
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v17, v4, v5

    .line 517
    .local v17, "l":I
    add-int v25, v17, v23

    .line 522
    .local v25, "r":I
    :goto_3
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 523
    .local v31, "t":I
    add-int v10, v31, v14

    .line 524
    .local v10, "b":I
    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v31

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/view/View;->layout(IIII)V

    .line 526
    sub-int v34, v34, v23

    .line 527
    const/4 v13, 0x1

    .line 528
    goto :goto_2

    .line 519
    .end local v10    # "b":I
    .end local v17    # "l":I
    .end local v25    # "r":I
    .end local v31    # "t":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v25, v4, v5

    .line 520
    .restart local v25    # "r":I
    sub-int v17, v25, v23

    .restart local v17    # "l":I
    goto :goto_3

    .line 529
    .end local v14    # "height":I
    .end local v17    # "l":I
    .end local v25    # "r":I
    :cond_6
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int v26, v4, v5

    .line 530
    .local v26, "size":I
    add-int v22, v22, v26

    .line 531
    sub-int v34, v34, v26

    .line 532
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 533
    add-int v22, v22, v12

    .line 535
    :cond_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 539
    .end local v24    # "p":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v26    # "size":I
    .end local v32    # "v":Landroid/view/View;
    :cond_8
    const/4 v4, 0x1

    if-ne v11, v4, :cond_9

    if-nez v13, :cond_9

    .line 541
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 542
    .restart local v32    # "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    .line 543
    .local v33, "width":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 544
    .restart local v14    # "height":I
    sub-int v4, p4, p2

    div-int/lit8 v19, v4, 0x2

    .line 545
    .local v19, "midHorizontal":I
    div-int/lit8 v4, v33, 0x2

    sub-int v17, v19, v4

    .line 546
    .restart local v17    # "l":I
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 547
    .restart local v31    # "t":I
    add-int v4, v17, v33

    add-int v5, v31, v14

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 551
    .end local v14    # "height":I
    .end local v17    # "l":I
    .end local v19    # "midHorizontal":I
    .end local v31    # "t":I
    .end local v32    # "v":Landroid/view/View;
    .end local v33    # "width":I
    :cond_9
    if-eqz v13, :cond_b

    const/4 v4, 0x0

    :goto_4
    sub-int v27, v21, v4

    .line 552
    .local v27, "spacerCount":I
    const/4 v5, 0x0

    if-lez v27, :cond_c

    div-int v4, v34, v27

    :goto_5
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 554
    .local v28, "spacerSize":I
    if-eqz v16, :cond_e

    .line 555
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v30, v4, v5

    .line 556
    .local v30, "startRight":I
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v11, :cond_0

    .line 557
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 558
    .restart local v32    # "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/ActionMenuView$LayoutParams;

    .line 559
    .local v18, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_a

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_d

    .line 556
    :cond_a
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 551
    .end local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v27    # "spacerCount":I
    .end local v28    # "spacerSize":I
    .end local v30    # "startRight":I
    .end local v32    # "v":Landroid/view/View;
    :cond_b
    const/4 v4, 0x1

    goto :goto_4

    .line 552
    .restart local v27    # "spacerCount":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_5

    .line 563
    .restart local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .restart local v28    # "spacerSize":I
    .restart local v30    # "startRight":I
    .restart local v32    # "v":Landroid/view/View;
    :cond_d
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v30, v30, v4

    .line 564
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    .line 565
    .restart local v33    # "width":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 566
    .restart local v14    # "height":I
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 567
    .restart local v31    # "t":I
    sub-int v4, v30, v33

    add-int v5, v31, v14

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 568
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v4, v4, v33

    add-int v4, v4, v28

    sub-int v30, v30, v4

    goto :goto_7

    .line 571
    .end local v14    # "height":I
    .end local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    .end local v30    # "startRight":I
    .end local v31    # "t":I
    .end local v32    # "v":Landroid/view/View;
    .end local v33    # "width":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuView;->getPaddingLeft()I

    move-result v29

    .line 572
    .local v29, "startLeft":I
    const/4 v15, 0x0

    :goto_8
    if-ge v15, v11, :cond_0

    .line 573
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    .line 574
    .restart local v32    # "v":Landroid/view/View;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/ActionMenuView$LayoutParams;

    .line 575
    .restart local v18    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v4, :cond_10

    .line 572
    :cond_f
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 579
    :cond_10
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v29, v29, v4

    .line 580
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredWidth()I

    move-result v33

    .line 581
    .restart local v33    # "width":I
    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 582
    .restart local v14    # "height":I
    div-int/lit8 v4, v14, 0x2

    sub-int v31, v20, v4

    .line 583
    .restart local v31    # "t":I
    add-int v4, v29, v33

    add-int v5, v31, v14

    move-object/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 584
    move-object/from16 v0, v18

    iget v4, v0, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int v4, v4, v33

    add-int v4, v4, v28

    add-int v29, v29, v4

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 173
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mNubiaActionBar:Lnubia/widget/IActionBar;

    invoke-interface {v6, p1, p2}, Lnubia/widget/IActionBar;->getActionMenuViewOnMeasure(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 206
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-boolean v4, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 180
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v6, v9, :cond_3

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    .line 182
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_1

    .line 183
    iput v8, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 188
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 189
    .local v5, "widthSize":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_2

    iget v6, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_2

    .line 190
    iput v5, p0, Landroid/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 191
    iget-object v6, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 194
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ActionMenuView;->getChildCount()I

    move-result v1

    .line 195
    .local v1, "childCount":I
    iget-boolean v6, p0, Landroid/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_4

    if-lez v1, :cond_4

    .line 196
    invoke-direct {p0, p1, p2}, Landroid/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_0

    .end local v1    # "childCount":I
    .end local v5    # "widthSize":I
    :cond_3
    move v6, v8

    .line 180
    goto :goto_1

    .line 199
    .restart local v1    # "childCount":I
    .restart local v5    # "widthSize":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 200
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/ActionMenuView$LayoutParams;

    .line 202
    .local v3, "lp":Landroid/widget/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/ActionMenuView$LayoutParams;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public peekMenu()Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .prologue
    .line 768
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 769
    return-void
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 688
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 689
    iput-object p2, p0, Landroid/widget/ActionMenuView;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 690
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 156
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 157
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Landroid/widget/ActionMenuView;->mReserveOverflow:Z

    .line 603
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 112
    iget v0, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 113
    iput p1, p0, Landroid/widget/ActionMenuView;->mPopupTheme:I

    .line 114
    if-nez p1, :cond_1

    .line 115
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setPresenter(Landroid/widget/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 136
    iput-object p1, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    .line 137
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/widget/ActionMenuPresenter;->setMenuView(Landroid/widget/ActionMenuView;)V

    .line 138
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuView;->mPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
