.class Lmokee/support/widget/snackbar/Snackbar$8$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/Snackbar$8;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmokee/support/widget/snackbar/Snackbar$8;


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/Snackbar$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$8$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$8;

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$8$1;->this$1:Lmokee/support/widget/snackbar/Snackbar$8;

    # getter for: Lmokee/support/widget/snackbar/Snackbar$8;->this$0:Lmokee/support/widget/snackbar/Snackbar;
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar$8;->access$0(Lmokee/support/widget/snackbar/Snackbar$8;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    # invokes: Lmokee/support/widget/snackbar/Snackbar;->finish()V
    invoke-static {v0}, Lmokee/support/widget/snackbar/Snackbar;->access$25(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 1037
    return-void
.end method
