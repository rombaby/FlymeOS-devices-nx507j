.class Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateDisplayRotationPreferenceDescription()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$000(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    .line 142
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DisplaySettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/DisplaySettings;->updateAccelerometerRotationSwitch()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/DisplaySettings;->access$100(Lcom/flyme/deviceoriginalsettings/DisplaySettings;)V

    .line 143
    return-void
.end method
