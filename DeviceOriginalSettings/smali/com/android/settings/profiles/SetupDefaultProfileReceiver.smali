.class public Lcom/flyme/deviceoriginalsettings/profiles/SetupDefaultProfileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetupDefaultProfileReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_profiles_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 19
    invoke-static {p1}, Lmokee/app/ProfileManager;->getInstance(Landroid/content/Context;)Lmokee/app/ProfileManager;

    move-result-object v1

    .line 20
    .local v1, "profileManager":Lmokee/app/ProfileManager;
    const-string v2, "0230226d-0d05-494a-a9bd-d222a1117655"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmokee/app/ProfileManager;->getProfile(Ljava/util/UUID;)Lmokee/app/Profile;

    move-result-object v0

    .line 22
    .local v0, "defaultProfile":Lmokee/app/Profile;
    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1, v0}, Lcom/flyme/deviceoriginalsettings/profiles/SetupActionsFragment;->fillProfileWithCurrentSettings(Landroid/content/Context;Lmokee/app/Profile;)V

    .line 24
    invoke-virtual {v1, v0}, Lmokee/app/ProfileManager;->updateProfile(Lmokee/app/Profile;)V

    .line 29
    .end local v0    # "defaultProfile":Lmokee/app/Profile;
    .end local v1    # "profileManager":Lmokee/app/ProfileManager;
    :cond_0
    return-void
.end method
