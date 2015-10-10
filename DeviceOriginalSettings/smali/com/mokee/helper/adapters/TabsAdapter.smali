.class public Lcom/mokee/helper/adapters/TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "TabsAdapter.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mActionBar:Landroid/app/ActionBar;

.field private final mContext:Landroid/content/Context;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    .line 54
    iput-object p2, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 55
    iget-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 56
    iget-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;

    invoke-direct {v0, p2, p3}, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 61
    .local v0, "info":Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;
    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 62
    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 63
    iget-object v1, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 65
    invoke-virtual {p0}, Lcom/mokee/helper/adapters/TabsAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;

    .line 76
    .local v0, "info":Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mContext:Landroid/content/Context;

    # getter for: Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->access$000(Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;->access$100(Lcom/mokee/helper/adapters/TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 84
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 102
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "tag":Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 93
    iget-object v2, p0, Lcom/mokee/helper/adapters/TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 99
    return-void
.end method
