.class Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$1;,
        Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static wifi_no_signal_attributes:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field bssid:Ljava/lang/String;

.field frequency:I

.field isIBSS:Z

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoSignalLoaded:Z

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private mShowNoSignalIcon:Z

.field private mSortPreference:Z

.field private mSummaryView:Landroid/widget/TextView;

.field networkId:I

.field pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

.field security:I

.field showSummary:Z

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [I

    const v1, 0x7f01000e

    aput v1, v0, v2

    sput-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 83
    new-array v0, v2, [I

    sput-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->STATE_NONE:[I

    .line 85
    new-array v0, v3, [I

    const v1, 0x7f010038

    aput v1, v0, v2

    sput-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wifi_signal_attributes:[I

    .line 86
    new-array v0, v3, [I

    const v1, 0x7f010039

    aput v1, v0, v2

    sput-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wifi_no_signal_attributes:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    .line 107
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->showSummary:Z

    .line 109
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isIBSS:Z

    .line 112
    sget-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    .line 117
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    .line 126
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSortPreference:Z

    .line 214
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 215
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->refresh()V

    .line 216
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "showNoSignal"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    .line 107
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->showSummary:Z

    .line 109
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isIBSS:Z

    .line 112
    sget-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    .line 117
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    .line 126
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSortPreference:Z

    .line 206
    iput-boolean p3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mShowNoSignalIcon:Z

    .line 208
    invoke-direct {p0, p2}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 209
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->refresh()V

    .line 210
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    .line 107
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 108
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->showSummary:Z

    .line 109
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isIBSS:Z

    .line 112
    sget-object v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    .line 117
    const v0, 0x7fffffff

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    .line 126
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSortPreference:Z

    .line 221
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 222
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 225
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 226
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 229
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 230
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    const-string v0, "key_networkinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V

    .line 234
    return-void
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 186
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 187
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 188
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 189
    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    .line 196
    :goto_0
    return-object v2

    .line 190
    :cond_0
    if-eqz v1, :cond_1

    .line 191
    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->WPA2:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 192
    :cond_1
    if-eqz v0, :cond_2

    .line 193
    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->WPA:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 195
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x2

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/4 v0, 0x3

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v3

    .line 138
    goto :goto_0

    .line 140
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 24

    .prologue
    .line 494
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v17, "visibility":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 496
    .local v15, "scans24GHz":Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 497
    .local v16, "scans5GHz":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 499
    .local v2, "bssid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 501
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_0

    .line 504
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :cond_0
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    const-string v18, " score="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    const-string v18, " tx=%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v18, "%.1f,"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v18, "%.1f "

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v18, "rx=%.1f"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    .line 516
    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 517
    .local v14, "rssi5":I
    sget v13, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 518
    .local v13, "rssi24":I
    const/4 v10, 0x0

    .line 519
    .local v10, "num5":I
    const/4 v7, 0x0

    .line 520
    .local v7, "num24":I
    const/4 v11, 0x0

    .line 521
    .local v11, "numBlackListed":I
    const/4 v5, 0x0

    .line 522
    .local v5, "n24":I
    const/4 v6, 0x0

    .line 523
    .local v6, "n5":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    .line 525
    .local v4, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 526
    .local v12, "result":Landroid/net/wifi/ScanResult;
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_2

    .line 529
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    add-int/lit8 v11, v11, 0x1

    .line 531
    :cond_3
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    .line 535
    add-int/lit8 v10, v10, 0x1

    .line 544
    :cond_4
    :goto_1
    iget-wide v0, v12, Landroid/net/wifi/ScanResult;->seen:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    const-wide/16 v20, 0x4e20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_2

    .line 546
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x1324

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x170c

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 548
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v14, :cond_5

    .line 549
    iget v14, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 551
    :cond_5
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 552
    if-nez v16, :cond_6

    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .restart local v16    # "scans5GHz":Ljava/lang/StringBuilder;
    :cond_6
    const-string v18, " \n{"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    if-eqz v2, :cond_7

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "*"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_7
    const-string v18, "="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    const-string v18, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 558
    const-string v18, ",st="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 560
    :cond_8
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 561
    const-string v18, ",ipf="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 563
    :cond_9
    const-string v18, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 536
    :cond_a
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 540
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 566
    :cond_b
    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x960

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    const/16 v19, 0x9c4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 568
    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v13, :cond_c

    .line 569
    iget v13, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 571
    :cond_c
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v5, v0, :cond_2

    .line 572
    if-nez v15, :cond_d

    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .restart local v15    # "scans24GHz":Ljava/lang/StringBuilder;
    :cond_d
    const-string v18, " \n{"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    if-eqz v2, :cond_e

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const-string v18, "*"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_e
    const-string v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 578
    const-string v18, ",st="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 580
    :cond_f
    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 581
    const-string v18, ",ipf="

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v12, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    :cond_10
    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 588
    .end local v12    # "result":Landroid/net/wifi/ScanResult;
    :cond_11
    const-string v18, " ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    if-lez v7, :cond_12

    .line 590
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v5, v0, :cond_16

    .line 592
    if-eqz v15, :cond_12

    .line 593
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_12
    :goto_2
    const-string v18, ";"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    if-lez v10, :cond_13

    .line 604
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const/16 v18, 0x4

    move/from16 v0, v18

    if-gt v6, v0, :cond_17

    .line 606
    if-eqz v16, :cond_13

    .line 607
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_13
    :goto_3
    if-lez v11, :cond_14

    .line 617
    const-string v18, "!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    :cond_14
    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "n24":I
    .end local v6    # "n5":I
    .end local v7    # "num24":I
    .end local v10    # "num5":I
    .end local v11    # "numBlackListed":I
    .end local v13    # "rssi24":I
    .end local v14    # "rssi5":I
    :cond_15
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 596
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .restart local v5    # "n24":I
    .restart local v6    # "n5":I
    .restart local v7    # "num24":I
    .restart local v10    # "num5":I
    .restart local v11    # "numBlackListed":I
    .restart local v13    # "rssi24":I
    .restart local v14    # "rssi5":I
    :cond_16
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    if-eqz v15, :cond_12

    .line 598
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 610
    :cond_17
    const-string v18, "max="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    if-eqz v16, :cond_13

    .line 612
    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 620
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "n24":I
    .end local v6    # "n5":I
    .end local v7    # "num24":I
    .end local v10    # "num5":I
    .end local v11    # "numBlackListed":I
    .end local v13    # "rssi24":I
    .end local v14    # "rssi5":I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    const v19, 0x7fffffff

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    .line 621
    const-string v18, " rssi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 624
    const-string v18, ", f="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method private isInfoForThisAccessPoint(Landroid/net/wifi/WifiInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 408
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 409
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 414
    :goto_0
    return v0

    .line 409
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 246
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 248
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    .line 249
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    .line 250
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isIBSS:Z

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isIBSS:Z

    .line 251
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->frequency:I

    .line 252
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 253
    return-void

    .line 246
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 256
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 257
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    .line 259
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wpsAvailable:Z

    .line 260
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isIBSS:Z

    .line 261
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->frequency:I

    .line 262
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 263
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    .line 264
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    .line 265
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 266
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 267
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    .line 269
    :cond_1
    return-void

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 18

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 651
    .local v2, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getLevel()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 654
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v3, "summary":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isActive()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_a

    const/4 v14, 0x1

    :goto_0
    invoke-static {v2, v15, v14}, Lcom/flyme/deviceoriginalsettings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isIBSS:Z

    if-eqz v14, :cond_1

    .line 702
    const v14, 0x7f0a0364

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_1
    sget v14, Lcom/flyme/deviceoriginalsettings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v14, :cond_9

    .line 708
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v14, :cond_2

    .line 709
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " f="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v14, :cond_5

    .line 713
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_4

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 716
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-wide v14, v14, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    sub-long v14, v10, v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 717
    .local v4, "diff":J
    const-wide/16 v14, 0x3c

    rem-long v12, v4, v14

    .line 718
    .local v12, "sec":J
    const-wide/16 v14, 0x3c

    div-long v14, v4, v14

    const-wide/16 v16, 0x3c

    rem-long v8, v14, v16

    .line 719
    .local v8, "min":J
    const-wide/16 v14, 0x3c

    div-long v14, v8, v14

    const-wide/16 v16, 0x3c

    rem-long v6, v14, v16

    .line 720
    .local v6, "hour":J
    const-string v14, ", "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-lez v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "h "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "m "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "s "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    .end local v4    # "diff":J
    .end local v6    # "hour":J
    .end local v8    # "min":J
    .end local v10    # "now":J
    .end local v12    # "sec":J
    :cond_4
    const-string v14, ")"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-lez v14, :cond_6

    .line 728
    const-string v14, " ipf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    if-lez v14, :cond_7

    .line 731
    const-string v14, " cf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    if-lez v14, :cond_8

    .line 734
    const-string v14, " authf="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 736
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v14, :cond_9

    .line 737
    const-string v14, " noInt="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_14

    .line 742
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 743
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setShowSummary(Z)V

    .line 747
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 748
    return-void

    .line 660
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 662
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 664
    const v14, 0x7f0a072d

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 665
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-nez v14, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_12

    .line 669
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    const/16 v15, 0x80

    if-lt v14, v15, :cond_11

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    .line 672
    const v14, 0x7f0a0729

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 673
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_10

    .line 674
    const v14, 0x7f0a072b

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 676
    :cond_10
    const v14, 0x7f0a072a

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 679
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 689
    :pswitch_0
    const v14, 0x7f0a0728

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 681
    :pswitch_1
    const v14, 0x7f0a072b

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 685
    :pswitch_2
    const v14, 0x7f0a0729

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 693
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-ne v14, v15, :cond_13

    .line 694
    const v14, 0x7f0a072c

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 696
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v14, :cond_0

    .line 697
    const v14, 0x7f0a0727

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 745
    :cond_14
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setShowSummary(Z)V

    goto/16 :goto_2

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 461
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 462
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 464
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 466
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v4, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 326
    instance-of v3, p1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSortPreference:Z

    if-nez v3, :cond_2

    .line 330
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 332
    check-cast v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;

    .line 334
    .local v1, "other":Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    .line 335
    :cond_3
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    :cond_4
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    if-eq v3, v4, :cond_5

    iget v3, v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_5

    move v0, v2

    goto :goto_0

    .line 339
    :cond_5
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_6

    iget v3, v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    if-ne v3, v4, :cond_0

    .line 342
    :cond_6
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    if-eq v3, v2, :cond_7

    iget v3, v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_7

    move v0, v2

    .line 343
    goto :goto_0

    .line 344
    :cond_7
    iget v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_8

    iget v3, v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    if-ne v3, v2, :cond_0

    .line 348
    :cond_8
    iget v2, v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 349
    .local v0, "difference":I
    if-nez v0, :cond_0

    .line 353
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 358
    instance-of v1, p1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 359
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 756
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 761
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 438
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 439
    const/4 v0, -0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "concise"    # Z

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 181
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 158
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0a0736

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0a073d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 161
    :pswitch_1
    sget-object v1, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 173
    if-eqz p1, :cond_4

    const v1, 0x7f0a0735

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0a0732

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0739

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 166
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0a0733

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0a073a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0a0734

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0a073b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 173
    :cond_4
    const v1, 0x7f0a073c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 177
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0a0731

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0a0738

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 181
    :cond_6
    const v1, 0x7f0a0737

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 161
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "result":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 366
    :cond_0
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 367
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 368
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 369
    return v0
.end method

.method isActive()Z
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 276
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    .line 277
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->showSummary:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->notifyChanged()V

    .line 280
    return-void

    .line 277
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 238
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "key_networkinfo"

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    :cond_0
    return-void
.end method

.method public setShowSummary(Z)V
    .locals 2
    .param p1, "showSummary"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->showSummary:Z

    .line 480
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSummaryView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    :cond_0
    return-void

    .line 481
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSortPreference(Z)V
    .locals 0
    .param p1, "sort"    # Z

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSortPreference:Z

    .line 404
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, "reorder":Z
    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->isInfoForThisAccessPoint(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 422
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    .line 423
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 424
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 425
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->refresh()V

    .line 432
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 435
    :cond_1
    return-void

    .line 421
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 428
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 429
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 430
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 373
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 374
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mSeen:J

    .line 376
    :cond_0
    sget v1, Lcom/flyme/deviceoriginalsettings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-nez v1, :cond_1

    .line 378
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 384
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 386
    .local v0, "oldLevel":I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mRssi:I

    .line 387
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 388
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->notifyChanged()V

    .line 392
    .end local v0    # "oldLevel":I
    :cond_3
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 393
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->pskType:Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint$PskType;

    .line 395
    :cond_4
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 396
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->refresh()V

    .line 397
    const/4 v1, 0x1

    .line 399
    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 283
    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 284
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mShowNoSignalIcon:Z

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 287
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNoSignalLoaded:Z

    if-nez v2, :cond_1

    .line 288
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wifi_no_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 290
    .local v1, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_1

    .line 291
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_3

    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 292
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNoSignalLoaded:Z

    .line 297
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNoSignalLoaded:Z

    if-nez v2, :cond_2

    .line 298
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 322
    :cond_2
    :goto_1
    return-void

    .line 291
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_3
    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_0

    .line 301
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_4
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNoSignalLoaded:Z

    if-eqz v2, :cond_6

    .line 306
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->wifi_signal_attributes:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 310
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v1, :cond_6

    .line 311
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->security:I

    if-eqz v2, :cond_7

    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 312
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 314
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->mNoSignalLoaded:Z

    .line 318
    .end local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_6
    if-eqz v0, :cond_2

    .line 319
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 311
    .restart local v1    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_7
    sget-object v2, Lcom/flyme/deviceoriginalsettings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method
