.class Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity$2;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity$2;->this$0:Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity$2;->this$0:Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;

    # getter for: Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->access$400(Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity$2;->this$0:Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;

    # getter for: Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->mMinValue:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->access$000(Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;)I

    move-result v1

    int-to-double v2, v1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity$2;->this$0:Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;

    # getter for: Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->mMaxValue:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->access$100(Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;)I

    move-result v1

    int-to-double v4, v1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity$2;->this$0:Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;

    # getter for: Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->mDefaultValue:I
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->access$200(Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;)I

    move-result v1

    # invokes: Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->intensityToPercent(DDI)I
    invoke-static {v2, v3, v4, v5, v1}, Lcom/flyme/deviceoriginalsettings/hardware/VibratorIntensity;->access$300(DDI)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    return-void
.end method
