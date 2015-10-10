.class Lcom/flyme/deviceoriginalsettings/SoundSettings$1;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartingSample()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 97
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mVolumeCallback:Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$100(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 98
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    return-void
.end method
