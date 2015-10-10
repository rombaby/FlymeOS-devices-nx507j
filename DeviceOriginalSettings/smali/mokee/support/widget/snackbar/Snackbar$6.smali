.class Lmokee/support/widget/snackbar/Snackbar$6;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/Snackbar;->showInternal(Landroid/app/Activity;Landroid/view/ViewGroup$MarginLayoutParams;Landroid/view/ViewGroup;)V
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
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 888
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mIsShowingByReplace:Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$17(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lmokee/support/widget/snackbar/listeners/EventListener;->onShowByReplace(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 894
    :goto_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mShowAnimated:Z
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$18(Lmokee/support/widget/snackbar/Snackbar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lmokee/support/widget/snackbar/listeners/EventListener;->onShown(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 896
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->access$19(Lmokee/support/widget/snackbar/Snackbar;Z)V

    .line 899
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 892
    :cond_1
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$6;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lmokee/support/widget/snackbar/listeners/EventListener;->onShow(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_0
.end method
