.class Lcn/nubia/server/A2iService$6;
.super Ljava/lang/Object;
.source "A2iService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/A2iService;->handleVoiceTrigger(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/A2iService;

.field final synthetic val$packName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/server/A2iService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcn/nubia/server/A2iService$6;->this$0:Lcn/nubia/server/A2iService;

    iput-object p2, p0, Lcn/nubia/server/A2iService$6;->val$packName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 396
    iget-object v1, p0, Lcn/nubia/server/A2iService$6;->this$0:Lcn/nubia/server/A2iService;

    # invokes: Lcn/nubia/server/A2iService;->updateA2iNotification()V
    invoke-static {v1}, Lcn/nubia/server/A2iService;->access$1300(Lcn/nubia/server/A2iService;)V

    .line 398
    iget-object v1, p0, Lcn/nubia/server/A2iService$6;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/server/A2iService;->access$300(Lcn/nubia/server/A2iService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 399
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcn/nubia/server/A2iService$6;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcn/nubia/server/A2iService;->access$300(Lcn/nubia/server/A2iService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/server/A2iService$6;->val$packName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 401
    return-void
.end method
