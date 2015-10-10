.class Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockGesture.java"

# interfaces
.implements Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureCleared()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockGestureView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public onGestureDetected(Landroid/gesture/Gesture;)V
    .locals 5
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 265
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$200(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkGesture(Landroid/gesture/Gesture;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 270
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 281
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # ++operator for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$304(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 274
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$200(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 275
    .local v0, "deadline":J
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$400(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;J)V

    goto :goto_0

    .line 277
    .end local v0    # "deadline":J
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    sget-object v4, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;->NeedToUnlockWrong:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;

    # invokes: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V
    invoke-static {v3, v4}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$500(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$Stage;)V

    .line 278
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->postClearPatternRunnable()V
    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$600(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)V

    goto :goto_0
.end method

.method public onGestureStart()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockGestureView;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 257
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockGestureView;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Correct:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V

    .line 258
    return-void
.end method
