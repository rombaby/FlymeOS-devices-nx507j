.class Lmokee/support/widget/snackbar/Snackbar$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/support/widget/snackbar/Snackbar;
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
    iput-object p1, p0, Lmokee/support/widget/snackbar/Snackbar$1;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lmokee/support/widget/snackbar/Snackbar$1;->this$0:Lmokee/support/widget/snackbar/Snackbar;

    invoke-virtual {v0}, Lmokee/support/widget/snackbar/Snackbar;->dismiss()V

    .line 144
    return-void
.end method
