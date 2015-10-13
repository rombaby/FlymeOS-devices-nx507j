.class Lcn/nubia/server/A2iService$3;
.super Ljava/lang/Object;
.source "A2iService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/A2iService;->updateUserSetting(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/A2iService;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcn/nubia/server/A2iService;I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcn/nubia/server/A2iService$3;->this$0:Lcn/nubia/server/A2iService;

    iput p2, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 332
    iget v0, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 334
    iget v0, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    # invokes: Lcn/nubia/server/A2iService;->nativeLoadUserData(I)I
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$900(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 335
    const-string v0, "A2iService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load A2I user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcn/nubia/server/A2iService$3;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->clearUserSetting(I)V

    .line 338
    iget-object v0, p0, Lcn/nubia/server/A2iService$3;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 339
    const-string v0, "A2iService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t update A2I enable setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget v0, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    # invokes: Lcn/nubia/server/A2iService;->nativeValidateUserData(I)I
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$1000(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 347
    const-string v0, "A2iService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcn/nubia/server/A2iService$3;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->clearUserSetting(I)V

    .line 349
    iget v0, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    # invokes: Lcn/nubia/server/A2iService;->nativeRemoveUserData(I)I
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$1100(I)I

    .line 354
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/A2iService$3;->this$0:Lcn/nubia/server/A2iService;

    # getter for: Lcn/nubia/server/A2iService;->mA2iSettingManager:Lcn/nubia/server/A2iService$A2iSettingManager;
    invoke-static {v0}, Lcn/nubia/server/A2iService;->access$200(Lcn/nubia/server/A2iService;)Lcn/nubia/server/A2iService$A2iSettingManager;

    move-result-object v0

    iget v1, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v0, v1}, Lcn/nubia/server/A2iService$A2iSettingManager;->updateEnableDetection(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 355
    const-string v0, "A2iService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t update A2I enable setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/server/A2iService$3;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
