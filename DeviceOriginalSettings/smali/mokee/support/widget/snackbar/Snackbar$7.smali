.class Lmokee/support/widget/snackbar/Snackbar$7;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmokee/support/widget/snackbar/Snackbar$7;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 918
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->mEventListener:Lmokee/support/widget/snackbar/listeners/EventListener;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$16(Lmokee/support/widget/snackbar/Snackbar;)Lmokee/support/widget/snackbar/listeners/EventListener;

    move-result-object v0

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-interface {v0, v1}, Lmokee/support/widget/snackbar/listeners/EventListener;->onShown(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 920
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->access$19(Lmokee/support/widget/snackbar/Snackbar;Z)V

    .line 923
    :cond_0
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v1, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    # getter for: Lmokee/support/widget/snackbar/Snackbar;->snackbarText:Landroid/widget/TextView;
    invoke-static {v1}, Lmokee/support/widget/snackbar/Snackbar;->access$20(Lmokee/support/widget/snackbar/Snackbar;)Landroid/widget/TextView;

    move-result-object v1

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->focusForAccessibility(Landroid/view/View;)V
    invoke-static {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->access$21(Lmokee/support/widget/snackbar/Snackbar;Landroid/view/View;)V

    .line 925
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$7;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    new-instance v1, Lmokee/support/widget/snackbar/Snackbar$7$1;

    invoke-direct {v1, p0}, Lmokee/support/widget/snackbar/Snackbar$7$1;-><init>(Lmokee/support/widget/snackbar/Snackbar$7;)V

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    .line 938
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 942
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 914
    return-void
.end method
