.class Lnubia/widget/HorizontalPagedViewScrollHelper;
.super Ljava/lang/Object;
.source "HorizontalPagedViewScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
    }
.end annotation


# static fields
.field private static final FLAG_SCROLL_TO_LEFT:I = -0x1

.field private static final FLAG_SCROLL_TO_RIGHT:I = 0x1

.field private static final FLAG_TO_CURRENT:I = 0x0

.field private static final SNAP_VELOCITY:I = 0x32

.field private static final VALUE_UNDEFINE:I = -0x1


# instance fields
.field private mCurrentView:I

.field mMoving:Z

.field private mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mMoving:Z

    .line 32
    invoke-direct {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->reset()V

    .line 33
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getViewList()Ljava/util/List;

    .line 34
    return-void
.end method

.method private IsViewShowWhenAnimation(Landroid/view/View;I)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 268
    .local v4, "size":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 269
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 270
    .local v3, "right":I
    move v0, v2

    .local v0, "A":I
    move v1, v3

    .line 272
    .local v1, "B":I
    if-gez p2, :cond_1

    .line 273
    add-int/2addr v0, p2

    .line 280
    :cond_0
    :goto_0
    if-ge v0, v4, :cond_2

    if-lez v1, :cond_2

    .line 281
    const/4 v5, 0x1

    .line 283
    :goto_1
    return v5

    .line 274
    :cond_1
    if-lez p2, :cond_0

    .line 275
    add-int/2addr v1, p2

    goto :goto_0

    .line 283
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lnubia/widget/HorizontalPagedViewScrollHelper;)Z
    .locals 1
    .param p0, "x0"    # Lnubia/widget/HorizontalPagedViewScrollHelper;

    .prologue
    .line 14
    invoke-direct {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->allAnimIsClear()Z

    move-result v0

    return v0
.end method

.method private adjustTailLayout(I)V
    .locals 11
    .param p1, "flag"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 200
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const/4 v7, -0x1

    if-ne p1, v7, :cond_2

    .line 207
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    .line 208
    .local v2, "nCount":I
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    add-int/lit8 v8, v2, -0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 209
    .local v4, "viewLeft":Landroid/view/View;
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 210
    .local v3, "viewEnd":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v0

    .line 211
    .local v0, "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v1, v0, v7

    .line 212
    .local v1, "childRight":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v3, v0, v9, v1, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 214
    .end local v0    # "childLeft":I
    .end local v1    # "childRight":I
    .end local v2    # "nCount":I
    .end local v3    # "viewEnd":Landroid/view/View;
    .end local v4    # "viewLeft":Landroid/view/View;
    :cond_2
    if-ne p1, v10, :cond_0

    .line 217
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 218
    .local v6, "viewZero":Landroid/view/View;
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 219
    .local v5, "viewNext":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 220
    .restart local v1    # "childRight":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v0, v1, v7

    .line 221
    .restart local v0    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v0, v9, v1, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private allAnimIsClear()Z
    .locals 4

    .prologue
    .line 318
    iget-object v3, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 319
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 320
    iget-object v3, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 322
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 323
    const/4 v3, 0x0

    .line 326
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v3

    .line 319
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private animationMove(II)V
    .locals 5
    .param p1, "offset"    # I
    .param p2, "speed"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 250
    const/4 v4, 0x1

    iput-boolean v4, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mMoving:Z

    .line 253
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getViewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 254
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 255
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getViewList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 257
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->IsViewShowWhenAnimation(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->createAnim(I)Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;

    move-result-object v0

    .line 259
    .local v0, "anim":Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
    invoke-virtual {v0, v1}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->setView(Landroid/view/View;)V

    .line 260
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    .end local v0    # "anim":Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private changeTargetView(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 227
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 228
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 233
    :cond_0
    :goto_0
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    if-gez v0, :cond_3

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 238
    :cond_1
    :goto_1
    return-void

    .line 229
    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 230
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    goto :goto_0

    .line 235
    :cond_3
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 236
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    goto :goto_1
.end method

.method private createAnim(I)Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
    .locals 7
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 287
    new-instance v0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;

    int-to-float v3, p1

    move-object v1, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;-><init>(Lnubia/widget/HorizontalPagedViewScrollHelper;FFFF)V

    .line 288
    .local v0, "mAnim":Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 289
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->setDuration(J)V

    .line 290
    invoke-virtual {v0, v6}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->setFillEnabled(Z)V

    .line 291
    invoke-virtual {v0, v6}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->setFillAfter(Z)V

    .line 293
    new-instance v1, Lnubia/widget/HorizontalPagedViewScrollHelper$1;

    invoke-direct {v1, p0}, Lnubia/widget/HorizontalPagedViewScrollHelper$1;-><init>(Lnubia/widget/HorizontalPagedViewScrollHelper;)V

    invoke-virtual {v0, v1}, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 314
    return-object v0
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 1
    .param p1, "nIndex"    # I

    .prologue
    .line 241
    if-ltz p1, :cond_0

    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x0

    .line 244
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method private getViewIndexByPageNumber(I)I
    .locals 3
    .param p1, "nPage"    # I

    .prologue
    .line 125
    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 126
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 131
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 126
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private initCurrentView()V
    .locals 4

    .prologue
    .line 63
    iget-object v3, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 65
    iget-object v3, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 68
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-nez v3, :cond_1

    .line 69
    iput v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 73
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 64
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private moveViewOnList(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 170
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    goto :goto_0

    .line 174
    :cond_2
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    goto :goto_0

    .line 176
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 178
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_4

    .line 179
    iput v3, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    goto :goto_0

    .line 181
    :cond_4
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 46
    return-void
.end method

.method private snapToPageIndex(II)V
    .locals 3
    .param p1, "nIndex"    # I
    .param p2, "speed"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "viewTarget":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 114
    .local v0, "left":I
    if-eqz v0, :cond_0

    .line 115
    neg-int v2, v0

    invoke-direct {p0, v2, p2}, Lnubia/widget/HorizontalPagedViewScrollHelper;->animationMove(II)V

    .line 118
    .end local v0    # "left":I
    :cond_0
    return-void
.end method

.method private swapViewIndexAndChangeLayout(I)V
    .locals 2
    .param p1, "flag"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->moveViewOnList(I)V

    .line 194
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->adjustTailLayout(I)V

    goto :goto_0
.end method

.method private swapViewforSaveScroll(I)Z
    .locals 5
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "bResult":Z
    iget-object v2, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 145
    .local v1, "nCount":I
    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    .line 146
    const/4 v0, 0x0

    .line 159
    .end local v0    # "bResult":Z
    :cond_0
    :goto_0
    return v0

    .line 149
    .restart local v0    # "bResult":Z
    :cond_1
    if-ne p1, v4, :cond_2

    .line 150
    iget v2, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_0

    .line 151
    invoke-direct {p0, v4}, Lnubia/widget/HorizontalPagedViewScrollHelper;->swapViewIndexAndChangeLayout(I)V

    goto :goto_0

    .line 153
    :cond_2
    if-ne p1, v3, :cond_0

    .line 154
    iget v2, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    if-nez v2, :cond_0

    .line 155
    invoke-direct {p0, v3}, Lnubia/widget/HorizontalPagedViewScrollHelper;->swapViewIndexAndChangeLayout(I)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 330
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    invoke-direct {p0, v0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    .line 436
    :cond_0
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mMoving:Z

    return v0
.end method

.method public layout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->isMoving()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 354
    :cond_0
    return-void

    .line 337
    :cond_1
    sub-int v5, p5, p3

    .line 339
    .local v5, "mHeight":I
    const/4 v1, -0x1

    .line 340
    .local v1, "childLeft":I
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 342
    .local v3, "count":I
    iget v6, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 343
    .local v6, "nCenterObject":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 344
    iget-object v7, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 345
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 347
    .local v2, "childWidth":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 348
    neg-int v7, v2

    mul-int v1, v7, v6

    .line 350
    :cond_2
    const/4 v7, 0x0

    add-int v8, v1, v2

    invoke-virtual {v0, v1, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 351
    add-int/2addr v1, v2

    .line 343
    .end local v2    # "childWidth":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public layoutchild()V
    .locals 9

    .prologue
    .line 357
    invoke-virtual {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->isMoving()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 376
    :cond_0
    return-void

    .line 360
    :cond_1
    const/4 v1, -0x1

    .line 361
    .local v1, "childLeft":I
    iget-object v6, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 363
    .local v3, "count":I
    iget v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 364
    .local v5, "nCenterObject":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 365
    iget-object v6, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 366
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_3

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 368
    .local v2, "childWidth":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 369
    neg-int v6, v2

    mul-int v1, v6, v5

    .line 371
    :cond_2
    const/4 v6, 0x0

    add-int v7, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 373
    add-int/2addr v1, v2

    .line 364
    .end local v2    # "childWidth":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public measureHeight(II)I
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 409
    const/4 v3, 0x0

    .line 411
    .local v3, "nHeight":I
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 412
    const/4 v4, 0x0

    .line 428
    :goto_0
    return v4

    .line 415
    :cond_0
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 416
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 417
    iget-object v4, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 420
    .local v0, "child":Landroid/widget/GridView;
    invoke-virtual {v0, p1, p2}, Landroid/widget/GridView;->measure(II)V

    .line 423
    invoke-virtual {v0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 424
    invoke-virtual {v0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v3

    .line 416
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/widget/GridView;
    :cond_2
    move v4, v3

    .line 428
    goto :goto_0
.end method

.method public moveView(I)V
    .locals 8
    .param p1, "offsetX"    # I

    .prologue
    .line 379
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 381
    .local v3, "count":I
    if-lez p1, :cond_1

    iget v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    if-nez v5, :cond_1

    .line 382
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    iget v6, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ltz v5, :cond_2

    .line 402
    :cond_0
    return-void

    .line 385
    :cond_1
    if-gez p1, :cond_2

    iget v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    add-int/lit8 v6, v3, -0x1

    if-ne v5, v6, :cond_2

    .line 386
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    iget v6, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lez v5, :cond_0

    .line 392
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 393
    iget-object v5, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 394
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 396
    .local v2, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v1, v5, p1

    .line 397
    .local v1, "childLeft":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 399
    add-int v5, v1, v2

    .line 392
    .end local v1    # "childLeft":I
    .end local v2    # "childWidth":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public pageSize()I
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 441
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->reset()V

    .line 406
    return-void
.end method

.method public setCurrentPage(I)Z
    .locals 2
    .param p1, "nPage"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->getViewIndexByPageNumber(I)I

    move-result v0

    .line 94
    .local v0, "nIndex":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 95
    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    .line 96
    const/4 v1, 0x1

    .line 98
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public snapToFitView(I)V
    .locals 2
    .param p1, "speed"    # I

    .prologue
    .line 76
    iget v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    if-gez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    .local v0, "nFlag":I
    const/16 v1, 0x32

    if-le p1, v1, :cond_2

    .line 82
    const/4 v0, 0x1

    .line 87
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->swapViewforSaveScroll(I)Z

    .line 88
    invoke-direct {p0, v0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->changeTargetView(I)V

    .line 89
    iget v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    invoke-direct {p0, v1, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->snapToPageIndex(II)V

    goto :goto_0

    .line 83
    :cond_2
    const/16 v1, -0x32

    if-ge p1, v1, :cond_1

    .line 84
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public snapToPage(I)V
    .locals 2
    .param p1, "nPage"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->setCurrentPage(I)Z

    .line 103
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper;->mCurrentView:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->snapToPageIndex(II)V

    .line 104
    return-void
.end method

.method public startMove(I)V
    .locals 1
    .param p1, "offsetX"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->initCurrentView()V

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "flag":I
    if-gez p1, :cond_1

    .line 53
    const/4 v0, -0x1

    .line 58
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lnubia/widget/HorizontalPagedViewScrollHelper;->swapViewforSaveScroll(I)Z

    .line 59
    return-void

    .line 54
    :cond_1
    if-lez p1, :cond_0

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method
