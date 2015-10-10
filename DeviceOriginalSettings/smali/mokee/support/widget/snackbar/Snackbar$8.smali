.class Lmokee/support/widget/snackbar/Snackbar$8;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/Snackbar;->dismiss(Z)V
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
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$8;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lmokee/support/widget/snackbar/Snackbar$8;)Lmokee/support/widget/snackbar/Snackbar;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$8;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1033
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$8;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    new-instance v1, Lmokee/support/widget/snackbar/Snackbar$8$1;

    invoke-direct {v1, p0}, Lmokee/support/widget/snackbar/Snackbar$8$1;-><init>(Lmokee/support/widget/snackbar/Snackbar$8;)V

    invoke-virtual {v0, v1}, Lmokee/support/widget/snackbar/Snackbar;->post(Ljava/lang/Runnable;)Z

    .line 1039
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1043
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1029
    return-void
.end method
