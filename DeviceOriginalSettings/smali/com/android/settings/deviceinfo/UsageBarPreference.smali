.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;,
        Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;
    }
.end annotation


# instance fields
.field private mAllowMediaScan:Z

.field private mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsOnMeasure:Z

.field private mOnRequestMediaRescanListener:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

.field private mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

.field private mRescanMediaStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 508
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 512
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 516
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 520
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 493
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    .line 494
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    .line 497
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMediaStarted:Z

    .line 498
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mIsOnMeasure:Z

    .line 502
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 521
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->init()V

    .line 522
    return-void
.end method

.method static synthetic access$1700(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;)Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMediaStarted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;)Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 525
    const v0, 0x7f0400b4

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 526
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mHandler:Landroid/os/Handler;

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    .line 528
    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2
    .param p1, "order"    # I
    .param p2, "percentage"    # F
    .param p3, "color"    # I

    .prologue
    .line 531
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 533
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 601
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 597
    :cond_0
    return-void
.end method

.method protected notifyScanCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mIsOnMeasure:Z

    .line 553
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    invoke-virtual {v1, v3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setEnabled(Z)V

    .line 555
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setVisibility(I)V

    .line 556
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMediaStarted:Z

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->stopProgress()V

    .line 558
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMediaStarted:Z

    .line 563
    :cond_0
    :goto_1
    return-void

    .line 555
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->reset()V

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 567
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 569
    const v0, 0x7f1101c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    .line 570
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 572
    const v0, 0x7f1101c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    .line 573
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mIsOnMeasure:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setEnabled(Z)V

    .line 574
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$1;-><init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;)V

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    return-void

    :cond_0
    move v0, v1

    .line 573
    goto :goto_0

    .line 574
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method protected onMeasure()V
    .locals 2

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mIsOnMeasure:Z

    .line 546
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mRescanMedia:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$RefreshAnimationView;->setEnabled(Z)V

    .line 549
    :cond_0
    return-void
.end method

.method protected setAllowMediaScan(Z)V
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mAllowMediaScan:Z

    .line 541
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->notifyScanCompleted()V

    .line 542
    return-void
.end method

.method protected setOnRequestMediaRescanListener(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    .line 537
    return-void
.end method
