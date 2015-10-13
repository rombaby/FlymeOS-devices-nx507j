.class Lcom/android/server/display/nubiaOverlayDisplayWindow$13;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;->changeSideAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1512
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1535
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1524
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-boolean v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-boolean v3, v3, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1526
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1527
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1528
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1529
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1531
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1532
    return-void

    :cond_0
    move v0, v2

    .line 1524
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1525
    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1521
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x4

    .line 1515
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1516
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$13;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1517
    return-void
.end method
