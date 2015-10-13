.class Lcn/nubia/server/A2iService$1;
.super Landroid/content/BroadcastReceiver;
.source "A2iService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/A2iService;->init()V
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
    .line 141
    iput-object p1, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    iget-object v1, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    # invokes: Lcn/nubia/server/A2iService;->startA2iObserver()I
    invoke-static {v1}, Lcn/nubia/server/A2iService;->access$100(Lcn/nubia/server/A2iService;)I

    move-result v0

    .line 145
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 146
    const-string v1, "A2iService"

    const-string v2, "Can\'t start observing A2I UEvent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    new-instance v2, Lcn/nubia/server/A2iService$A2iSettingManager;

    iget-object v3, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    iget-object v4, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcn/nubia/server/A2iService;->access$300(Lcn/nubia/server/A2iService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcn/nubia/server/A2iService$A2iSettingManager;-><init>(Lcn/nubia/server/A2iService;Landroid/content/Context;)V

    # setter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v1, v2}, Lcn/nubia/server/A2iService;->access$202(Lcn/nubia/server/A2iService;Lcn/nubia/server/A2iService$A2iSettingManager;)Lcn/nubia/server/A2iService$A2iSettingManager;

    .line 151
    iget-object v1, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v1}, Lcn/nubia/server/A2iService;->access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/A2iService$1;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcn/nubia/server/A2iService;->access$400(Lcn/nubia/server/A2iService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/server/A2iService$A2iSettingManager;->init(Landroid/os/Handler;)V

    goto :goto_0
.end method
