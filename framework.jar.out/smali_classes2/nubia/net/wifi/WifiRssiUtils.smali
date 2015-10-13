.class public Lnubia/net/wifi/WifiRssiUtils;
.super Ljava/lang/Object;
.source "WifiRssiUtils.java"


# static fields
.field private static final INVALID_RSSI_LEVEL:I = 0x3e9

.field private static final LEVEL_4_RSSI_CEILINGS_2_4G:[[I

.field private static final LEVEL_4_RSSI_CEILINGS_5G:[[I

.field private static final LEVEL_5_RSSI_CEILINGS_2_4G:[[I

.field private static final LEVEL_5_RSSI_CEILINGS_5G:[[I

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NUBIA_RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NUBIA_RSSI_CHANGED"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    sput-object v0, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_2_4G:[[I

    .line 35
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_2_4G:[[I

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v6

    sput-object v0, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_5G:[[I

    .line 48
    new-array v0, v6, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v5

    sput-object v0, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_5G:[[I

    return-void

    .line 28
    :array_0
    .array-data 4
        0x0
        -0x5a
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x50
    .end array-data

    :array_2
    .array-data 4
        0x2
        -0x4c
    .end array-data

    :array_3
    .array-data 4
        0x3
        -0x46
    .end array-data

    :array_4
    .array-data 4
        0x4
        -0x37
    .end array-data

    .line 35
    :array_5
    .array-data 4
        0x0
        -0x5a
    .end array-data

    :array_6
    .array-data 4
        0x1
        -0x4c
    .end array-data

    :array_7
    .array-data 4
        0x2
        -0x46
    .end array-data

    :array_8
    .array-data 4
        0x3
        -0x37
    .end array-data

    .line 41
    :array_9
    .array-data 4
        0x0
        -0x58
    .end array-data

    :array_a
    .array-data 4
        0x1
        -0x52
    .end array-data

    :array_b
    .array-data 4
        0x2
        -0x4f
    .end array-data

    :array_c
    .array-data 4
        0x3
        -0x4a
    .end array-data

    :array_d
    .array-data 4
        0x4
        -0x37
    .end array-data

    .line 48
    :array_e
    .array-data 4
        0x0
        -0x58
    .end array-data

    :array_f
    .array-data 4
        0x1
        -0x4f
    .end array-data

    :array_10
    .array-data 4
        0x2
        -0x4a
    .end array-data

    :array_11
    .array-data 4
        0x3
        -0x37
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateSignalLevel(IIZ)I
    .locals 9
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I
    .param p2, "is5G"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 97
    const/4 v5, 0x0

    .local v5, "tmpRssiLevel":I
    move-object v2, v6

    .line 98
    check-cast v2, [[I

    .local v2, "level_4_rssi_ceilings":[[I
    move-object v3, v6

    .line 99
    check-cast v3, [[I

    .line 101
    .local v3, "level_5_rssi_ceilings":[[I
    if-eqz p2, :cond_0

    .line 102
    sget-object v2, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_5G:[[I

    .line 103
    sget-object v3, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_5G:[[I

    .line 109
    :goto_0
    const/16 v6, -0x64

    if-gt p0, v6, :cond_1

    move v6, v7

    .line 141
    :goto_1
    return v6

    .line 105
    :cond_0
    sget-object v2, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_4_RSSI_CEILINGS_2_4G:[[I

    .line 106
    sget-object v3, Lnubia/net/wifi/WifiRssiUtils;->LEVEL_5_RSSI_CEILINGS_2_4G:[[I

    goto :goto_0

    .line 111
    :cond_1
    const/16 v6, -0x37

    if-lt p0, v6, :cond_2

    .line 112
    add-int/lit8 v6, p1, -0x1

    goto :goto_1

    .line 118
    :cond_2
    const/4 v6, 0x4

    if-ne v6, p1, :cond_5

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_3

    .line 121
    aget-object v6, v2, v0

    aget v6, v6, v8

    if-le v6, p0, :cond_4

    .line 122
    aget-object v6, v2, v0

    aget v5, v6, v7

    :cond_3
    move v6, v5

    .line 127
    goto :goto_1

    .line 120
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 128
    .end local v0    # "i":I
    :cond_5
    const/4 v6, 0x5

    if-ne v6, p1, :cond_8

    .line 130
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, p1, :cond_6

    .line 131
    aget-object v6, v3, v0

    aget v6, v6, v8

    if-le v6, p0, :cond_7

    .line 132
    aget-object v6, v3, v0

    aget v5, v6, v7

    :cond_6
    move v6, v5

    .line 137
    goto :goto_1

    .line 130
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 139
    .end local v0    # "i":I
    :cond_8
    const/high16 v1, 0x42340000    # 45.0f

    .line 140
    .local v1, "inputRange":F
    add-int/lit8 v6, p1, -0x1

    int-to-float v4, v6

    .line 141
    .local v4, "outputRange":F
    add-int/lit8 v6, p0, 0x64

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v1

    float-to-int v6, v6

    goto :goto_1
.end method

.method public static calculateSignalLevel(Lnubia/net/wifi/WifiRssiInfo;I)I
    .locals 6
    .param p0, "rssi"    # Lnubia/net/wifi/WifiRssiInfo;
    .param p1, "numLevels"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, "is5G":Z
    invoke-virtual {p0}, Lnubia/net/wifi/WifiRssiInfo;->getNewFreq()I

    move-result v4

    const/16 v5, 0x9b4

    if-le v4, v5, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 77
    :goto_0
    invoke-virtual {p0}, Lnubia/net/wifi/WifiRssiInfo;->getNewRssi()I

    move-result v4

    invoke-static {v4, p1, v0}, Lnubia/net/wifi/WifiRssiUtils;->calculateSignalLevel(IIZ)I

    move-result v3

    .line 78
    .local v3, "tmpRssiLevel":I
    invoke-virtual {p0}, Lnubia/net/wifi/WifiRssiInfo;->getLastSignalRssi()I

    move-result v4

    invoke-static {v4, p1, v0}, Lnubia/net/wifi/WifiRssiUtils;->calculateSignalLevel(IIZ)I

    move-result v1

    .line 79
    .local v1, "lastRssiLevel":I
    invoke-static {v3, v1}, Lnubia/net/wifi/WifiRssiUtils;->updateRssiLevelByStepdown(II)I

    move-result v2

    .line 80
    .local v2, "ret":I
    return v2

    .line 74
    .end local v1    # "lastRssiLevel":I
    .end local v2    # "ret":I
    .end local v3    # "tmpRssiLevel":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static updateRssiLevelByStepdown(II)I
    .locals 2
    .param p0, "tmpRssiLevel"    # I
    .param p1, "lastRssiLevel"    # I

    .prologue
    .line 147
    move v0, p1

    .line 148
    .local v0, "level":I
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_1

    .line 149
    move v0, p0

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    if-le p1, p0, :cond_2

    if-eqz p1, :cond_2

    .line 151
    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    .line 152
    :cond_2
    if-ge p1, p0, :cond_0

    .line 153
    move v0, p0

    goto :goto_0
.end method
