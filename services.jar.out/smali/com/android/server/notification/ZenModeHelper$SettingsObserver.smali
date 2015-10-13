.class Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final TIMING_ZEN_MODE_URI:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 651
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 646
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 648
    const-string v0, "timing_zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->TIMING_ZEN_MODE_URI:Landroid/net/Uri;

    .line 652
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$100(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 656
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 658
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->TIMING_ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 660
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 661
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 665
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 666
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 669
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 671
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mLastZenModeHelper:Lcn/nubia/server/notification/LastZenModeHelper;
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->access$200(Lcom/android/server/notification/ZenModeHelper;)Lcn/nubia/server/notification/LastZenModeHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/server/notification/LastZenModeHelper;->saveLastZenMode()Z

    .line 672
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->access$100(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "zen_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 674
    .local v2, "mode":I
    if-ne v2, v1, :cond_1

    .line 675
    .local v1, "isZenMode":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->clearRepeatCallsIncomingTimes(Z)V
    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->access$300(Lcom/android/server/notification/ZenModeHelper;Z)V

    .line 677
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->updateZenMode()V

    .line 689
    .end local v1    # "isZenMode":Z
    .end local v2    # "mode":I
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "mode":I
    :cond_1
    move v1, v4

    .line 674
    goto :goto_0

    .line 680
    .end local v2    # "mode":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->TIMING_ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 681
    iget-object v5, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/notification/ZenModeHelper;->access$100(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "timing_zen_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    move v3, v1

    .line 682
    .local v3, "value":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$400(Lcom/android/server/notification/ZenModeHelper;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 683
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-boolean v4, v0, Landroid/service/notification/ZenModeConfig;->timingZenMode:Z

    if-eq v3, v4, :cond_3

    .line 684
    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->timingZenMode:Z

    .line 686
    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4, v0}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_1

    .end local v0    # "config":Landroid/service/notification/ZenModeConfig;
    .end local v3    # "value":Z
    :cond_4
    move v3, v4

    .line 681
    goto :goto_2
.end method
