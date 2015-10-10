.class public Lcom/google/ads/doubleclick/DfpExtras;
.super Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public clearExtras()Lcom/google/ads/doubleclick/DfpExtras;
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 74
    return-object p0
.end method

.method public bridge synthetic clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/ads/doubleclick/DfpExtras;->clearExtras()Lcom/google/ads/doubleclick/DfpExtras;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/ads/doubleclick/DfpExtras;->a:Ljava/lang/String;

    return-object v0
.end method
