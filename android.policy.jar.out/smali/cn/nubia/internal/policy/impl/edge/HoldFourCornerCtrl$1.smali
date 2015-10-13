.class Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "HoldFourCornerCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;

    # getter for: Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->mOrientationListener:Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;->access$000(Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl;)Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/internal/policy/impl/edge/HoldFourCornerCtrl$GestureOrientationListener;->disable()V

    .line 168
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
