.class public Lcn/nubia/server/ZteBrightnessUtils;
.super Ljava/lang/Object;
.source "ZteBrightnessUtils.java"


# static fields
.field private static final LCD_AUTO_BRIGHTNESS_LEVEL_UNKNOW:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZteBrightnessUtils"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ:Ljava/lang/String; = "zte_auto_brightness_adj"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_0:Ljava/lang/String; = "zte_auto_brightness_adj_0"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_1:Ljava/lang/String; = "zte_auto_brightness_adj_1"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_2:Ljava/lang/String; = "zte_auto_brightness_adj_2"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_3:Ljava/lang/String; = "zte_auto_brightness_adj_3"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_4:Ljava/lang/String; = "zte_auto_brightness_adj_4"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_5:Ljava/lang/String; = "zte_auto_brightness_adj_5"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_6:Ljava/lang/String; = "zte_auto_brightness_adj_6"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_7:Ljava/lang/String; = "zte_auto_brightness_adj_7"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_8:Ljava/lang/String; = "zte_auto_brightness_adj_8"

.field private static final ZTE_AUTO_BRIGHTNESS_ADJ_MODE:Ljava/lang/String; = "zte_auto_brightness_adj_mode"

.field private static final ZTE_AUTO_BRIGHTNESS_CONTROL_MODE:Ljava/lang/String; = "zte_auto_brightness_control_mode"

.field private static final ZTE_AUTO_BRIGHTNESS_LEVEL:Ljava/lang/String; = "zte_auto_brightness_level"

.field private static final ZTE_AUTO_BRIGHTNESS_MODE_ALL_SCREEN:I = 0x0

.field private static final ZTE_AUTO_BRIGHTNESS_MODE_CURRENT_SCREEN:I = 0x1

.field private static lcd_auto_brightness_level:I

