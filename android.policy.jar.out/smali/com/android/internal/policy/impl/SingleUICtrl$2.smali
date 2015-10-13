.class Lcom/android/internal/policy/impl/SingleUICtrl$2;
.super Ljava/lang/Object;
.source "SingleUICtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/SingleUICtrl;->showToastByRunnable(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

.field final synthetic val$toBeShowed:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SingleUICtrl;I)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$2;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    iput p2, p0, Lcom/android/internal/policy/impl/SingleUICtrl$2;->val$toBeShowed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/SingleUICtrl$2;->this$0:Lcom/android/internal/policy/impl/SingleUICtrl;

    # getter for: Lcom/android/internal/policy/impl/SingleUICtrl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/SingleUICtrl;->access$200(Lcom/android/internal/policy/impl/SingleUICtrl;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/SingleUICtrl$2;->val$toBeShowed:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    return-void
.end method
