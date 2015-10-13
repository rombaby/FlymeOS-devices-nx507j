.class Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "SingleSideCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTIVITY_STACK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    # getter for: Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z
    invoke-static {v1}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->access$000(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    const/4 v2, 0x0

    # setter for: Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mChangeBySwitch:Z
    invoke-static {v1, v2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->access$002(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v1, p0, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl$1;->this$0:Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;

    const/4 v2, 0x1

    # setter for: Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->mNeedUpdate:Z
    invoke-static {v1, v2}, Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;->access$102(Lcn/nubia/internal/policy/impl/edge/SingleSideCtrl;Z)Z

    goto :goto_0
.end method
