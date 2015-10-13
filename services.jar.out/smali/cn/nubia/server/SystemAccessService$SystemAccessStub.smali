.class final Lcn/nubia/server/SystemAccessService$SystemAccessStub;
.super Lnubia/os/ISystemAccess$Stub;
.source "SystemAccessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/SystemAccessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemAccessStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/SystemAccessService;


# direct methods
.method constructor <init>(Lcn/nubia/server/SystemAccessService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-direct {p0}, Lnubia/os/ISystemAccess$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearScreenshot()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    const/4 v1, 0x0

    # setter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 112
    :cond_0
    return-void
.end method

.method public enableWakeGesture(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # invokes: Lcn/nubia/server/SystemAccessService;->enableWake(Z)Z
    invoke-static {v0, p1}, Lcn/nubia/server/SystemAccessService;->access$200(Lcn/nubia/server/SystemAccessService;Z)Z

    move-result v0

    return v0
.end method

.method public getFactoryFlag(I)Z
    .locals 1
    .param p1, "keycode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 88
    sget-boolean v0, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    .line 90
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    goto :goto_0
.end method

.method public getScreenshot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public screenshot(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$100(Lcn/nubia/server/SystemAccessService;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    # setter for: Lcn/nubia/server/SystemAccessService;->mSnapshotBm:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcn/nubia/server/SystemAccessService;->access$102(Lcn/nubia/server/SystemAccessService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 99
    return-void
.end method

.method public setFactoryFlag(ZZ)V
    .locals 0
    .param p1, "flag_endcall"    # Z
    .param p2, "flag_home"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    sput-boolean p1, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    .line 82
    sput-boolean p2, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    .line 83
    return-void
.end method

.method public setFactoryFlagTimeOut(ZZI)V
    .locals 4
    .param p1, "flag_endcall"    # Z
    .param p2, "flag_home"    # Z
    .param p3, "time_out"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 72
    sput-boolean p1, Lcn/nubia/server/SystemAccessService;->Flag_EndCall:Z

    .line 73
    sput-boolean p2, Lcn/nubia/server/SystemAccessService;->Flag_Home:Z

    .line 74
    iget-object v0, p0, Lcn/nubia/server/SystemAccessService$SystemAccessStub;->this$0:Lcn/nubia/server/SystemAccessService;

    # getter for: Lcn/nubia/server/SystemAccessService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcn/nubia/server/SystemAccessService;->access$000(Lcn/nubia/server/SystemAccessService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    return-void
.end method
