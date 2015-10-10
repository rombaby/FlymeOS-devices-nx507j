.class Lmokee/support/widget/snackbar/Snackbar$5;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/Snackbar;->init(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/ViewGroup$MarginLayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/support/widget/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/Snackbar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .prologue
    .line 719
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 724
    if-eqz p1, :cond_1

    .line 725
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mActionSwipeListener:Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$6(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mActionSwipeListener:Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$6(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;

    move-result-object v0

    invoke-interface {v0}, Lmokee/support/widget/snackbar/listeners/ActionSwipeListener;->onSwipeToDismiss()V

    .line 728
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    const/4 v1, 0x0

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->dismiss(Z)V
    invoke-static {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->access$7(Lmokee/support/widget/snackbar/Snackbar;Z)V

    .line 730
    :cond_1
    return-void
.end method

.method public pauseTimer(Z)V
    .locals 8
    .param p1, "shouldPause"    # Z

    .prologue
    .line 734
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->isIndefiniteDuration()Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$8(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 737
    :cond_0
    if-eqz p1, :cond_1

    .line 738
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mDismissRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->access$9(Lmokee/support/widget/snackbar/Snackbar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 740
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->access$10(Lmokee/support/widget/snackbar/Snackbar;J)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mTimeRemaining:J
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$11(Lmokee/support/widget/snackbar/Snackbar;)J

    move-result-wide v2

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mSnackbarFinish:J
    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->access$12(Lmokee/support/widget/snackbar/Snackbar;)J

    move-result-wide v4

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mSnackbarStart:J
    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->access$13(Lmokee/support/widget/snackbar/Snackbar;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->access$14(Lmokee/support/widget/snackbar/Snackbar;J)V

    .line 744
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$5;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mTimeRemaining:J
    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->access$11(Lmokee/support/widget/snackbar/Snackbar;)J

    move-result-wide v2

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->startTimer(J)V
    invoke-static {v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->access$15(Lmokee/support/widget/snackbar/Snackbar;J)V

    goto :goto_0
.end method
