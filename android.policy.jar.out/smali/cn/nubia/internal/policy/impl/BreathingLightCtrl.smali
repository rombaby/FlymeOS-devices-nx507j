.class public Lcn/nubia/internal/policy/impl/BreathingLightCtrl;
.super Ljava/lang/Object;
.source "BreathingLightCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;


# instance fields
.field private mBreathLightPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcn/nubia/internal/policy/impl/BreathingLightCtrl$1;

    invoke-direct {v0, p0}, Lcn/nubia/internal/policy/impl/BreathingLightCtrl$1;-><init>(Lcn/nubia/internal/policy/impl/BreathingLightCtrl;)V

    iput-object v0, p0, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;->mBreathLightPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    .line 15
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 16
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcn/nubia/internal/policy/impl/BreathingLightCtrl;->mBreathLightPointerEventListener:Landroid/view/WindowManagerPolicy$PointerEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x3

    .line 22
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 24
    .local v0, "keyCode":I
    if-eq v0, v3, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 27
    invoke-static {v3}, Lnubia/os/BreathingLightManager;->requestBreathingLight(I)V

    .line 30
    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method
