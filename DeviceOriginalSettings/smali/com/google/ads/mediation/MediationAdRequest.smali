.class public Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/ads/AdRequest;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/AdRequest;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "request"    # Lcom/google/ads/AdRequest;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "shareLocation"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->a:Lcom/google/ads/AdRequest;

    .line 37
    iput-boolean p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->c:Z

    .line 39
    if-nez p2, :cond_0

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Z

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/ads/AdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->b:Z

    goto :goto_0
.end method
