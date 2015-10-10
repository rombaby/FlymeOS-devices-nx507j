.class Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockGesture.java"

# interfaces
.implements Lcom/android/internal/widget/LockGestureView$OnLockGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gestureInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0a048c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 166
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterLeftButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$200(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mFooterRightButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$300(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    return-void
.end method


# virtual methods
.method public onGestureCleared()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 141
    return-void
.end method

.method public onGestureDetected(Landroid/gesture/Gesture;)V
    .locals 3
    .param p1, "gesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->NeedToConfirm:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    invoke-virtual {v0, p1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->gestureMatch(Landroid/gesture/Gesture;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ChoiceConfirmed:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->ConfirmWrong:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->Introduction:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    if-ne v0, v1, :cond_5

    .line 153
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iput-object p1, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mChosenGesture:Landroid/gesture/Gesture;

    .line 154
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    const-string v1, "lock_gesture"

    invoke-virtual {v0, v1}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    const-string v1, "lock_gesture"

    invoke-virtual {v0, v1}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mGestureStore:Landroid/gesture/GestureStore;

    const-string v1, "lock_gesture"

    invoke-virtual {v0, v1, p1}, Landroid/gesture/GestureStore;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    .line 157
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    sget-object v1, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;->FirstChoiceValid:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->updateStage(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;)V

    goto :goto_0

    .line 159
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mUiStage:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$100(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the gesture."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGestureStart()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mClearGestureRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 135
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    sget-object v1, Lcom/android/internal/widget/LockGestureView$DisplayMode;->Correct:Lcom/android/internal/widget/LockGestureView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockGestureView;->setDisplayMode(Lcom/android/internal/widget/LockGestureView$DisplayMode;)V

    .line 136
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$1;->gestureInProgress()V

    .line 137
    return-void
.end method
