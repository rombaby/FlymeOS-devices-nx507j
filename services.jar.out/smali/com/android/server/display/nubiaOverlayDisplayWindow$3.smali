.class Lcom/android/server/display/nubiaOverlayDisplayWindow$3;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 851
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 854
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 855
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 856
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherRightButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherLeftButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$3;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarVisible:Z

    .line 861
    return-void
.end method
