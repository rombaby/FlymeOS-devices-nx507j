.class Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;
.super Landroid/widget/FrameLayout;
.source "NubiaMorePopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaMorePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NubiaMorePopupViewContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaMorePopup;


# direct methods
.method public constructor <init>(Lnubia/widget/NubiaMorePopup;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 555
    iput-object p1, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    .line 556
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 557
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 561
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 562
    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 563
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 585
    :cond_0
    :goto_0
    return v1

    .line 566
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 568
    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 569
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 573
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 574
    invoke-virtual {p0}, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 575
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 577
    iget-object v2, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    # invokes: Lnubia/widget/NubiaMorePopup;->isDoubleClick()Z
    invoke-static {v2}, Lnubia/widget/NubiaMorePopup;->access$100(Lnubia/widget/NubiaMorePopup;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 578
    iget-object v2, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    iget-object v3, p0, Lnubia/widget/NubiaMorePopup$NubiaMorePopupViewContainer;->this$0:Lnubia/widget/NubiaMorePopup;

    # getter for: Lnubia/widget/NubiaMorePopup;->mPopup:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lnubia/widget/NubiaMorePopup;->access$200(Lnubia/widget/NubiaMorePopup;)Landroid/widget/PopupWindow;

    move-result-object v3

    # invokes: Lnubia/widget/NubiaMorePopup;->startExitAnimation(Landroid/widget/PopupWindow;)V
    invoke-static {v2, v3}, Lnubia/widget/NubiaMorePopup;->access$300(Lnubia/widget/NubiaMorePopup;Landroid/widget/PopupWindow;)V

    goto :goto_0

    .line 583
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 585
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method
