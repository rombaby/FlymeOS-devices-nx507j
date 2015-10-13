.class public final Lnubia/os/BreathingLightManager;
.super Ljava/lang/Object;
.source "BreathingLightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/BreathingLightManager$BreathingLightRequest;
    }
.end annotation


# static fields
.field public static final COLOR_BLUE:I = 0x3

.field public static final COLOR_GREEN:I = 0x2

.field public static final COLOR_RED:I = 0x1

.field private static final DEBUG:Z = false

.field public static final KEYGUARD_DRAG_RELEASE:I = 0x2

.field public static final KEYGUARD_DRAG_START:I = 0x1

.field public static final LEFT:I = 0x20

.field public static final LIGHT_ALWAYS_OFF:I = 0x2

.field public static final LIGHT_ALWAYS_ON:I = 0x1

.field public static final LIGHT_BLINK:I = 0x3

.field public static final LIGHT_BLINK_ONCE:I = 0x6

.field public static final LIGHT_IC_OFF:I = 0x0

.field public static final LIGHT_RESERVE:I = 0x7

.field public static final LIGHT_TURN_OFF:I = 0x5

.field public static final LIGHT_TURN_ON:I = 0x4

.field public static final MIDDLE:I = 0x10

.field public static final PRESS_KEY:I = 0x3

.field public static final PROXIMITY_SCREEN_OFF:I = 0x6

.field public static final PROXIMITY_SCREEN_ON:I = 0x7

.field public static final RIGHT:I = 0x8

.field public static final SCENE_KEYGUARD_LOCKED:I = 0x2

.field public static final SCENE_SCREEN_IDLE:I = 0x3

.field public static final SCENE_SCREEN_OFF:I = 0x1

.field public static final SHUTDOWN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BreathingLightManager"

.field public static final TIME_0:I = 0x0

.field public static final TIME_1:I = 0x1

.field public static final TIME_2:I = 0x2

.field public static final TIME_3:I = 0x3

.field public static final TIME_4:I = 0x4

.field public static final TIME_5:I = 0x5

.field public static final TIME_6:I = 0x6

.field public static final TIME_7:I = 0x7

.field public static final TOUCH_SCREEN:I = 0x4

.field private static mService:Lnubia/os/IBreathingLightManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static getService()Lnubia/os/IBreathingLightManager;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lnubia/os/BreathingLightManager;->mService:Lnubia/os/IBreathingLightManager;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "nubia.breathinglight"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lnubia/os/IBreathingLightManager$Stub;->asInterface(Landroid/os/IBinder;)Lnubia/os/IBreathingLightManager;

    move-result-object v0

    sput-object v0, Lnubia/os/BreathingLightManager;->mService:Lnubia/os/IBreathingLightManager;

    .line 97
    :cond_0
    sget-object v0, Lnubia/os/BreathingLightManager;->mService:Lnubia/os/IBreathingLightManager;

    return-object v0
.end method

.method public static requestBreathingLight(I)V
    .locals 1
    .param p0, "known"    # I

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lnubia/os/BreathingLightManager;->getService()Lnubia/os/IBreathingLightManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lnubia/os/IBreathingLightManager;->requestBreathingLight(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static requestBreathingLight(IIIII)V
    .locals 6
    .param p0, "light"    # I
    .param p1, "mode"    # I
    .param p2, "frequency"    # I
    .param p3, "scene"    # I
    .param p4, "color"    # I

    .prologue
    .line 88
    :try_start_0
    invoke-static {}, Lnubia/os/BreathingLightManager;->getService()Lnubia/os/IBreathingLightManager;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lnubia/os/IBreathingLightManager;->requestBreathingLightExt(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public newMakeRequest(III)Lnubia/os/BreathingLightManager$BreathingLightRequest;
    .locals 1
    .param p1, "light"    # I
    .param p2, "mode"    # I
    .param p3, "scene"    # I

    .prologue
    .line 76
    new-instance v0, Lnubia/os/BreathingLightManager$BreathingLightRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lnubia/os/BreathingLightManager$BreathingLightRequest;-><init>(Lnubia/os/BreathingLightManager;III)V

    return-object v0
.end method
