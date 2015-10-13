.class Lcom/android/server/display/nubiaOverlayDisplayWindow$9;
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
.field private mSlidePosCurrentX:F

.field private mSlidePosCurrentY:F

.field private mSlidePosStartX:F

.field private mSlidePosStartY:F

.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1208
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "single_ui_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1214
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->closeInputRect()V

    .line 1265
    :cond_0
    :goto_0
    return v7

    .line 1219
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentX:F

    .line 1220
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentY:F

    .line 1222
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->needSingleLayerRefreshHere()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1226
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1227
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartX:F

    .line 1228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartY:F

    .line 1229
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->ResetSlideBarAccordingToScreen()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 1230
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1235
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->showHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$2800(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->closeInputRect()V

    goto :goto_0

    .line 1239
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentY:F

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartY:F

    sub-float/2addr v1, v2

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)V

    .line 1240
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setSizerMaskSize(F)V

    .line 1244
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentX:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartX:F

    .line 1245
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentY:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartY:F

    goto/16 :goto_0

    .line 1248
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1249
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentY:F

    iget v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartY:F

    sub-float/2addr v1, v2

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->adjustSlideBarBlockPosition(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3600(Lcom/android/server/display/nubiaOverlayDisplayWindow;F)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumb:Landroid/view/View;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMinWidthVitrualScreen:I
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->rate:F
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->setScreenSize(F)V

    .line 1254
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentX:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartX:F

    .line 1255
    iget v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosCurrentY:F

    iput v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->mSlidePosStartY:F

    .line 1256
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerMask:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHigherCenterButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizerButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1260
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1261
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSizeSlideBarThumbHalo:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$3500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->hideHaloAnimation(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4000(Lcom/android/server/display/nubiaOverlayDisplayWindow;Landroid/view/View;)V

    .line 1262
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$9;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->resetInputRect()V

    goto/16 :goto_0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
