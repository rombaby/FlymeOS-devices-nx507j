.class Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;
.super Lnubia/os/edge/IEdgePointerEventListener$Stub;
.source "EdgeTouchEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/os/edge/EdgeTouchEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IEdgePointerEventListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/os/edge/EdgeTouchEventManager;


# direct methods
.method private constructor <init>(Lnubia/os/edge/EdgeTouchEventManager;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;->this$0:Lnubia/os/edge/EdgeTouchEventManager;

    invoke-direct {p0}, Lnubia/os/edge/IEdgePointerEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnubia/os/edge/EdgeTouchEventManager;Lnubia/os/edge/EdgeTouchEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lnubia/os/edge/EdgeTouchEventManager;
    .param p2, "x1"    # Lnubia/os/edge/EdgeTouchEventManager$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;-><init>(Lnubia/os/edge/EdgeTouchEventManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 126
    iget-object v0, p0, Lnubia/os/edge/EdgeTouchEventManager$IEdgePointerEventListenerWrapper;->this$0:Lnubia/os/edge/EdgeTouchEventManager;

    # invokes: Lnubia/os/edge/EdgeTouchEventManager;->dispatchEdgeTouchEvent(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lnubia/os/edge/EdgeTouchEventManager;->access$100(Lnubia/os/edge/EdgeTouchEventManager;Landroid/view/MotionEvent;)V

    .line 127
    return-void
.end method
