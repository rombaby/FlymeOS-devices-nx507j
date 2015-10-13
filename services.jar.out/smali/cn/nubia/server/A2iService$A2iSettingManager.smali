.class Lcn/nubia/server/A2iService$A2iSettingManager;
.super Ljava/lang/Object;
.source "A2iService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/A2iService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "A2iSettingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIsTrainingUpdated:Z

.field final synthetic this$0:Lcn/nubia/server/A2iService;


# direct methods
.method public constructor <init>(Lcn/nubia/server/A2iService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    iput-object p1, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->this$0:Lcn/nubia/server/A2iService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mIsTrainingUpdated:Z

    .line 460
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 461
    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/server/A2iService$A2iSettingManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/A2iService$A2iSettingManager;

    .prologue
    .line 453
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/server/A2iService$A2iSettingManager;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/A2iService$A2iSettingManager;
    .param p1, "x1"    # I

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainedData(I)V

    return-void
.end method

.method private getAppSettingName(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 600
    .local v0, "name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 617
    :goto_0
    return-object v0

    .line 602
    :pswitch_0
    const-string v0, "a2i_user1_voice_app"

    .line 603
    goto :goto_0

    .line 605
    :pswitch_1
    const-string v0, "a2i_user2_voice_app"

    .line 606
    goto :goto_0

    .line 608
    :pswitch_2
    const-string v0, "a2i_user3_voice_app"

    .line 609
    goto :goto_0

    .line 611
    :pswitch_3
    const-string v0, "a2i_user4_voice_app"

    .line 612
    goto :goto_0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getEnabledSettingName(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 572
    const/4 v0, 0x0

    .line 574
    .local v0, "name":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 594
    :goto_0
    return-object v0

    .line 576
    :pswitch_0
    const-string v0, "a2i_user1_voice_enabled"

    .line 577
    goto :goto_0

    .line 579
    :pswitch_1
    const-string v0, "a2i_user2_voice_enabled"

    .line 580
    goto :goto_0

    .line 582
    :pswitch_2
    const-string v0, "a2i_user3_voice_enabled"

    .line 583
    goto :goto_0

    .line 585
    :pswitch_3
    const-string v0, "a2i_user4_voice_enabled"

    .line 586
    goto :goto_0

    .line 588
    :pswitch_4
    const-string v0, "a2i_user_indep_voice_enabled"

    .line 589
    goto :goto_0

    .line 574
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isAppRegistered(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 539
    invoke-virtual {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->getRegisteredAppName(I)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "packName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 542
    :cond_0
    const/4 v1, 0x0

    .line 545
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDetectionEnabled(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 621
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->getEnabledSettingName(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v2

    .line 626
    :cond_1
    iget-object v3, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 627
    .local v0, "enabled":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isNewTrainedData()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mIsTrainingUpdated:Z

    return v0
.end method

.method private updateTrainedData(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 553
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->isAppRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 555
    invoke-direct {p0}, Lcn/nubia/server/A2iService$A2iSettingManager;->isNewTrainedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    # invokes: Lcn/nubia/server/A2iService;->nativeSaveUserData(I)I
    invoke-static {p1}, Lcn/nubia/server/A2iService;->access$1600(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 559
    const-string v0, "A2iService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not save userdata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->this$0:Lcn/nubia/server/A2iService;

    # invokes: Lcn/nubia/server/A2iService;->sendErrorUserdataEvent(I)V
    invoke-static {v0, p1}, Lcn/nubia/server/A2iService;->access$1700(Lcn/nubia/server/A2iService;I)V

    .line 563
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateTrainingState(Z)V

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 567
    :cond_2
    # invokes: Lcn/nubia/server/A2iService;->nativeRemoveUserData(I)I
    invoke-static {p1}, Lcn/nubia/server/A2iService;->access$1100(I)I

    goto :goto_0
.end method


# virtual methods
.method public clearUserSetting(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->getEnabledSettingName(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->getAppSettingName(I)Ljava/lang/String;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_1

    .line 534
    iget-object v1, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 536
    :cond_1
    return-void
.end method

.method public getRegisteredAppName(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "key":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 517
    const/4 v1, 0x0

    .line 520
    :goto_0
    return-object v1

    .line 505
    :pswitch_0
    const-string v0, "a2i_user1_voice_app"

    .line 520
    :goto_1
    iget-object v1, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 508
    :pswitch_1
    const-string v0, "a2i_user2_voice_app"

    .line 509
    goto :goto_1

    .line 511
    :pswitch_2
    const-string v0, "a2i_user3_voice_app"

    .line 512
    goto :goto_1

    .line 514
    :pswitch_3
    const-string v0, "a2i_user4_voice_app"

    .line 515
    goto :goto_1

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 467
    new-instance v0, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;

    invoke-direct {v0, p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;-><init>(Lcn/nubia/server/A2iService$A2iSettingManager;Landroid/os/Handler;)V

    .line 468
    .local v0, "observer":Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;
    invoke-virtual {v0}, Lcn/nubia/server/A2iService$A2iSettingManager$A2iSettingObserver;->register()V

    .line 469
    return-void
.end method

.method public updateEnableDetection(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1}, Lcn/nubia/server/A2iService$A2iSettingManager;->isDetectionEnabled(I)Z

    move-result v0

    # invokes: Lcn/nubia/server/A2iService;->nativeEnableDetection(IZ)I
    invoke-static {p1, v0}, Lcn/nubia/server/A2iService;->access$1400(IZ)I

    move-result v0

    return v0
.end method

.method public updateTrainingState(Z)V
    .locals 0
    .param p1, "done"    # Z

    .prologue
    .line 494
    iput-boolean p1, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mIsTrainingUpdated:Z

    .line 495
    return-void
.end method

.method public updateTriggerMode()I
    .locals 4

    .prologue
    .line 485
    iget-object v1, p0, Lcn/nubia/server/A2iService$A2iSettingManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "a2i_trigger_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 486
    .local v0, "mode":I
    const-string v1, "A2iService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set trigger mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    # invokes: Lcn/nubia/server/A2iService;->nativeSetTriggerMode(I)I
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$1500(I)I

    move-result v1

    return v1
.end method
