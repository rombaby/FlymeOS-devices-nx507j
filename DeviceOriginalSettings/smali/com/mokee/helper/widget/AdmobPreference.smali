.class public Lcom/mokee/helper/widget/AdmobPreference;
.super Landroid/preference/Preference;
.source "AdmobPreference.java"


# static fields
.field private static adView:Lcom/google/ads/AdView;

.field private static admobCustomView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ui"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    sget-object v1, Lcom/mokee/helper/widget/AdmobPreference;->admobCustomView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/mokee/helper/widget/AdmobPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/mokee/helper/widget/AdmobPreference;->admobCustomView:Landroid/view/View;

    .line 53
    sget-object v1, Lcom/mokee/helper/widget/AdmobPreference;->admobCustomView:Landroid/view/View;

    const v2, 0x7f11018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/ads/AdView;

    sput-object v1, Lcom/mokee/helper/widget/AdmobPreference;->adView:Lcom/google/ads/AdView;

    .line 54
    sget-object v1, Lcom/mokee/helper/widget/AdmobPreference;->adView:Lcom/google/ads/AdView;

    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 56
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    sget-object v1, Lcom/mokee/helper/widget/AdmobPreference;->admobCustomView:Landroid/view/View;

    return-object v1
.end method
