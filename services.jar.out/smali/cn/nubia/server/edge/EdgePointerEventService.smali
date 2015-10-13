.class public Lcn/nubia/server/edge/EdgePointerEventService;
.super Lnubia/os/edge/IEdgePointerEventManager$Stub;
.source "EdgePointerEventService.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

.field private mInputManager:Lcom/android/server/input/InputManagerService;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "input"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 24
    invoke-direct {p0}, Lnubia/os/edge/IEdgePointerEventManager$Stub;-><init>()V

    .line 17
    const-string v1, "EdgePointerEventService"

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 27
    iput-object p3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 28
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const-string v1, "ro.nubia.edge.channel"

    const-string v2, "nubia_edge"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "channelName":Ljava/lang/String;
    new-instance v1, Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    iget-object v2, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/input/InputManagerService;->monitorEdgeTpInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;-><init>(Landroid/content/Context;Landroid/view/InputChannel;)V

    iput-object v1, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    .line 33
    .end local v0    # "channelName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public registerEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 38
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->registerEdgeInputEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public unregisterEdgePointerEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V
    .locals 1
    .param p1, "listener"    # Lnubia/os/edge/IEdgePointerEventListener;

    .prologue
    .line 46
    invoke-static {}, Lnubia/os/edge/EdgeFeatureConfig;->isEdgeFeatureEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/nubia/server/edge/EdgePointerEventService;->mEdgePointerEventDispatcher:Lcn/nubia/server/edge/EdgePointerEventDispatcher;

    invoke-virtual {v0, p1}, Lcn/nubia/server/edge/EdgePointerEventDispatcher;->unregisterEdgeInputEventListener(Lnubia/os/edge/IEdgePointerEventListener;)V

    .line 49
    :cond_0
    return-void
.end method
