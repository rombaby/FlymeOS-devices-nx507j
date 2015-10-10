.class Lmokee/support/widget/snackbar/Snackbar$4;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 690
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mActionClickListener:Lmokee/support/widget/snackbar/listeners/ActionClickListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$0(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/ActionClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mIsDismissing:Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$1(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mActionClicked:Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$2(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mShouldAllowMultipleActionClicks:Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$3(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mActionClickListener:Lmokee/support/widget/snackbar/listeners/ActionClickListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$0(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/ActionClickListener;

    move-result-object v0

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lmokee/support/widget/snackbar/listeners/ActionClickListener;->onActionClicked(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 698
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->access$4(Lmokee/support/widget/snackbar/Snackbar;Z)V

    .line 701
    :cond_1
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mShouldDismissOnActionClicked:Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$5(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$4;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss()V

    .line 704
    :cond_2
    return-void
.end method
