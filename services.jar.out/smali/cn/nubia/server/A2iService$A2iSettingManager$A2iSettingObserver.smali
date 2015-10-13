.class Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;
.super Landroid/database/ContentObserver;
.source "A2iService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/A2iService$A2iSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A2iSettingObserver"
.end annotation


# instance fields
.field private final mSystemVoiceEnabledUri:Landroid/net/Uri;

.field private final mTriggerModeUri:Landroid/net/Uri;

.field private final mUser1VoiceAppUri:Landroid/net/Uri;

.field private final mUser1VoiceEnabledUri:Landroid/net/Uri;

.field private final mUser2VoiceAppUri:Landroid/net/Uri;

.field private final mUser2VoiceEnabledUri:Landroid/net/Uri;

.field private final mUser3VoiceAppUri:Landroid/net/Uri;

.field private final mUser3VoiceEnabledUri:Landroid/net/Uri;

.field private final mUser4VoiceAppUri:Landroid/net/Uri;

.field private final mUser4VoiceEnabledUri:Landroid/net/Uri;

.field final synthetic this$1:Lcn/nubia/server/A2iService$A2iSettingManager;


# direct methods
.method public constructor <init>(Lcn/nubia/server/A2iService$A2iSettingManager;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 664
    iput-object p1, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    .line 665
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 634
    const-string v0, "a2i_user_indep_voice_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mSystemVoiceEnabledUri:Landroid/net/Uri;

    .line 637
    const-string v0, "a2i_trigger_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mTriggerModeUri:Landroid/net/Uri;

    .line 640
    const-string v0, "a2i_user1_voice_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser1VoiceEnabledUri:Landroid/net/Uri;

    .line 643
    const-string v0, "a2i_user2_voice_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser2VoiceEnabledUri:Landroid/net/Uri;

    .line 646
    const-string v0, "a2i_user3_voice_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser3VoiceEnabledUri:Landroid/net/Uri;

    .line 649
    const-string v0, "a2i_user4_voice_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser4VoiceEnabledUri:Landroid/net/Uri;

    .line 652
    const-string v0, "a2i_user1_voice_app"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser1VoiceAppUri:Landroid/net/Uri;

    .line 655
    const-string v0, "a2i_user2_voice_app"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser2VoiceAppUri:Landroid/net/Uri;

    .line 658
    const-string v0, "a2i_user3_voice_app"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser3VoiceAppUri:Landroid/net/Uri;

    .line 661
    const-string v0, "a2i_user4_voice_app"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser4VoiceAppUri:Landroid/net/Uri;

    .line 666
    return-void
.end method

.method private handleSettingChanged(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 694
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mSystemVoiceEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mTriggerModeUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v0}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateTriggerMode()I

    goto :goto_0

    .line 698
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser1VoiceEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 699
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    goto :goto_0

    .line 700
    :cond_3
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser2VoiceEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 701
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v0, v2}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    goto :goto_0

    .line 702
    :cond_4
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser3VoiceEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 703
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v0, v3}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    goto :goto_0

    .line 704
    :cond_5
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser4VoiceEnabledUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 705
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    invoke-virtual {v0, v4}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    goto :goto_0

    .line 706
    :cond_6
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser1VoiceAppUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 707
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    # invokes: Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainedData(I)V
    invoke-static {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->access$1900(Lcn/nubia/server/A2iService$A2iSettingManager;I)V

    goto :goto_0

    .line 708
    :cond_7
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser2VoiceAppUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 709
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    # invokes: Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainedData(I)V
    invoke-static {v0, v2}, Lcn/nubia/server/A2iService$A2iSettingManager;->access$1900(Lcn/nubia/server/A2iService$A2iSettingManager;I)V

    goto :goto_0

    .line 710
    :cond_8
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser3VoiceAppUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    # invokes: Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainedData(I)V
    invoke-static {v0, v3}, Lcn/nubia/server/A2iService$A2iSettingManager;->access$1900(Lcn/nubia/server/A2iService$A2iSettingManager;I)V

    goto :goto_0

    .line 712
    :cond_9
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser4VoiceAppUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    # invokes: Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainedData(I)V
    invoke-static {v0, v4}, Lcn/nubia/server/A2iService$A2iSettingManager;->access$1900(Lcn/nubia/server/A2iService$A2iSettingManager;I)V

    goto :goto_0
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 689
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 690
    invoke-direct {p0, p2}, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->handleSettingChanged(Landroid/net/Uri;)V

    .line 691
    return-void
.end method

.method public register()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 669
    const/16 v5, 0xa

    new-array v0, v5, [Landroid/net/Uri;

    iget-object v5, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mSystemVoiceEnabledUri:Landroid/net/Uri;

    aput-object v5, v0, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mTriggerModeUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser1VoiceEnabledUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser2VoiceEnabledUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser3VoiceEnabledUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser4VoiceEnabledUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser1VoiceAppUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser2VoiceAppUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser3VoiceAppUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->mUser4VoiceAppUri:Landroid/net/Uri;

    aput-object v6, v0, v5

    .line 682
    .local v0, "a2iUris":[Landroid/net/Uri;
    move-object v1, v0

    .local v1, "arr$":[Landroid/net/Uri;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 683
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->this$1:Lcn/nubia/server/A2iService$A2iSettingManager;

    # getter for: Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcn/nubia/server/A2iService$A2iSettingManager;->access$1800(Lcn/nubia/server/A2iService$A2iSettingManager;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v7, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
