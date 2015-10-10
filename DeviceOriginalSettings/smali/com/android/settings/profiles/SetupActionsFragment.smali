.class public Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DOZE_MAPPING:[I

.field private static final EXPANDED_DESKTOP_MAPPING:[I

.field private static final LOCKMODE_MAPPING:[I


# instance fields
.field mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedPosition:I

.field mListView:Landroid/widget/ListView;

.field mNewProfileMode:Z

.field mProfile:Lmokee/app/Profile;

.field mProfileManager:Lmokee/app/ProfileManager;

.field private mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 134
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    .line 137
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->EXPANDED_DESKTOP_MAPPING:[I

    .line 142
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    return-void

    .line 134
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 137
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 142
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->fillProfileFromCurrentSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->updateProfile()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->rebuildItemList()V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private fillProfileFromCurrentSettings()V
    .locals 4

    .prologue
    .line 393
    new-instance v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$2;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    return-void
.end method

.method public static fillProfileWithCurrentSettings(Landroid/content/Context;Lmokee/app/Profile;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lmokee/app/Profile;

    .prologue
    .line 411
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 412
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/4 v10, 0x7

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 419
    :cond_0
    const-string v8, "location"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 421
    .local v4, "locationManager":Landroid/location/LocationManager;
    const-string v8, "gps"

    invoke-virtual {v4, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 423
    .local v3, "gpsEnabled":Z
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/4 v10, 0x4

    if-eqz v3, :cond_4

    const/4 v8, 0x1

    :goto_1
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 428
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 429
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/4 v10, 0x1

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 434
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/4 v10, 0x5

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 439
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 440
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 442
    .local v2, "cm":Landroid/net/ConnectivityManager;
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_4
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 448
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_1
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/4 v10, 0x2

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    :goto_5
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 456
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 457
    const-string v8, "nfc"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/NfcManager;

    .line 458
    .local v5, "nfcManager":Landroid/nfc/NfcManager;
    new-instance v9, Lmokee/profiles/ConnectionSettings;

    const/16 v10, 0x8

    invoke-virtual {v5}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_6
    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lmokee/profiles/ConnectionSettings;-><init>(IIZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 464
    .end local v5    # "nfcManager":Landroid/nfc/NfcManager;
    :cond_2
    const-string v8, "audio"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 466
    .local v1, "am":Landroid/media/AudioManager;
    new-instance v8, Lmokee/profiles/StreamSettings;

    const/4 v9, 0x4

    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lmokee/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lmokee/app/Profile;->setStreamSettings(Lmokee/profiles/StreamSettings;)V

    .line 470
    new-instance v8, Lmokee/profiles/StreamSettings;

    const/4 v9, 0x3

    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lmokee/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lmokee/app/Profile;->setStreamSettings(Lmokee/profiles/StreamSettings;)V

    .line 474
    new-instance v8, Lmokee/profiles/StreamSettings;

    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lmokee/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lmokee/app/Profile;->setStreamSettings(Lmokee/profiles/StreamSettings;)V

    .line 478
    new-instance v8, Lmokee/profiles/StreamSettings;

    const/4 v9, 0x5

    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lmokee/profiles/StreamSettings;-><init>(IIZ)V

    invoke-virtual {p1, v8}, Lmokee/app/Profile;->setStreamSettings(Lmokee/profiles/StreamSettings;)V

    .line 483
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 486
    const-string v6, "normal"

    .line 495
    .local v6, "ringValue":Ljava/lang/String;
    :goto_7
    new-instance v8, Lmokee/profiles/RingModeSettings;

    const/4 v9, 0x1

    invoke-direct {v8, v6, v9}, Lmokee/profiles/RingModeSettings;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v8}, Lmokee/app/Profile;->setRingMode(Lmokee/profiles/RingModeSettings;)V

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v0, 0x1

    .line 500
    .local v0, "airplaneMode":Z
    :goto_8
    new-instance v9, Lmokee/profiles/AirplaneModeSettings;

    if-eqz v0, :cond_b

    const/4 v8, 0x1

    :goto_9
    const/4 v10, 0x1

    invoke-direct {v9, v8, v10}, Lmokee/profiles/AirplaneModeSettings;-><init>(IZ)V

    invoke-virtual {p1, v9}, Lmokee/app/Profile;->setAirplaneMode(Lmokee/profiles/AirplaneModeSettings;)V

    .line 505
    return-void

    .line 412
    .end local v0    # "airplaneMode":Z
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "gpsEnabled":Z
    .end local v4    # "locationManager":Landroid/location/LocationManager;
    .end local v6    # "ringValue":Ljava/lang/String;
    .end local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 423
    .restart local v3    # "gpsEnabled":Z
    .restart local v4    # "locationManager":Landroid/location/LocationManager;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 429
    .restart local v7    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 434
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 442
    .restart local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 448
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 458
    .restart local v5    # "nfcManager":Landroid/nfc/NfcManager;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 489
    .end local v5    # "nfcManager":Landroid/nfc/NfcManager;
    .restart local v1    # "am":Landroid/media/AudioManager;
    :pswitch_0
    const-string v6, "mute"

    .line 490
    .restart local v6    # "ringValue":Ljava/lang/String;
    goto :goto_7

    .line 492
    .end local v6    # "ringValue":Ljava/lang/String;
    :pswitch_1
    const-string v6, "vibrate"

    .restart local v6    # "ringValue":Ljava/lang/String;
    goto :goto_7

    .line 498
    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 500
    .restart local v0    # "airplaneMode":Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_9

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1, p1}, Lmokee/app/Profile;->getSettingsForConnection(I)Lmokee/profiles/ConnectionSettings;

    move-result-object v0

    .line 329
    .local v0, "settings":Lmokee/profiles/ConnectionSettings;
    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lmokee/profiles/ConnectionSettings;

    .end local v0    # "settings":Lmokee/profiles/ConnectionSettings;
    invoke-direct {v0, p1}, Lmokee/profiles/ConnectionSettings;-><init>(I)V

    .line 331
    .restart local v0    # "settings":Lmokee/profiles/ConnectionSettings;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1, v0}, Lmokee/app/Profile;->setConnectionSettings(Lmokee/profiles/ConnectionSettings;)V

    .line 333
    :cond_0
    new-instance v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    invoke-direct {v1, p1, v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILmokee/profiles/ConnectionSettings;)V

    return-object v1
.end method

.method private generateTriggerItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;
    .locals 2
    .param p1, "whichTrigger"    # I

    .prologue
    .line 346
    new-instance v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-direct {v0, v1, p1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;-><init>(Lmokee/app/Profile;I)V

    return-object v0
.end method

.method private generateVolumeStreamItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 337
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1, p1}, Lmokee/app/Profile;->getSettingsForStream(I)Lmokee/profiles/StreamSettings;

    move-result-object v0

    .line 338
    .local v0, "settings":Lmokee/profiles/StreamSettings;
    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lmokee/profiles/StreamSettings;

    .end local v0    # "settings":Lmokee/profiles/StreamSettings;
    invoke-direct {v0, p1}, Lmokee/profiles/StreamSettings;-><init>(I)V

    .line 340
    .restart local v0    # "settings":Lmokee/profiles/StreamSettings;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1, v0}, Lmokee/app/Profile;->setStreamSettings(Lmokee/profiles/StreamSettings;)V

    .line 342
    :cond_0
    new-instance v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    invoke-direct {v1, p1, v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;-><init>(ILmokee/profiles/StreamSettings;)V

    return-object v1
.end method

.method private openTriggersFragment(I)V
    .locals 7
    .param p1, "openTo"    # I

    .prologue
    .line 1090
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1091
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "Profile"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1092
    const-string v1, "new_profile_mode"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1093
    const-string v1, "current_item"

    invoke-virtual {v2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1095
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SubSettings;

    .line 1096
    .local v0, "pa":Lcom/flyme/deviceoriginalsettings/SubSettings;
    const-class v1, Lcom/flyme/deviceoriginalsettings/profiles/SetupTriggersFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a00c5

    const/4 v4, 0x0

    const/16 v6, 0x3e9

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SubSettings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1098
    return-void
.end method

.method private rebuildItemList()V
    .locals 15

    .prologue
    .line 188
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 190
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;

    const v11, 0x7f0a00b5

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ProfileNameItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ProfileNameItem;-><init>(Lmokee/app/Profile;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v9, :cond_1

    .line 195
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;

    const v11, 0x7f0a0262

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 198
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 201
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateTriggerItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_1
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;

    const v11, 0x7f0a05c0

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsBluetooth()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 208
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    const/4 v11, 0x7

    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Lmokee/app/Profile;->getSettingsForConnection(I)Lmokee/profiles/ConnectionSettings;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;-><init>(ILmokee/profiles/ConnectionSettings;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_2
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsMobileData(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 220
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 221
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v10, 0x9

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wimax/WimaxHelper;->isWimaxSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 225
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x3

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_4
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/flyme/deviceoriginalsettings/cyanogenmod/DeviceUtils;->deviceSupportsNfc(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 228
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateConnectionOverrideItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_5
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;

    const v11, 0x7f0a00c1

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x3

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->generateVolumeStreamItem(I)Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;

    const v11, 0x7f0a00cc

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/RingModeItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v11}, Lmokee/app/Profile;->getRingMode()Lmokee/profiles/RingModeSettings;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/RingModeItem;-><init>(Lmokee/profiles/RingModeSettings;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v11}, Lmokee/app/Profile;->getAirplaneMode()Lmokee/profiles/AirplaneModeSettings;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;-><init>(Lmokee/profiles/AirplaneModeSettings;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v9, "device_policy"

    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 244
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->requireSecureKeyguard()Z

    move-result v9

    if-nez v9, :cond_8

    .line 245
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/LockModeItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/LockModeItem;-><init>(Lmokee/app/Profile;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_0
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/BrightnessItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v11}, Lmokee/app/Profile;->getBrightness()Lmokee/profiles/BrightnessSettings;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/BrightnessItem;-><init>(Lmokee/profiles/BrightnessSettings;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/Utils;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 254
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;-><init>(Lmokee/app/Profile;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_6
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->showAdvancedPreferences(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 259
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;

    const v11, 0x7f0a00af

    invoke-virtual {p0, v11}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Header;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v3, 0x0

    .line 262
    .local v3, "groupsAdded":I
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v9}, Lmokee/app/Profile;->getProfileGroups()[Lmokee/app/ProfileGroup;

    move-result-object v7

    .line 263
    .local v7, "profileGroups":[Lmokee/app/ProfileGroup;
    if-eqz v7, :cond_a

    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_a

    .line 264
    move-object v1, v7

    .local v1, "arr$":[Lmokee/app/ProfileGroup;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_9

    aget-object v6, v1, v4

    .line 267
    .local v6, "profileGroup":Lmokee/app/ProfileGroup;
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v6}, Lmokee/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmokee/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v9}, Lmokee/app/Profile;->getDefaultGroup()Lmokee/app/ProfileGroup;

    move-result-object v9

    invoke-virtual {v9}, Lmokee/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v6}, Lmokee/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 270
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v6}, Lmokee/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmokee/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v12

    invoke-direct {v10, v11, v6, v12}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;-><init>(Lmokee/app/Profile;Lmokee/app/ProfileGroup;Landroid/app/NotificationGroup;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v3, v3, 0x1

    .line 264
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "arr$":[Lmokee/app/ProfileGroup;
    .end local v3    # "groupsAdded":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "profileGroup":Lmokee/app/ProfileGroup;
    .end local v7    # "profileGroups":[Lmokee/app/ProfileGroup;
    :cond_8
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DisabledItem;

    const v11, 0x7f0a00cd

    const v12, 0x7f0a00ce

    invoke-direct {v10, v11, v12}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DisabledItem;-><init>(II)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 276
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "arr$":[Lmokee/app/ProfileGroup;
    .restart local v3    # "groupsAdded":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v7    # "profileGroups":[Lmokee/app/ProfileGroup;
    :cond_9
    if-lez v3, :cond_a

    .line 278
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    iget-object v12, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v12}, Lmokee/app/Profile;->getDefaultGroup()Lmokee/app/ProfileGroup;

    move-result-object v12

    iget-object v13, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    iget-object v14, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v14}, Lmokee/app/Profile;->getDefaultGroup()Lmokee/app/ProfileGroup;

    move-result-object v14

    invoke-virtual {v14}, Lmokee/app/ProfileGroup;->getUuid()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Lmokee/app/ProfileManager;->getNotificationGroup(Ljava/util/UUID;)Landroid/app/NotificationGroup;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;-><init>(Lmokee/app/Profile;Lmokee/app/ProfileGroup;Landroid/app/NotificationGroup;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v1    # "arr$":[Lmokee/app/ProfileGroup;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_a
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v9}, Lmokee/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_c

    .line 285
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    new-instance v10, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;

    invoke-direct {v10}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v3    # "groupsAdded":I
    .end local v7    # "profileGroups":[Lmokee/app/ProfileGroup;
    :cond_b
    :goto_2
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v9}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 293
    return-void

    .line 286
    .restart local v3    # "groupsAdded":I
    .restart local v7    # "profileGroups":[Lmokee/app/ProfileGroup;
    :cond_c
    if-nez v3, :cond_b

    .line 288
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    iget-object v11, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private requestActiveAppGroupsDialog()V
    .locals 9

    .prologue
    .line 985
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v6}, Lmokee/app/ProfileManager;->getNotificationGroups()[Landroid/app/NotificationGroup;

    move-result-object v5

    .line 987
    .local v5, "notificationGroups":[Landroid/app/NotificationGroup;
    array-length v6, v5

    new-array v3, v6, [Ljava/lang/CharSequence;

    .line 988
    .local v3, "items":[Ljava/lang/CharSequence;
    array-length v6, v5

    new-array v1, v6, [Z

    .line 990
    .local v1, "checked":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 991
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/app/NotificationGroup;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 992
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    aget-object v7, v5, v2

    invoke-virtual {v7}, Landroid/app/NotificationGroup;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Lmokee/app/Profile;->getProfileGroup(Ljava/util/UUID;)Lmokee/app/ProfileGroup;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    aput-boolean v6, v1, v2

    .line 990
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 992
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 994
    :cond_1
    new-instance v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$20;

    invoke-direct {v4, p0, v5}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$20;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;[Landroid/app/NotificationGroup;)V

    .line 1008
    .local v4, "listener":Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0269

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0257

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1012
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1013
    return-void
.end method

.method private requestAirplaneModeDialog(Lmokee/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "setting"    # Lmokee/profiles/AirplaneModeSettings;

    .prologue
    .line 645
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 646
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 650
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Lmokee/profiles/AirplaneModeSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 651
    invoke-virtual {p1}, Lmokee/profiles/AirplaneModeSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 652
    const/4 v2, 0x2

    .line 658
    :cond_0
    :goto_0
    const v3, 0x7f0a00d1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 659
    new-instance v3, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$7;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/AirplaneModeSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 683
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 654
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestConnectionOverrideDialog(Lmokee/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "setting"    # Lmokee/profiles/ConnectionSettings;

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 760
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 761
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 765
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Lmokee/profiles/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 766
    invoke-virtual {p1}, Lmokee/profiles/ConnectionSettings;->getValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 767
    const/4 v2, 0x2

    .line 773
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lmokee/profiles/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 774
    new-instance v3, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$9;

    invoke-direct {v3, p0, p1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$9;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 798
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 799
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 769
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestDozeModeDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 616
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "dozeEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 621
    .local v1, "defaultIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 622
    sget-object v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I

    aget v4, v4, v3

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v5}, Lmokee/app/Profile;->getDozeMode()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 623
    move v1, v3

    .line 628
    :cond_0
    const v4, 0x7f0a07ea

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 629
    new-instance v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$6;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$6;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 640
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 641
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 621
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 380
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v1, 0x7f0a04c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    const v1, 0x7f0a04c0

    new-instance v2, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$1;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private requestLockscreenModeDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 587
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, "lockEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 592
    .local v1, "defaultIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 593
    sget-object v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v5}, Lmokee/app/Profile;->getScreenLockMode()Lmokee/profiles/LockSettings;

    move-result-object v5

    invoke-virtual {v5}, Lmokee/profiles/LockSettings;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 594
    move v1, v2

    .line 599
    :cond_0
    const v4, 0x7f0a00cd

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 600
    new-instance v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$5;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 611
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 592
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private requestMobileConnectionOverrideDialog(Lmokee/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "setting"    # Lmokee/profiles/ConnectionSettings;

    .prologue
    .line 803
    if-nez p1, :cond_0

    .line 804
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "connection setting cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 806
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 807
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, "connectionNames":[Ljava/lang/String;
    const/4 v2, 0x5

    .line 811
    .local v2, "defaultIndex":I
    invoke-virtual {p1}, Lmokee/profiles/ConnectionSettings;->isOverride()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    invoke-virtual {p1}, Lmokee/profiles/ConnectionSettings;->getValue()I

    move-result v2

    .line 815
    :cond_1
    invoke-virtual {p1}, Lmokee/profiles/ConnectionSettings;->getConnectionId()I

    move-result v3

    invoke-static {v3}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionTitle(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 816
    new-instance v3, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;

    invoke-direct {v3, p0, p1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$10;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/ConnectionSettings;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 835
    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 836
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private requestProfileName()Landroid/app/AlertDialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 933
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0400d1

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 935
    .local v1, "dialogView":Landroid/view/View;
    const v4, 0x7f11002c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 936
    .local v2, "entry":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v4}, Lmokee/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 937
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 939
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a00b7

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$17;

    invoke-direct {v6, p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$17;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 954
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$18;

    invoke-direct {v4, p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$18;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 973
    new-instance v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;

    invoke-direct {v4, p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$19;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 981
    return-object v0
.end method

.method private requestRemoveProfileDialog()Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 559
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    invoke-virtual {v2}, Lmokee/app/ProfileManager;->getActiveProfile()Lmokee/app/Profile;

    move-result-object v1

    .line 560
    .local v1, "current":Lmokee/app/Profile;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v2}, Lmokee/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1}, Lmokee/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00ae

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 563
    const v2, 0x7f0a05b4

    new-instance v3, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$3;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$3;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 569
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 583
    :goto_0
    return-object v2

    .line 572
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 573
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00ab

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v5}, Lmokee/app/Profile;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 574
    const v2, 0x7f0a04c0

    new-instance v3, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$4;

    invoke-direct {v3, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$4;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    const v2, 0x7f0a04c1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method private requestRingModeDialog(Lmokee/profiles/RingModeSettings;)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "setting"    # Lmokee/profiles/RingModeSettings;

    .prologue
    .line 706
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 707
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0085

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 711
    .local v1, "defaultIndex":I
    invoke-virtual {p1}, Lmokee/profiles/RingModeSettings;->isOverride()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 712
    invoke-virtual {p1}, Lmokee/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 713
    const/4 v1, 0x0

    .line 723
    :cond_0
    :goto_0
    const v4, 0x7f0a0099

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 724
    new-instance v4, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;

    invoke-direct {v4, p0, p1, v3}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$8;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/RingModeSettings;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 752
    const/high16 v4, 0x1040000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 714
    :cond_1
    invoke-virtual {p1}, Lmokee/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 715
    const/4 v1, 0x1

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p1}, Lmokee/profiles/RingModeSettings;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 717
    const/4 v1, 0x2

    goto :goto_0

    .line 720
    :cond_3
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private startProfileGroupActivity(Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;)V
    .locals 6
    .param p1, "item"    # Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;

    .prologue
    const/4 v3, 0x0

    .line 1082
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1083
    .local v5, "args":Landroid/os/Bundle;
    const-string v0, "ProfileGroup"

    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v0, "Profile"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1086
    const-class v0, Lcom/flyme/deviceoriginalsettings/profiles/ProfileGroupConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1087
    return-void
.end method

.method private updateProfile()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v0, v1}, Lmokee/app/ProfileManager;->updateProfile(Lmokee/app/Profile;)V

    .line 365
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 370
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a0265

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1}, Lmokee/app/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 698
    invoke-super {p0, p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 699
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    invoke-virtual {v1}, Lmokee/app/Profile;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmokee/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lmokee/app/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    .line 701
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 703
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 165
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Profile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmokee/app/Profile;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfile:Lmokee/app/Profile;

    .line 168
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "new_profile_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lmokee/app/ProfileManager;->getInstance(Landroid/content/Context;)Lmokee/app/ProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mProfileManager:Lmokee/app/ProfileManager;

    .line 172
    new-instance v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    .line 173
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->rebuildItemList()V

    .line 175
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->setHasOptionsMenu(Z)V

    .line 176
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 178
    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    if-eqz p1, :cond_1

    .line 180
    const-string v0, "last_selected_position"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 181
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    if-eq v0, v3, :cond_1

    .line 182
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mAdapter:Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/ItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 509
    packed-switch p1, :pswitch_data_0

    .line 547
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 511
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestFillProfileFromSettingsDialog()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 514
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    check-cast v2, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;->getSettings()Lmokee/profiles/AirplaneModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestAirplaneModeDialog(Lmokee/profiles/AirplaneModeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 517
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    check-cast v2, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/BrightnessItem;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/BrightnessItem;->getSettings()Lmokee/profiles/BrightnessSettings;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestBrightnessDialog(Lmokee/profiles/BrightnessSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 520
    :pswitch_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 523
    :pswitch_4
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestDozeModeDialog()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 526
    :pswitch_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    check-cast v2, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/RingModeItem;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/RingModeItem;->getSettings()Lmokee/profiles/RingModeSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestRingModeDialog(Lmokee/profiles/RingModeSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 529
    :pswitch_6
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    .line 530
    .local v0, "connItem":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;->getConnectionType()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lmokee/profiles/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Lmokee/profiles/ConnectionSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;->getSettings()Lmokee/profiles/ConnectionSettings;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestConnectionOverrideDialog(Lmokee/profiles/ConnectionSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 537
    .end local v0    # "connItem":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;
    :pswitch_7
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    check-cast v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    .line 538
    .local v1, "volumeItem":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;->getStreamType()I

    move-result v2

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;->getSettings()Lmokee/profiles/StreamSettings;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestVolumeDialog(ILmokee/profiles/StreamSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 541
    .end local v1    # "volumeItem":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;
    :pswitch_8
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestProfileName()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 544
    :pswitch_9
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestRemoveProfileDialog()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 298
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-nez v0, :cond_0

    .line 299
    const v0, 0x7f0a0258

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020039

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 306
    const/4 v0, 0x2

    const v1, 0x7f0a00ad

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1018
    const v1, 0x7f04006b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1020
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    .line 1021
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1022
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v1, :cond_0

    .line 1023
    const v1, 0x7f110114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$21;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$21;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    const v1, 0x7f110115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$22;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1043
    :goto_0
    return-object v0

    .line 1041
    :cond_0
    const v1, 0x7f110113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1048
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    .line 1049
    .local v1, "itemAtPosition":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mSelectedItem:Lcom/flyme/deviceoriginalsettings/profiles/actions/item/Item;

    .line 1050
    iput p3, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 1052
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AirplaneModeItem;

    if-eqz v2, :cond_1

    .line 1053
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/BrightnessItem;

    if-eqz v2, :cond_2

    .line 1055
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1056
    :cond_2
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/LockModeItem;

    if-eqz v2, :cond_3

    .line 1057
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1058
    :cond_3
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/DozeModeItem;

    if-eqz v2, :cond_4

    .line 1059
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1060
    :cond_4
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/RingModeItem;

    if-eqz v2, :cond_5

    .line 1061
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1062
    :cond_5
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ConnectionOverrideItem;

    if-eqz v2, :cond_6

    .line 1063
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1064
    :cond_6
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;

    if-eqz v2, :cond_7

    .line 1065
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1066
    :cond_7
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/ProfileNameItem;

    if-eqz v2, :cond_8

    .line 1067
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 1068
    :cond_8
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;

    if-eqz v2, :cond_9

    move-object v0, v1

    .line 1069
    check-cast v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;

    .line 1070
    .local v0, "item":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;->getTriggerType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->openTriggersFragment(I)V

    goto :goto_0

    .line 1071
    .end local v0    # "item":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/TriggerItem;
    :cond_9
    instance-of v2, v1, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1072
    check-cast v0, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;

    .line 1073
    .local v0, "item":Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;->getGroupUuid()Ljava/util/UUID;

    move-result-object v2

    if-nez v2, :cond_a

    .line 1074
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->requestActiveAppGroupsDialog()V

    goto :goto_0

    .line 1076
    :cond_a
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->startProfileGroupActivity(Lcom/flyme/deviceoriginalsettings/profiles/actions/item/AppGroupItem;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 324
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 317
    :pswitch_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    .line 318
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->showDialog(I)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 552
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 553
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 554
    const-string v0, "last_selected_position"

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 351
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 353
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->mNewProfileMode:Z

    if-eqz v2, :cond_0

    .line 354
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 355
    .local v0, "desc":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 357
    .local v1, "descPadding":I
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 358
    const v2, 0x7f0a027d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 359
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 361
    .end local v0    # "desc":Landroid/widget/TextView;
    .end local v1    # "descPadding":I
    :cond_0
    return-void
.end method

.method public requestBrightnessDialog(Lmokee/profiles/BrightnessSettings;)Landroid/app/AlertDialog;
    .locals 7
    .param p1, "brightnessSettings"    # Lmokee/profiles/BrightnessSettings;

    .prologue
    .line 888
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 889
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a00d2

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 891
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 892
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040050

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 893
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f110041

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 894
    .local v3, "seekBar":Landroid/widget/SeekBar;
    const v5, 0x7f1100cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 895
    .local v2, "override":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Lmokee/profiles/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 896
    new-instance v5, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$14;

    invoke-direct {v5, p0, p1, v3}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$14;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Lmokee/profiles/BrightnessSettings;Landroid/widget/SeekBar;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 907
    invoke-virtual {p1}, Lmokee/profiles/BrightnessSettings;->isOverride()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 908
    const/16 v5, 0xff

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 909
    invoke-virtual {p1}, Lmokee/profiles/BrightnessSettings;->getValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 910
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 911
    const v5, 0x104000a

    new-instance v6, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;

    invoke-direct {v6, p0, v3, p1}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$15;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lmokee/profiles/BrightnessSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 922
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$16;

    invoke-direct {v6, p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$16;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 928
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public requestVolumeDialog(ILmokee/profiles/StreamSettings;)Landroid/app/AlertDialog;
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "streamSettings"    # Lmokee/profiles/StreamSettings;

    .prologue
    const/4 v9, 0x0

    .line 841
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 842
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/profiles/actions/item/VolumeStreamItem;->getNameForStream(I)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 844
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 845
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 846
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040051

    invoke-virtual {v2, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 847
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f110041

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 848
    .local v4, "seekBar":Landroid/widget/SeekBar;
    const v7, 0x7f1100cc

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 849
    .local v3, "override":Landroid/widget/CheckBox;
    invoke-virtual {p2}, Lmokee/profiles/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 850
    new-instance v7, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$11;

    invoke-direct {v7, p0, v4}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$11;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;)V

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 856
    new-instance v6, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7, p1, v9, v9}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    .line 858
    .local v6, "volumizer":Landroid/preference/SeekBarVolumizer;
    invoke-virtual {v6}, Landroid/preference/SeekBarVolumizer;->start()V

    .line 859
    invoke-virtual {v6, v4}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 860
    invoke-virtual {p2}, Lmokee/profiles/StreamSettings;->isOverride()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 862
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 863
    const v7, 0x104000a

    new-instance v8, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;

    invoke-direct {v8, p0, v4, p2, v3}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$12;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lmokee/profiles/StreamSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 874
    const/high16 v7, 0x1040000

    invoke-virtual {v1, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    new-instance v7, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;

    invoke-direct {v7, p0, v6}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment$13;-><init>(Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;Landroid/preference/SeekBarVolumizer;)V

    invoke-virtual {p0, v7}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 884
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
