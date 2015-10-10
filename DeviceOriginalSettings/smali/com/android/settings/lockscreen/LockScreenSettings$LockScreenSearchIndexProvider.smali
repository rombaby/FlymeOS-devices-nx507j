.class Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;
.super Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;
.source "LockScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockScreenSearchIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/search/BaseSearchIndexProvider;-><init>()V

    .line 566
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;->mIsPrimary:Z

    .line 567
    return-void

    .line 566
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
    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v0, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 641
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v1}, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;->access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v2

    .line 644
    .local v2, "resId":I
    const v3, 0x7f070041

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_0

    .line 647
    const-string v3, "visiblepattern"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    const-string v3, "visible_error_pattern"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    const-string v3, "visibledots"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 654
    const-string v3, "trust_agent"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    const-string v3, "manage_trust_agents"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    if-nez v3, :cond_2

    .line 660
    const-string v3, "lockscreen_visualizer"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_2
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
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
    .line 588
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 591
    .local v5, "res":Landroid/content/res/Resources;
    const v9, 0x7f0a05fa

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 593
    .local v8, "screenTitle":Ljava/lang/String;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 594
    .local v2, "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    iput-object v8, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 595
    iput-object v8, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 596
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    iget-boolean v9, p0, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings$LockScreenSearchIndexProvider;->mIsPrimary:Z

    if-nez v9, :cond_0

    .line 599
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v9

    if-eqz v9, :cond_1

    const v6, 0x7f0a05f6

    .line 602
    .local v6, "resId":I
    :goto_0
    new-instance v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 603
    .restart local v2    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 604
    iput-object v8, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 605
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v6    # "resId":I
    :cond_0
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 610
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 611
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/flyme/deviceoriginalsettings/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v1

    .line 614
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 615
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;

    .line 616
    .local v0, "agent":Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 617
    .restart local v2    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    iget-object v9, v0, Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    iput-object v9, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 618
    iput-object v8, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 619
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 599
    .end local v0    # "agent":Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v1    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/deviceoriginalsettings/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v3    # "i":I
    .end local v4    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const v6, 0x7f0a05f4

    goto :goto_0

    .line 623
    .restart local v4    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintInstalled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 624
    new-instance v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 625
    .restart local v2    # "data":Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;
    const v9, 0x7f0a03f0

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 628
    iget-object v9, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v9, v2, Lcom/flyme/deviceoriginalsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 629
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    :cond_3
    return-object v7
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
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
    .line 573
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 577
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    # invokes: Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    invoke-static {p1, v0}, Lcom/flyme/deviceoriginalsettings/lockscreen/LockScreenSettings;->access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v1

    .line 579
    .local v1, "resId":I
    new-instance v3, Landroid/provider/SearchIndexableResource;

    invoke-direct {v3, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 580
    .local v3, "sir":Landroid/provider/SearchIndexableResource;
    iput v1, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 581
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    return-object v2
.end method
