.class Lcom/android/server/display/nubiaOverlayDisplayWindow$12;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;->showExitAnimation()V
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
    .line 1456
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentNew:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowContentBg:Landroid/view/View;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1469
    const/4 v0, 0x0

    # setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mWindowVisible:Z
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4602(Z)Z

    .line 1470
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mMutiWindowContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$MutiWindowContentObserver;->unobserve()V

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1473
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mChangeSideContentObserver:Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4800(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow$ChangeSideContentObserver;->unobserve()V

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1700(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mClickRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$1600(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mSFHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$12;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mCloseSFRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$4900(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1476
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1463
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1460
    return-void
.end method
