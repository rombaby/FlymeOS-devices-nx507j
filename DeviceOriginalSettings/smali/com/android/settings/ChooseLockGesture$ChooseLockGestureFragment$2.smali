.class Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockGesture.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 292
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/ChooseLockGesture$ChooseLockGestureFragment;->mLockGestureView:Lcom/android/internal/widget/LockGestureView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockGestureView;->clearGesture()V

    .line 295
    return-void
.end method
