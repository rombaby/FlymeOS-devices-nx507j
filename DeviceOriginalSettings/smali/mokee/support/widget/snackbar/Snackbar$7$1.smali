.class Lmokee/support/widget/snackbar/Snackbar$7$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/Snackbar$7;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmokee/support/widget/snackbar/Snackbar$7;


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/Snackbar$7;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 928
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar$7;->access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->access$22(Lmokee/support/widget/snackbar/Snackbar;J)V

    .line 930
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar$7;->access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mTimeRemaining:J
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$11(Lmokee/support/widget/snackbar/Snackbar;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar$7;->access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar$7;->access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Lmokee/support/widget/snackbar/Snackbar;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lmokee/support/widget/snackbar/Snackbar;->access$14(Lmokee/support/widget/snackbar/Snackbar;J)V

    .line 933
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar$7;->access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->shouldStartTimer()Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$23(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$7;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar$7;->access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->startTimer()V
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$24(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 936
    :cond_1
    return-void
.end method
