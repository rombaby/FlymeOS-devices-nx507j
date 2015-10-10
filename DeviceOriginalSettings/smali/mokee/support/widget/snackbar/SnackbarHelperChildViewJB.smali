.class Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;
.super Landroid/view/View;
.source "SnackbarHelperChildViewJB.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;->setSaveEnabled(Z)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;->setWillNotDraw(Z)V

    .line 31
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;->setVisibility(I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 2
    .param p1, "visible"    # I

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 38
    invoke-virtual {p0}, Lmokee/support/widget/snackbar/SnackbarHelperChildViewJB;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 39
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lmokee/support/widget/snackbar/Snackbar;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lmokee/support/widget/snackbar/Snackbar;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Lmokee/support/widget/snackbar/Snackbar;->dispatchOnWindowSystemUiVisibilityChangedCompat(I)V

    .line 42
    :cond_0
    return-void
.end method
