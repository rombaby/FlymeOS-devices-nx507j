.class final Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay$1;
.super Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;
.source "LiveDisplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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
    .line 404
    invoke-static {p1}, Lmokee/hardware/MKHardwareManager;->getInstance(Landroid/content/Context;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    .line 406
    .local v0, "hardware":Lmokee/hardware/MKHardwareManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 408
    const-string v2, "live_display_color_profile"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 411
    const-string v2, "display_auto_outdoor_mode"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 414
    const-string v2, "display_color_enhance"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 417
    const-string v2, "display_low_power"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_3
    # invokes: Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->isPostProcessingSupported(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/livedisplay/LiveDisplay;->access$400(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 420
    const-string v2, "screencolor_settings"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :goto_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lmokee/hardware/MKHardwareManager;->isSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 425
    const-string v2, "gamma_tuning"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_4
    return-object v1

    .line 422
    :cond_5
    const-string v2, "color_calibration"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 396
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f070027

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 397
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    return-object v0
.end method
