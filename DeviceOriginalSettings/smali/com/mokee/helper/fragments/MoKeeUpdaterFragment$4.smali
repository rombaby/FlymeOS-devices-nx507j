.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$4;
.super Ljava/lang/Object;
.source "MoKeeUpdaterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForUpdates(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;


# direct methods
.method constructor <init>(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 568
    new-instance v0, Landroid/content/Intent;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$400()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mokee/helper/service/UpdateCheckService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v1, "com.mokee.mkupdater.action.CANCEL_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v1, "download_flag"

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$400()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 572
    iget-object v1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$4;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    const/4 v2, 0x0

    # setter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$302(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 573
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_ota_check"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$1000()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_ota_check_manual"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 576
    :cond_0
    return-void
.end method
