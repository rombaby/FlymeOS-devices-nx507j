.class Lcom/android/internal/widget/ActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$102(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 113
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$002(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 106
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z
    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->access$102(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 107
    return-void
.end method
