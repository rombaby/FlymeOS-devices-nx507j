.class Lcom/mokee/helper/misc/FetchChangeLogTask$1;
.super Ljava/lang/Object;
.source "FetchChangeLogTask.java"

# interfaces
.implements Lcom/mokee/helper/widget/NotifyingWebView$OnInitialContentReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/misc/FetchChangeLogTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

.field final synthetic val$progressContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mokee/helper/misc/FetchChangeLogTask;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$1;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    iput-object p2, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$1;->val$progressContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialContentReady(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$1;->val$progressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/mokee/helper/misc/FetchChangeLogTask$1;->this$0:Lcom/mokee/helper/misc/FetchChangeLogTask;

    # getter for: Lcom/mokee/helper/misc/FetchChangeLogTask;->mChangeLogView:Lcom/mokee/helper/widget/NotifyingWebView;
    invoke-static {v0}, Lcom/mokee/helper/misc/FetchChangeLogTask;->access$000(Lcom/mokee/helper/misc/FetchChangeLogTask;)Lcom/mokee/helper/widget/NotifyingWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mokee/helper/widget/NotifyingWebView;->setVisibility(I)V

    .line 92
    return-void
.end method
