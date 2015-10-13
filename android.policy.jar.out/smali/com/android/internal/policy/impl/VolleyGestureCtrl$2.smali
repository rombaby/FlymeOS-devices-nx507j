.class Lcom/android/internal/policy/impl/VolleyGestureCtrl$2;
.super Ljava/lang/Object;
.source "VolleyGestureCtrl.java"

# interfaces
.implements Lnubia/gesture/sensor/MotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/VolleyGestureCtrl;->enableVolleyGesture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/VolleyGestureCtrl;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl$2;->this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionChanged(Lnubia/gesture/sensor/MotionState;)V
    .locals 2
    .param p1, "state"    # Lnubia/gesture/sensor/MotionState;

    .prologue
    .line 129
    invoke-virtual {p1}, Lnubia/gesture/sensor/MotionState;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/VolleyGestureCtrl$2;->this$0:Lcom/android/internal/policy/impl/VolleyGestureCtrl;

    # invokes: Lcom/android/internal/policy/impl/VolleyGestureCtrl;->dispatchVolleyEvent(Lnubia/gesture/sensor/MotionState;)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/VolleyGestureCtrl;->access$200(Lcom/android/internal/policy/impl/VolleyGestureCtrl;Lnubia/gesture/sensor/MotionState;)V

    .line 131
    :cond_0
    return-void
.end method
