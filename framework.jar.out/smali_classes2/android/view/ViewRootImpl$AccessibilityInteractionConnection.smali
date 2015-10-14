.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 6770
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 6771
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 6772
    return-void
.end method


# virtual methods
.method public computeClickPointInScreen(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/view/MagnificationSpec;)V
    .locals 13
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "interrogatingPid"    # I
    .param p7, "interrogatingTid"    # J
    .param p9, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 6819
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 6820
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6821
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/view/AccessibilityInteractionController;->computeClickPointInScreenClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJLandroid/view/MagnificationSpec;)V

    .line 6833
    :goto_0
    return-void

    .line 6828
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setComputeClickPointInScreenActionResult(Landroid/graphics/Point;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6829
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 14
    .param p1, "accessibilityNodeId"    # J
    .param p3, "interactiveRegion"    # Landroid/graphics/Region;
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingPid"    # I
    .param p8, "interrogatingTid"    # J
    .param p10, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 6779
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 6780
    .local v13, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6781
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6793
    :goto_0
    return-void

    .line 6788
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6789
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 6861
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 6862
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6863
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6875
    :goto_0
    return-void

    .line 6870
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6871
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 6840
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 6841
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6842
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6854
    :goto_0
    return-void

    .line 6849
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6850
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "focusType"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 6881
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 6882
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6883
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6895
    :goto_0
    return-void

    .line 6890
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6891
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "direction"    # I
    .param p4, "interactiveRegion"    # Landroid/graphics/Region;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J
    .param p11, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 6901
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 6902
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6903
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6915
    :goto_0
    return-void

    .line 6910
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6911
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 15
    .param p1, "accessibilityNodeId"    # J
    .param p3, "action"    # I
    .param p4, "arguments"    # Landroid/os/Bundle;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "flags"    # I
    .param p8, "interrogatingPid"    # I
    .param p9, "interrogatingTid"    # J

    .prologue
    .line 6800
    iget-object v3, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl;

    .line 6801
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 6802
    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v3

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 6813
    :goto_0
    return-void

    .line 6808
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v3, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6809
    :catch_0
    move-exception v3

    goto :goto_0
.end method
