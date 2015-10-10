.class Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockGesture.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 235
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;->access$000(Lcom/flyme/deviceoriginalsettings/ConfirmLockGesture$ConfirmLockGestureFragment;)Lcom/android/internal/widget/LockGestureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    .line 238
    return-void
.end method
