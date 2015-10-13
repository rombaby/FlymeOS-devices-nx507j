.class Lcom/android/server/display/nubiaOverlayDisplayWindow$1;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/nubiaOverlayDisplayWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;


# direct methods
.method constructor <init>(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 675
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->updateDefaultDisplayInfo()Z
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$100(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # invokes: Lcom/android/server/display/nubiaOverlayDisplayWindow;->relayout()V
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mDefaultDisplay:Landroid/view/Display;
    invoke-static {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$000(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$1;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->dismiss()V

    .line 693
    :cond_0
    return-void
.end method
