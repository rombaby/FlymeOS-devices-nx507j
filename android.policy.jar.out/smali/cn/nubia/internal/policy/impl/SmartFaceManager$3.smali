.class Lcn/nubia/internal/policy/impl/SmartFaceManager$3;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"

# interfaces
.implements Lcn/nubia/internal/policy/impl/smartface/Listener/MonitorUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;


# direct methods
.method constructor <init>(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSmartFace()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->onStop()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$1000(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    .line 139
    return-void
.end method

.method public dismissSmartFaceScreen()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # getter for: Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$700(Lcn/nubia/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    return-void
.end method

.method public notifyScreentOn()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # getter for: Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$700(Lcn/nubia/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    return-void
.end method

.method public setEverSmartFaceNearFlag()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->handleSetFlag()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$800(Lcn/nubia/internal/policy/impl/SmartFaceManager;)V

    .line 114
    return-void
.end method

.method public setNeedTurnOffScreen(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # invokes: Lcn/nubia/internal/policy/impl/SmartFaceManager;->setNeedTurnOffScreen(Z)V
    invoke-static {v0, p1}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$900(Lcn/nubia/internal/policy/impl/SmartFaceManager;Z)V

    .line 124
    return-void
.end method

.method public showSmartFaceLatticeScreen()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # getter for: Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$700(Lcn/nubia/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method

.method public showSmartFaceScreen()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # getter for: Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$700(Lcn/nubia/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    return-void
.end method

.method public updateRotation(Z)V
    .locals 2
    .param p1, "oriention"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/SmartFaceManager$3;->this$0:Lcn/nubia/internal/policy/impl/SmartFaceManager;

    # getter for: Lcn/nubia/internal/policy/impl/SmartFaceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/SmartFaceManager;->access$700(Lcn/nubia/internal/policy/impl/SmartFaceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 129
    return-void
.end method