.field private static final lightArrary:[[I


# instance fields
.field private final MAX_ZTE_AUTO_BRIGHTNESS:I

.field private final MIN_ZTE_AUTO_BRIGHTNESS:I

.field private mAutoBrightnessLevels:[I

.field private mContext:Landroid/content/Context;

.field private mLcdBacklightValues:[I

.field private mPositive:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/server/ZteBrightnessUtils;->lightArrary:[[I

    .line 80
    const/4 v0, -0x1

    sput v0, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0x3
        0x14
        0x32
        0x64
        0x190
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x14
        0x41
        0x64
        0x190
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x7
        0x41
        0xbe
        0x190
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x7
        0x26
        0xbe
        0x226
        0x384
        0x7d0
        0x1388
    .end array-data

    :array_4
    .array-data 4
        0x1
        0xa
        0x26
        0x55
        0x226
        0x4ce
        0x7d0
        0x1388
    .end array-data

    :array_5
    .array-data 4
        0x1
        0xa
        0x32
        0x55
        0x136
        0x4ce
        0xb54
        0x1388
    .end array-data

    :array_6
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0x136
        0x2ee
        0xb54
        0x1f40
    .end array-data

    :array_7
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0x190
        0x2ee
        0x640
        0x1f40
    .end array-data

    :array_8
    .array-data 4
        0x1
        0xa
        0x32
        0x64
        0x190
        0x384
        0x640
        0xfa0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v1, 0x2

    iput v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->MIN_ZTE_AUTO_BRIGHTNESS:I

    .line 66
    const/16 v1, 0xff

    iput v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->MAX_ZTE_AUTO_BRIGHTNESS:I

    .line 296
    new-instance v1, Lcn/nubia/server/ZteBrightnessUtils$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/ZteBrightnessUtils$1;-><init>(Lcn/nubia/server/ZteBrightnessUtils;)V

    iput-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 97
    iput-object p1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x30a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mAutoBrightnessLevels:[I

    .line 101
    const-string v1, "ZteBrightnessUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoBrightnessLevels length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/ZteBrightnessUtils;->mAutoBrightnessLevels:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v1, 0x30a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    .line 103
    const-string v1, "ZteBrightnessUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLcdBacklightValues length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mSensorManager:Landroid/hardware/SensorManager;

    .line 106
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensor:Landroid/hardware/Sensor;

    .line 111
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximityThreshold:F

    .line 115
    :cond_1
    return-void
.end method

.method private GetAutoBrightnessValue(F)I
    .locals 3
    .param p1, "lightValue"    # F

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "i":I
    const/4 v1, -0x1

    sget v2, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    if-ne v1, v2, :cond_0

    .line 253
    const-string v1, "ZteBrightnessUtils"

    const-string v2, "[LIGHT]: [GetAutoBrightnessValue] lcd_auto_brightness_level = -1"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    invoke-direct {p0, p1, v1}, Lcn/nubia/server/ZteBrightnessUtils;->autoBrightnessValueInit(F[I)I

    move-result v1

    .line 266
    :goto_0
    return v1

    .line 258
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 260
    sget-object v1, Lcn/nubia/server/ZteBrightnessUtils;->lightArrary:[[I

    sget v2, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    aget-object v1, v1, v2

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    .line 265
    :cond_1
    sput v0, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    .line 266
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    sget v2, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    aget v1, v1, v2

    goto :goto_0

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$000(Lcn/nubia/server/ZteBrightnessUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ZteBrightnessUtils;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/ZteBrightnessUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/ZteBrightnessUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mPositive:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/ZteBrightnessUtils;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/ZteBrightnessUtils;

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximityThreshold:F

    return v0
.end method

.method private autoBrightnessValueInit(F[I)I
    .locals 2
    .param p1, "sensorValue"    # F
    .param p2, "values"    # [I

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mAutoBrightnessLevels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mAutoBrightnessLevels:[I

    aget v1, v1, v0

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 243
    :cond_0
    sput v0, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    .line 245
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    aget v1, v1, v0

    return v1

    .line 235
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getZteAutoBrightnessAdjValue()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "value":I
    iget-object v3, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 209
    .local v2, "zteAutoBrightnessAdjMode":I
    iget-object v3, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_level"

    sget v5, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    if-nez v2, :cond_1

    .line 213
    iget-object v3, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zte_auto_brightness_adj"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 215
    .local v0, "adj":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_0

    .line 216
    sget v3, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/ZteBrightnessUtils;->getZteMinAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 229
    :goto_0
    return v1

    .line 218
    :cond_0
    sget v3, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/ZteBrightnessUtils;->getZteMaxAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0

    .line 221
    .end local v0    # "adj":F
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget v4, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    invoke-direct {p0, v4}, Lcn/nubia/server/ZteBrightnessUtils;->getZteAutoBrightnessLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 223
    .restart local v0    # "adj":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_2

    .line 224
    sget v3, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/ZteBrightnessUtils;->getZteMinAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0

    .line 226
    :cond_2
    sget v3, Lcn/nubia/server/ZteBrightnessUtils;->lcd_auto_brightness_level:I

    invoke-direct {p0, v3}, Lcn/nubia/server/ZteBrightnessUtils;->getZteMaxAutoBrightnessAdj(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0
.end method

.method private getZteAutoBrightnessLevel(I)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 199
    const-string v0, "zte_auto_brightness_adj_5"

    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    const-string v0, "zte_auto_brightness_adj_0"

    goto :goto_0

    .line 183
    :pswitch_1
    const-string v0, "zte_auto_brightness_adj_1"

    goto :goto_0

    .line 185
    :pswitch_2
    const-string v0, "zte_auto_brightness_adj_2"

    goto :goto_0

    .line 187
    :pswitch_3
    const-string v0, "zte_auto_brightness_adj_3"

    goto :goto_0

    .line 189
    :pswitch_4
    const-string v0, "zte_auto_brightness_adj_4"

    goto :goto_0

    .line 191
    :pswitch_5
    const-string v0, "zte_auto_brightness_adj_5"

    goto :goto_0

    .line 193
    :pswitch_6
    const-string v0, "zte_auto_brightness_adj_6"

    goto :goto_0

    .line 195
    :pswitch_7
    const-string v0, "zte_auto_brightness_adj_7"

    goto :goto_0

    .line 197
    :pswitch_8
    const-string v0, "zte_auto_brightness_adj_8"

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getZteMaxAutoBrightnessAdj(I)I
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    aget v2, v2, p1

    sub-int v0, v1, v2

    .line 175
    .local v0, "max":I
    :goto_0
    return v0

    .line 173
    .end local v0    # "max":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    aget v1, v1, p1

    rsub-int v0, v1, 0xff

    .restart local v0    # "max":I
    goto :goto_0
.end method

.method private getZteMinAutoBrightnessAdj(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 160
    if-lez p1, :cond_0

    .line 161
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    aget v1, v1, p1

    iget-object v2, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    sub-int v0, v1, v2

    .line 165
    .local v0, "min":I
    :goto_0
    return v0

    .line 163
    .end local v0    # "min":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mLcdBacklightValues:[I

    aget v1, v1, p1

    add-int/lit8 v0, v1, -0x2

    .restart local v0    # "min":I
    goto :goto_0
.end method


# virtual methods
.method public autoUpdateBrightnessValidity()Z
    .locals 3

    .prologue
    .line 312
    iget-boolean v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorEnabled:Z

    iget-boolean v2, p0, Lcn/nubia/server/ZteBrightnessUtils;->mPositive:Z

    and-int v0, v1, v2

    .line 313
    .local v0, "proximity":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLcdValueInZteControltMode(F)I
    .locals 3
    .param p1, "ambientLux"    # F

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcn/nubia/server/ZteBrightnessUtils;->GetAutoBrightnessValue(F)I

    move-result v1

    .line 272
    .local v1, "value":I
    invoke-direct {p0}, Lcn/nubia/server/ZteBrightnessUtils;->getZteAutoBrightnessAdjValue()I

    move-result v0

    .line 273
    .local v0, "adjustment":I
    add-int v2, v1, v0

    return v2
.end method

.method public setZetAutoBrightnessSensorEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 280
    if-eqz p1, :cond_1

    .line 281
    iget-boolean v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorEnabled:Z

    .line 283
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorEnabled:Z

    .line 289
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/ZteBrightnessUtils;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public setutoBrightnessZteControlModeEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zte_auto_brightness_control_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zteAutoControlregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_0"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_1"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_2"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_3"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_4"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_5"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_6"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 148
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_7"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    iget-object v0, p0, Lcn/nubia/server/ZteBrightnessUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zte_auto_brightness_adj_8"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    :cond_0
    return-void
.end method
