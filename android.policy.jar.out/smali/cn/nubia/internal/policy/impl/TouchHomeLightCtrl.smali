.class public Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;
.super Ljava/lang/Object;
.source "TouchHomeLightCtrl.java"

# interfaces
.implements Lcom/android/internal/policy/impl/IKeyBeforeDispatchingHandler;


# static fields
.field private static final ACTION_CLOSE_LIGHT:Ljava/lang/String; = "com.ztemt.v5light.home_key_close_light"

.field private static final ACTION_OPEN_LIGHT:Ljava/lang/String; = "com.ztemt.v5light.home_key_open_light"

.field private static final TAG:Ljava/lang/String; = "TouchHomeLightCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private zLightOpened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/policy/impl/PhoneWindowManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->zLightOpened:Z

    .line 31
    iput-object p2, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 32
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private closeLight(Landroid/view/KeyEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 49
    .local v0, "down":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->zLightOpened:Z

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "com.ztemt.v5light.home_key_close_light"

    invoke-direct {p0, v2}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V

    .line 51
    iput-boolean v1, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->zLightOpened:Z

    .line 52
    const-string v1, "TouchHomeLightCtrl"

    const-string v2, "v5 closeLight"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void

    .end local v0    # "down":Z
    :cond_1
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method private openLight(Landroid/view/WindowManagerPolicy$WindowState;I)V
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "repeatCount"    # I

    .prologue
    .line 57
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 58
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    if-nez v0, :cond_2

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 57
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 60
    .local v1, "type":I
    const/16 v2, 0x7ed

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_3

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_0

    .line 63
    :cond_3
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->zLightOpened:Z

    if-nez v2, :cond_0

    .line 66
    const-string v2, "com.ztemt.v5light.home_key_open_light"

    invoke-direct {p0, v2}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->sendLightBroadcast(Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->zLightOpened:Z

    .line 68
    const-string v2, "TouchHomeLightCtrl"

    const-string v3, "v5 openLight"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendLightBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method


# virtual methods
.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 39
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 40
    .local v1, "repeatCount":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 41
    invoke-direct {p0, p2}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->closeLight(Landroid/view/KeyEvent;)V

    .line 42
    invoke-direct {p0, p1, v1}, Lcn/nubia/internal/policy/impl/TouchHomeLightCtrl;->openLight(Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 44
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method
