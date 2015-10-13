.class public Lnubia/os/DefaultHaptics;
.super Ljava/lang/Object;
.source "DefaultHaptics.java"

# interfaces
.implements Lnubia/os/INubiaHaptics;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_CLICK_BUTTON:Ljava/lang/Long;

.field private static final DEFAULT_CLICK_KEY:Ljava/lang/Long;

.field private static final DEFAULT_LONG_NOTIFICATION_VIBRATOR1:Ljava/lang/Long;

.field private static final DEFAULT_LONG_NOTIFICATION_VIBRATOR2:Ljava/lang/Long;

.field private static final DEFAULT_LONG_PRESS_BLANK:Ljava/lang/Long;

.field private static final DEFAULT_LONG_PRESS_BUTTON:Ljava/lang/Long;

.field private static final DEFAULT_LONG_PRESS_KEY_END:Ljava/lang/Long;

.field private static final DEFAULT_LONG_PRESS_KEY_START:Ljava/lang/Long;

.field private static final DEFAULT_LONG_PRESS_TELBUTTON_END:Ljava/lang/Long;

.field private static final DEFAULT_LONG_PRESS_TELBUTTON_START:Ljava/lang/Long;

.field private static final DEFAULT_SLIDE_BUTTON_END:Ljava/lang/Long;

.field private static final DEFAULT_SLIDE_BUTTON_START:Ljava/lang/Long;

.field private static final NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TiHaptics"


# instance fields
.field private isPermissionOK:Z

.field private len:I

.field private mContext:Landroid/content/Context;

.field private mDefalut:[Ljava/lang/String;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1e

    const-wide/16 v2, 0x28

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_CLICK_BUTTON:Ljava/lang/Long;

    .line 25
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_CLICK_KEY:Ljava/lang/Long;

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_START:Ljava/lang/Long;

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_END:Ljava/lang/Long;

    .line 28
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_START:Ljava/lang/Long;

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_END:Ljava/lang/Long;

    .line 30
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BUTTON:Ljava/lang/Long;

    .line 31
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BLANK:Ljava/lang/Long;

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_START:Ljava/lang/Long;

    .line 33
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_END:Ljava/lang/Long;

    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR1:Ljava/lang/Long;

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR2:Ljava/lang/Long;

    .line 38
    const-string v0, "ro.nubia.haptics.default"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v2, p0, Lnubia/os/DefaultHaptics;->len:I

    .line 44
    iput-boolean v2, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 48
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    .line 49
    sget-object v1, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    sget-object v1, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    .line 51
    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lnubia/os/DefaultHaptics;->len:I

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v3, "android.permission.VIBRATE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v1, v3, v4, v5}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    return-void

    :cond_2
    move v1, v2

    .line 54
    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v2, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v0, p0, Lnubia/os/DefaultHaptics;->len:I

    .line 44
    iput-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 62
    iput-object p1, p0, Lnubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    .line 63
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1, p1}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    .line 64
    sget-object v1, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    sget-object v1, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    array-length v1, v1

    iput v1, p0, Lnubia/os/DefaultHaptics;->len:I

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    .line 70
    return-void
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 0
    .param p1, "log_str"    # Ljava/lang/String;

    .prologue
    .line 241
    return-void
.end method

.method private isHapticsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 246
    const/4 v0, 0x1

    .line 247
    .local v0, "intValue":I
    iget-object v2, p0, Lnubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lnubia/os/DefaultHaptics;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 250
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public clickButton()V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-lez v0, :cond_3

    .line 78
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_CLICK_BUTTON:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public clickKey()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "clickKey e"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 92
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_CLICK_KEY:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-boolean v1, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v1, :cond_1

    const-string v1, "Permission Error!"

    invoke-direct {p0, v1}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 233
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto :goto_0
.end method

.method public longPressBlank()V
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 168
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 172
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BLANK:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressButton()V
    .locals 4

    .prologue
    const/4 v2, 0x6

    .line 154
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "longPressButton e"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 158
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 159
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_BUTTON:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressKeyEnd()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 140
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "longPressKeyEnd e"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 144
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 145
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_END:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressKeyStart()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 127
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 131
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_KEY_START:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressTelButtonEnd()V
    .locals 4

    .prologue
    const/16 v2, 0x9

    .line 194
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 198
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_END:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public longPressTelButtonStart()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 181
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 185
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 187
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_PRESS_TELBUTTON_START:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public notificationVibrator1()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 207
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_1

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 209
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_2

    .line 210
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR1:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public notificationVibrator2()V
    .locals 4

    .prologue
    const/16 v2, 0xb

    .line 219
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_1

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_2

    .line 222
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_LONG_NOTIFICATION_VIBRATOR2:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public slideButtonEnd()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 114
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 118
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_END:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public slideButtonStart()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 101
    invoke-direct {p0}, Lnubia/os/DefaultHaptics;->isHapticsDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-boolean v0, p0, Lnubia/os/DefaultHaptics;->isPermissionOK:Z

    if-nez v0, :cond_2

    const-string v0, "Permission Error!"

    invoke-direct {p0, v0}, Lnubia/os/DefaultHaptics;->LOG(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lnubia/os/DefaultHaptics;->NUBIA_HAPTICS_DEFAULT:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lnubia/os/DefaultHaptics;->len:I

    if-le v0, v2, :cond_3

    .line 105
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lnubia/os/DefaultHaptics;->mDefalut:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lnubia/os/DefaultHaptics;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lnubia/os/DefaultHaptics;->DEFAULT_SLIDE_BUTTON_START:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
