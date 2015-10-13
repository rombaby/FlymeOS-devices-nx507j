.class Lcom/android/server/display/nubiaOverlayDisplayWindow$17;
.super Ljava/lang/Object;
.source "nubiaOverlayDisplayWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1622
    iput-object p1, p0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1627
    const-string v2, "0"

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->KEY_MENU_AND_HOME_POS:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1629
    .local v16, "isKeyPosNotChanged":Z
    const/4 v7, 0x0

    .line 1630
    .local v7, "keyCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerLeftButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5200(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 1631
    if-eqz v16, :cond_1

    const/16 v7, 0x52

    .line 1640
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J
    invoke-static {v2, v4, v5}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5502(Lcom/android/server/display/nubiaOverlayDisplayWindow;J)J

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->downTime:J
    invoke-static {v4}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5500(Lcom/android/server/display/nubiaOverlayDisplayWindow;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x88

    const/16 v13, 0x101

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 1644
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 1646
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 1647
    const/4 v2, 0x0

    return v2

    .line 1631
    .end local v15    # "down":Landroid/view/KeyEvent;
    :cond_1
    const/4 v7, 0x4

    goto :goto_0

    .line 1633
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerRightButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5300(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 1634
    if-eqz v16, :cond_3

    const/4 v7, 0x4

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v7, 0x52

    goto :goto_1

    .line 1636
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/nubiaOverlayDisplayWindow$17;->this$0:Lcom/android/server/display/nubiaOverlayDisplayWindow;

    # getter for: Lcom/android/server/display/nubiaOverlayDisplayWindow;->mLowerCenterButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/server/display/nubiaOverlayDisplayWindow;->access$5400(Lcom/android/server/display/nubiaOverlayDisplayWindow;)Landroid/widget/ImageView;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 1637
    const/4 v7, 0x3

    goto :goto_0
.end method
