.class Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;
.super Ljava/lang/Object;
.source "DoubleClickScreenOnCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x0

    .line 162
    const/high16 v0, 0x40a00000    # 5.0f

    .line 163
    .local v0, "TYPICAL_PROXIMITY_THRESHOLD":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 165
    .local v2, "proximityThreshold":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    const/4 v1, 0x1

    .line 167
    .local v1, "near":Z
    :cond_0
    if-nez v1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    # invokes: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->turnScreenOn()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$000(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)V

    .line 170
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v3, v3, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mWaitTimeouthandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v4, v4, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v3, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v4, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    iget-object v4, v4, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl$3;->this$0:Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;

    # getter for: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->mSensorEventLister:Landroid/hardware/SensorEventListener;
    invoke-static {v5}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$100(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;)Landroid/hardware/SensorEventListener;

    move-result-object v5

    # invokes: Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->disableProximity(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V
    invoke-static {v3, v4, v5, v1}, Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;->access$200(Lcom/android/internal/policy/impl/DoubleClickScreenOnCtrl;Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Z)V

    .line 172
    return-void
.end method
