.class Lmokee/support/widget/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "SnackbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$snackbar:Lmokee/support/widget/snackbar/Snackbar;


# direct methods
.method constructor <init>(Lmokee/support/widget/snackbar/Snackbar;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    iput-object p2, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$activity:Landroid/app/Activity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-static {}, Lmokee/support/widget/snackbar/SnackbarManager;->getCurrentSnackbar()Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v0

    .line 71
    .local v0, "currentSnackbar":Lmokee/support/widget/snackbar/Snackbar;
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->isDimissing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {v0, v3}, Lmokee/support/widget/snackbar/Snackbar;->dismissAnimation(Z)Lmokee/support/widget/snackbar/Snackbar;

    .line 74
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismissByReplace()V

    .line 75
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->access$0(Ljava/lang/ref/WeakReference;)V

    .line 76
    iget-object v1, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-virtual {v1, v3}, Lmokee/support/widget/snackbar/Snackbar;->showAnimation(Z)Lmokee/support/widget/snackbar/Snackbar;

    .line 77
    iget-object v1, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->showByReplace(Landroid/app/Activity;)V

    .line 84
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss()V

    .line 82
    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lmokee/support/widget/snackbar/SnackbarManager;->access$0(Ljava/lang/ref/WeakReference;)V

    .line 83
    iget-object v1, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$snackbar:Lmokee/support/widget/snackbar/Snackbar;

    iget-object v2, p0, Lmokee/support/widget/snackbar/SnackbarManager$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lmokee/support/widget/snackbar/Snackbar;->show(Landroid/app/Activity;)V

    goto :goto_0
.end method
