.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;
.super Ljava/lang/Object;
.source "MoKeeExtrasFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->checkForUpdates(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "com.mokee.mkupdater.action.CANCEL_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "download_flag"

    const/16 v2, 0x401

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 347
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$3;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    const/4 v2, 0x0

    # setter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$302(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 348
    return-void
.end method
