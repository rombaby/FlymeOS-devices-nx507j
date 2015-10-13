.class Lcom/android/server/display/nubiaOverlayDisplayWindow$16;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1606
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 1610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1618
    :goto_0
    return v2

    .line 1612
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1615
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$16;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->sendInjectEvent(II)V

    goto :goto_0

    .line 1610
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
