.class final Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V
    .locals 1

    .prologue
    .line 512
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    .line 513
    # getter for: Lcom/flyme/deviceoriginalsettings/SoundSettings;->mHandler:Lcom/flyme/deviceoriginalsettings/SoundSettings$H;
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$200(Lcom/flyme/deviceoriginalsettings/SoundSettings;)Lcom/flyme/deviceoriginalsettings/SoundSettings$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 507
    const-string v0, "vibrate_when_ringing"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 509
    const-string v0, "volume_link_notification"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    .line 514
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 528
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 529
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateVibrateWhenRinging()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$1000(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/SoundSettings;->updateNotificationPreferenceState()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->access$1100(Lcom/flyme/deviceoriginalsettings/SoundSettings;)V

    .line 535
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 517
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->this$0:Lcom/flyme/deviceoriginalsettings/SoundSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 518
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 520
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SoundSettings$SettingsObserver;->VOLUME_LINK_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
