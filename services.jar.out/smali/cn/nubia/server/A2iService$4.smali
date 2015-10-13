.class Lcn/nubia/server/A2iService$4;
.super Ljava/lang/Object;
.source "A2iService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/A2iService;->updateTriggerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/A2iService;


# direct methods
.method constructor <init>(Lcn/nubia/server/A2iService;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcn/nubia/server/A2iService$4;->this$0:Lcn/nubia/server/A2iService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcn/nubia/server/A2iService$4;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateTriggerMode()I

    move-result v0

    if-gez v0, :cond_0

    .line 366
    const-string v0, "A2iService"

    const-string v1, "Can\'t update A2I trigger mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    return-void
.end method
