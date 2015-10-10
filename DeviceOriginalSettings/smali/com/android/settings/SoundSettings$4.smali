.class final Lcom/flyme/deviceoriginalsettings/SoundSettings$4;
.super Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v1, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 625
    const-string v3, "notification_volume"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    :goto_0
    const-string v3, "vibrator"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 632
    .local v2, "vib":Landroid/os/Vibrator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-nez v3, :cond_1

    .line 633
    :cond_0
    const-string v3, "vibrate"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_1
    invoke-static {p1}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 636
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 637
    const-string v3, "vibration_intensity"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_2
    return-object v1

    .line 627
    .end local v0    # "hardware":Lmokee/hardware/MKHardwareManager;
    .end local v2    # "vib":Landroid/os/Vibrator;
    :cond_3
    const-string v3, "ring_volume"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    const-string v3, "ringtone"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    const-string v3, "vibrate_when_ringing"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 618
    .local v0, "sir":Landroid/provider/SearchIndexableResource;
    const v1, 0x7f070051

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 619
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 612
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;->prepare()V

    .line 613
    return-void
.end method
