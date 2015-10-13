.class Lcom/android/server/display/nubiaOverlayDisplayWindow$6;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 936
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 941
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 942
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 943
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isLongClick:Z

    .line 944
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showScreenHigherBarAnimation()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 945
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->closeInputRect()V

    .line 946
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetMovingHintAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 948
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetMovingMask()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 949
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingHint()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 950
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 953
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showMovingStartAnimation()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 962
    :cond_0
    :goto_0
    return v4

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetSizerMask()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 957
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 958
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 960
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$6;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    goto :goto_0
.end method
