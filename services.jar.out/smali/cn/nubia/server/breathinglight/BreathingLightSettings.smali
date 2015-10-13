.class public Lcn/nubia/server/breathinglight/BreathingLightSettings;
.super Ljava/lang/Object;
.source "BreathingLightSettings.java"


# static fields
.field private static final BRIGHTNESS_AUTO:I = 0x1

.field private static final BRIGHTNESS_MANUAL:I = 0x0

.field private static final DISABLE:I = 0x0

.field private static final ENABLE:I = 0x1

.field private static final LED_LIGHT_BRIGHTNESS:Ljava/lang/String; = "led_light_brightness"

.field private static final LED_LIGHT_BRIGHTNESS_MODE:Ljava/lang/String; = "led_light_brightness_mode"

.field private static final LED_LIGHT_CHARGE_ENABLE:Ljava/lang/String; = "led_light_charge_enable"

.field private static final LED_LIGHT_TOUCH_ENABLE:Ljava/lang/String; = "led_light_touch_enable"

.field private static final NOTIFICATION_ENABLE:Ljava/lang/String; = "notificationsettings"

.field private static final SINGLE_UI_MODE:Ljava/lang/String; = "single_ui_mode"

.field private static final TAG:Ljava/lang/String; = "BreathingLightSettings"


# instance fields
.field private final mBreathLightBrightness:[I

.field private mBrightnessMode:I

.field private mContext:Landroid/content/Context;

.field private mLastObservedLuxTime:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorLux:[F

.field private mNotificationLightEnable:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcn/nubia/server/breathinglight/BreathingLightService;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mSingleUiModeEnable:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcn/nubia/server/breathinglight/BreathingLightService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcn/nubia/server/breathinglight/BreathingLightService;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 226
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    .line 227
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    .line 247
    new-instance v0, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;

    invoke-direct {v0, p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings$2;-><init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 68
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    .line 71
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 72
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    .line 74
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->registerSettingsObserver()V

    .line 75
    return-void

    .line 226
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x7
        0xa
        0xf
        0x14
        0x23
        0x32
    .end array-data

    .line 227
    :array_1
    .array-data 4
        0x40a00000    # 5.0f
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43c80000    # 400.0f
        0x44610000    # 900.0f
        0x44fa0000    # 2000.0f
        0x459c4000    # 5000.0f
    .end array-data
.end method

.method static synthetic access$000(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->brightnessModeChange()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->manualBrightnessChange()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->notificationSettingsChange()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->singleUiModeChange()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/breathinglight/BreathingLightSettings;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 16
    iget-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcn/nubia/server/breathinglight/BreathingLightSettings;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcn/nubia/server/breathinglight/BreathingLightSettings;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;

    .prologue
    .line 16
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getCurrentBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/server/breathinglight/BreathingLightSettings;F)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # F

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->getBrightnessByLux(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/server/breathinglight/BreathingLightSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/breathinglight/BreathingLightSettings;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    return-void
.end method

.method private brightnessModeChange()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 175
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 176
    const-string v2, "BreathingLightSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessModeChange: mBrightnessMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v2, :cond_0

    .line 178
    invoke-direct {p0, v5}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 179
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 184
    .end local v0    # "brightness":I
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    goto :goto_0
.end method

.method private enableAutoBrightness(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-string v0, "BreathingLightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableAutoBrightness: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLastObservedLuxTime:J

    .line 208
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private getBrightnessByLux(F)I
    .locals 5
    .param p1, "lux"    # F

    .prologue
    .line 231
    const/16 v0, 0xa

    .line 233
    .local v0, "brightness":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 234
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    iget-object v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v0, v2, v3

    .line 243
    :cond_0
    :goto_0
    const-string v2, "BreathingLightSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrightnessByLux: brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v0

    .line 236
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 237
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mLightSensorLux:[F

    aget v2, v2, v1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBreathLightBrightness:[I

    aget v0, v2, v1

    .line 239
    goto :goto_0

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCurrentBrightness()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->getLightBrightness()I

    move-result v0

    return v0
.end method

.method private initSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 104
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 105
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v2, :cond_0

    .line 106
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "brightness":I
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v2, v0}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 112
    .end local v0    # "brightness":I
    :goto_0
    const-string v2, "notificationsettings"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 113
    const-string v2, "single_ui_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    .line 114
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    invoke-direct {p0, v2}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->processSingleUiMode(I)V

    .line 115
    return-void

    .line 109
    :cond_0
    invoke-direct {p0, v5}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    goto :goto_0
.end method

.method private manualBrightnessChange()V
    .locals 5

    .prologue
    .line 195
    const-string v2, "BreathingLightSettings"

    const-string v3, "manualBrightnessChange: entry!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    if-nez v2, :cond_0

    .line 197
    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 198
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "led_light_brightness"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 199
    .local v0, "brightness":I
    const-string v2, "BreathingLightSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manualBrightnessChange: brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->setBrightness(I)V

    .line 202
    .end local v0    # "brightness":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private notificationSettingsChange()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 144
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "notificationsettings"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    .line 145
    return-void
.end method

.method private processSingleUiMode(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    .line 159
    const-string v0, "BreathingLightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSingleUiMode: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_0

    .line 161
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 167
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    goto :goto_0
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 78
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 84
    const-string v1, "led_light_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    const-string v1, "notificationsettings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    const-string v1, "single_ui_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    return-void
.end method

.method private setBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    invoke-virtual {v0, p1}, Lcn/nubia/server/breathinglight/BreathingLightService;->setLightBrightness(I)V

    .line 221
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mService:Lcn/nubia/server/breathinglight/BreathingLightService;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcn/nubia/server/breathinglight/BreathingLightService;->sendRequestToStateMachine(I)V

    .line 223
    return-void
.end method

.method private singleUiModeChange()V
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "single_ui_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    .line 154
    const-string v1, "BreathingLightSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singleUiModeChange: mBrightnessMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    invoke-direct {p0, v1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->processSingleUiMode(I)V

    .line 156
    return-void
.end method


# virtual methods
.method public handleBootCompeleted()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->initSettings()V

    .line 99
    return-void
.end method

.method public isBreathingLightTouchEnable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 131
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 133
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "led_light_touch_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "enable":I
    const-string v4, "BreathingLightSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isBreathingLightTouchEnable: Enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-ne v0, v2, :cond_0

    .line 138
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v2

    .restart local v0    # "enable":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v2, v3

    .line 135
    goto :goto_0

    .line 137
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v2, "BreathingLightSettings"

    const-string v4, "isBreathingLightTouchEnable: mContext is null!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 138
    goto :goto_0
.end method

.method public isChargeSwitchEnable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    .line 120
    iget-object v4, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "led_light_charge_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "enable":I
    const-string v4, "BreathingLightSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isChargeSwitchEnable: Enable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-ne v0, v2, :cond_0

    .line 126
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return v2

    .restart local v0    # "enable":I
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    move v2, v3

    .line 123
    goto :goto_0

    .line 125
    .end local v0    # "enable":I
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    const-string v2, "BreathingLightSettings"

    const-string v4, "isChargeSwitchEnable: mContext is null!! "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 126
    goto :goto_0
.end method

.method public isNotificationEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mNotificationLightEnable:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleUiModeEnable()Z
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mSingleUiModeEnable:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAutoBrightnessState(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 187
    iget-object v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "led_light_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    .line 189
    iget v1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings;->mBrightnessMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->enableAutoBrightness(Z)V

    .line 192
    :cond_0
    return-void
.end method
