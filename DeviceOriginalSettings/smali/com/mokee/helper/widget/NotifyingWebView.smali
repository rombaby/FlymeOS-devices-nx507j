.class public Lcom/mokee/helper/widget/NotifyingWebView;
.super Landroid/webkit/WebView;
.source "NotifyingWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;
    }
.end annotation


# instance fields
.field private mContentReady:Z

.field private mListener:Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mContentReady:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mContentReady:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mContentReady:Z

    .line 42
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 52
    invoke-virtual {p0}, Lcom/mokee/helper/widget/NotifyingWebView;->getContentHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mContentReady:Z

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mListener:Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mListener:Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;

    invoke-interface {v0, p0}, Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;->onInitialContentReady(Landroid/webkit/WebView;)V

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mContentReady:Z

    .line 58
    :cond_1
    return-void
.end method

.method public setOnInitialContentReadyListener(Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mokee/helper/widget/NotifyingWebView;->mListener:Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;

    .line 46
    return-void
.end method
