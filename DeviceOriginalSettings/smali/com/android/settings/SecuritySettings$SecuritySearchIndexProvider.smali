.class Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;
.super Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecuritySearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;-><init>()V

    .line 432
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    .line 433
    return-void

    .line 432
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 523
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 524
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-nez v4, :cond_1

    .line 525
    :cond_0
    const-string v4, "sim_lock"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_1
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 529
    .local v3, "um":Landroid/os/UserManager;
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 530
    const-string v4, "credentials_management"

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_2
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 481
    .local v2, "res":Landroid/content/res/Resources;
    const v8, 0x7f0a05fa

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 483
    .local v5, "screenTitle":Ljava/lang/String;
    new-instance v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 484
    .local v0, "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    iput-object v5, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 485
    iput-object v5, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 486
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    iget-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-nez v8, :cond_0

    .line 489
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_2

    const v3, 0x7f0a05f6

    .line 492
    .local v3, "resId":I
    :goto_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 493
    .restart local v0    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 494
    iput-object v5, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 495
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v3    # "resId":I
    :cond_0
    const-string v8, "user"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 501
    .local v7, "um":Landroid/os/UserManager;
    const-string v8, "no_config_credentials"

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 502
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 504
    .local v1, "keyStore":Landroid/security/KeyStore;
    invoke-virtual {v1}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v8

    if-eqz v8, :cond_3

    const v6, 0x7f0a0b8e

    .line 508
    .local v6, "storageSummaryRes":I
    :goto_1
    new-instance v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 509
    .restart local v0    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 510
    iput-object v5, v0, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 511
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v1    # "keyStore":Landroid/security/KeyStore;
    .end local v6    # "storageSummaryRes":I
    :cond_1
    return-object v4

    .line 489
    .end local v7    # "um":Landroid/os/UserManager;
    :cond_2
    const v3, 0x7f0a05f4

    goto :goto_0

    .line 504
    .restart local v1    # "keyStore":Landroid/security/KeyStore;
    .restart local v7    # "um":Landroid/os/UserManager;
    :cond_3
    const v6, 0x7f0a0b8f

    goto :goto_1
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 446
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SecuritySettings$SecuritySearchIndexProvider;->mIsPrimary:Z

    if-eqz v5, :cond_0

    .line 447
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 450
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 469
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 470
    .local v4, "sir":Landroid/provider/SearchIndexableResource;
    const v5, 0x7f070047

    iput v5, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 471
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    return-object v3

    .line 453
    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const v2, 0x7f070043

    .line 454
    .local v2, "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 455
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 456
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    .end local v2    # "resId":I
    .end local v4    # "sir":Landroid/provider/SearchIndexableResource;
    :pswitch_2
    const v2, 0x7f07004d

    .line 461
    .restart local v2    # "resId":I
    new-instance v4, Landroid/provider/SearchIndexableResource;

    invoke-direct {v4, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 462
    .restart local v4    # "sir":Landroid/provider/SearchIndexableResource;
    iput v2, v4, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 463
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
