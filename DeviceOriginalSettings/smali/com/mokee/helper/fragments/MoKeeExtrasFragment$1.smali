.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MoKeeExtrasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/fragments/MoKeeExtrasFragment;
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
    .line 95
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f090061

    const/16 v4, 0x401

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v3, "download_flag"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 100
    .local v2, "flag":I
    if-ne v2, v4, :cond_0

    .line 101
    const-string v3, "com.mokee.mkupdater.action.DOWNLOAD_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    const-string v4, "download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J
    invoke-static {v3, v4, v5}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$002(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;J)J

    .line 103
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$200(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateProgress:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$100(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v3, "com.mokee.mkupdater.action.UPDATE_CHECK_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$300(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$300(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 107
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    const/4 v4, 0x0

    # setter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$302(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 108
    const-string v3, "new_update_count"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "count":I
    if-nez v1, :cond_3

    .line 110
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a005f

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 116
    .end local v1    # "count":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->extrasLayout()V
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$500(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    goto :goto_0

    .line 111
    .restart local v1    # "count":I
    :cond_3
    if-gez v1, :cond_2

    .line 112
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mContext:Landroid/app/Activity;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$400(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    sget-object v4, Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->duration(Lmokee/support/widget/snackbar/Snackbar$SnackbarDuration;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    goto :goto_1

    .line 117
    .end local v1    # "count":I
    :cond_4
    const-string v3, "onNewIntent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "update_list_updated"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->extrasLayout()V
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$500(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    .line 122
    :cond_5
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->checkForDownloadCompleted(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$600(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
