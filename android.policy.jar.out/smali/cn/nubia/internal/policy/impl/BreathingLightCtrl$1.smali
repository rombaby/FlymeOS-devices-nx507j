.class Lcn/nubia/internal/policy/impl/BreathingLightCtrl$1;
.super Ljava/lang/Object;
.source "BreathingLightCtrl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/BreathingLightCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/BreathingLightCtrl;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/BreathingLightCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/BreathingLightCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 39
    .local v0, "action":I
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 40
    const/4 v1, 0x4

    invoke-static {v1}, Lnubia/os/BreathingLightManager;->requestBreathingLight(I)V

    .line 43
    :cond_0
    return-void
.end method
