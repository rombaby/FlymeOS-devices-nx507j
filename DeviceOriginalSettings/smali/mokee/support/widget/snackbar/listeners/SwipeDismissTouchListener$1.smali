.class Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeDismissTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;->this$0:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;

    iput-object p2, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;->val$view:Landroid/view/View;

    .line 159
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 162
    iget-object v0, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;->this$0:Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;

    iget-object v1, p0, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener$1;->val$view:Landroid/view/View;

    # invokes: Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->performDismiss(Landroid/view/View;)V
    invoke-static {v0, v1}, Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;->access$0(Lmokee/support/widget/snackbar/listeners/SwipeDismissTouchListener;Landroid/view/View;)V

    .line 163
    return-void
.end method
