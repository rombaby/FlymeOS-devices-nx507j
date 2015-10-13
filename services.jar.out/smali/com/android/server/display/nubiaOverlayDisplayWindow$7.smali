.class Lcom/android/server/display/nubiaOverlayDisplayWindow$7;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragCurrentX:F

.field private mDragCurrentY:F

.field private mDragStartX:F

.field private mDragStartY:F

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v5, 0x4

    .line 977
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-boolean v1, v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isLongClick:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    .line 1038
    :goto_0
    return v0

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 986
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    .line 987
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    .line 989
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 1038
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 992
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartX:F

    .line 993
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartY:F

    goto :goto_0

    .line 997
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 998
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    .line 1007
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartX:F

    .line 1008
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartY:F

    goto :goto_1

    .line 999
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v1, v2

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setSizerMaskSize(F)V

    goto :goto_2

    .line 1012
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideScreenHigherBarAnimation()V
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1013
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherBarCenter:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 1014
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentX:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustScreenPosition(FF)V

    .line 1015
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1025
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetInputRect()V

    .line 1027
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterRound:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterHalo:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1030
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1031
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1032
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintUpper:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1033
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingHintLower:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMovingMask:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1035
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iput-boolean v0, v1, Lcom/android/server/display/nubiaOverlayDisplayWindow;->isLongClick:Z

    goto/16 :goto_1

    .line 1016
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 1017
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragCurrentY:F

    iget v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->mDragStartY:F

    sub-float/2addr v2, v3

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)V

    .line 1018
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setScreenSize(F)V

    .line 1022
    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$7;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v1, v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    goto/16 :goto_3

    .line 989
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
