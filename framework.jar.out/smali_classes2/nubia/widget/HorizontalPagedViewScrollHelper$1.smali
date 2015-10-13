.class Lnubia/widget/HorizontalPagedViewScrollHelper$1;
.super Ljava/lang/Object;
.source "HorizontalPagedViewScrollHelper.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnubia/widget/HorizontalPagedViewScrollHelper;->createAnim(I)Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;


# direct methods
.method constructor <init>(Lnubia/widget/HorizontalPagedViewScrollHelper;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animator"    # Landroid/view/animation/Animation;

    .prologue
    .line 301
    move-object v0, p1

    check-cast v0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;

    .line 302
    .local v0, "anim":Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;
    iget-object v1, v0, Lnubia/widget/HorizontalPagedViewScrollHelper$MoveAnimation;->mTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 303
    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;

    # invokes: Lnubia/widget/HorizontalPagedViewScrollHelper;->allAnimIsClear()Z
    invoke-static {v1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->access$000(Lnubia/widget/HorizontalPagedViewScrollHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lnubia/widget/HorizontalPagedViewScrollHelper;->mMoving:Z

    .line 305
    iget-object v1, p0, Lnubia/widget/HorizontalPagedViewScrollHelper$1;->this$0:Lnubia/widget/HorizontalPagedViewScrollHelper;

    invoke-virtual {v1}, Lnubia/widget/HorizontalPagedViewScrollHelper;->layoutchild()V

    .line 307
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animator"    # Landroid/view/animation/Animation;

    .prologue
    .line 311
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animator"    # Landroid/view/animation/Animation;

    .prologue
    .line 296
    return-void
.end method
