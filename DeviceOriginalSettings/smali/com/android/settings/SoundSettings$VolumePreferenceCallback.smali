.class final Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/flyme/deviceoriginalsettings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;Lcom/flyme/deviceoriginalsettings/SoundSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/SoundSettings;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/SoundSettings$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 278
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$500(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mIncreasingRingVolume:Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$500(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/notification/IncreasingRingVolumePreference;->stopSample()V

    .line 284
    :cond_1
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 285
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/flyme/deviceoriginalsettings/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    :cond_2
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 294
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 300
    :cond_0
    return-void
.end method
