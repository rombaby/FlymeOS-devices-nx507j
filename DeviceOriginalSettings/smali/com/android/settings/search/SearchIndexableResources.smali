.class public final Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const v10, 0x7f0200af

    const v9, 0x7f0200a3

    const v6, 0x7f0200c8

    const v8, 0x7f0200be

    const v7, 0x7f0200b7

    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f070067

    const-class v5, Lcom/flyme/deviceoriginalsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f070068

    const-class v5, Lcom/flyme/deviceoriginalsettings/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02009f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200cb

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ae

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/notification/NotificationManagerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/notification/NotificationManagerSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/notification/NotificationManagerSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f07005d

    const-class v5, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c2

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f070034

    const-class v5, Lcom/flyme/deviceoriginalsettings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02009d

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f07005f

    const-class v5, Lcom/flyme/deviceoriginalsettings/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f070029

    const-class v5, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/voice/VoiceInputSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/voice/VoiceInputSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/voice/VoiceInputSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02009b

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f070015

    const-class v5, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a4

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020098

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ba

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020097

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/ButtonSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f070053

    const-class v5, Lcom/flyme/deviceoriginalsettings/cyanogenmod/StatusBarSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200aa

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/NotificationDrawerSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/cyanogenmod/NotificationDrawerSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f07002f

    const-class v5, Lcom/flyme/deviceoriginalsettings/cyanogenmod/NotificationDrawerSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/flyme/deviceoriginalsettings/cyanogenmod/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200bb

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
