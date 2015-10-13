.class Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "HorizontalPagedViewScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/HorizontalPagedViewScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveAnimation"
.end annotation


# instance fields
.field mOffset:I

.field mTarget:Landroid/view/View;

.field final synthetic this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;


# direct methods
.method public constructor <init>(Lnubia/widget/HorizontalPagedViewScrollHelper;FFFF)V
    .locals 1
    .param p2, "fromXDelta"    # F
    .param p3, "toXDelta"    # F
    .param p4, "fromYDelta"    # F
    .param p5, "toYDelta"    # F

    .prologue
    .line 453
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;

    .line 454
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mTarget:Landroid/view/View;

    .line 450
    const/4 v0, 0x0

    iput v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mOffset:I

    .line 456
    return-void
.end method


# virtual methods
.method public getOffset()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mOffset:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 467
    iput p1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mOffset:I

    .line 468
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 459
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mTarget:Landroid/view/View;

    .line 460
    return-void
.end method
