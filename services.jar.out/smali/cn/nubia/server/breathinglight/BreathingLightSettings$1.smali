.class Lcn/nubia/server/breathinglight/BreathingLightSettings$1;
.super Landroid/database/ContentObserver;
.source "BreathingLightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/breathinglight/BreathingLightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;


# direct methods
.method constructor <init>(Lcn/nubia/server/breathinglight/BreathingLightSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    const-string v0, "BreathingLightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SettingsObserver: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "led_light_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->brightnessModeChange()V
    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$000(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "led_light_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->manualBrightnessChange()V
    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$100(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "notificationsettings"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->notificationSettingsChange()V
    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$200(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "single_ui_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/server/breathinglight/BreathingLightSettings$1;->this$0:Lcn/nubia/server/breathinglight/BreathingLightSettings;

    # invokes: Lcn/nubia/server/breathinglight/BreathingLightSettings;->singleUiModeChange()V
    invoke-static {v0}, Lcn/nubia/server/breathinglight/BreathingLightSettings;->access$300(Lcn/nubia/server/breathinglight/BreathingLightSettings;)V

    goto :goto_0
.end method
