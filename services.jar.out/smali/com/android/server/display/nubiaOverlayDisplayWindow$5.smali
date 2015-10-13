.class Lcom/android/server/display/nubiaOverlayDisplayWindow$5;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
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
    .line 907
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 911
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-boolean v0, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 914
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 915
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iput-boolean v4, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    .line 929
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showScreenHigherBarAnimation()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 922
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 923
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 924
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$5;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    goto :goto_0
.end method
