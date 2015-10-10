.class Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MoKeeUpdaterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;
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
    .line 121
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

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

    const/16 v4, 0x400

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v3, "download_flag"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, "flag":I
    if-ne v2, v4, :cond_0

    .line 127
    const-string v3, "com.mokee.mkupdater.action.DOWNLOAD_STARTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    const-string v4, "download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    # setter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mDownloadId:J
    invoke-static {v3, v4, v5}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$002(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;J)J

    .line 129
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$200(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mUpdateProgress:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$100(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v3, "com.mokee.mkupdater.action.UPDATE_CHECK_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$300(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$300(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 133
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    const/4 v4, 0x0

    # setter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v4}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$302(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 134
    const-string v3, "new_update_count"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 135
    .local v1, "count":I
    if-nez v1, :cond_3

    .line 136
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$400()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/Snackbar;->with(Landroid/content/Context;)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    const v4, 0x7f0a005d

    invoke-virtual {v3, v4}, Lmokee/support/widget/snackbar/Snackbar;->text(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmokee/support/widget/snackbar/Snackbar;->colorResource(I)Lmokee/support/widget/snackbar/Snackbar;

    move-result-object v3

    invoke-static {v3}, Lmokee/support/widget/snackbar/SnackbarManager;->show(Lmokee/support/widget/snackbar/Snackbar;)V

    .line 142
    .end local v1    # "count":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLayout()V
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$500(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    goto :goto_0

    .line 137
    .restart local v1    # "count":I
    :cond_3
    if-gez v1, :cond_2

    .line 138
    # getter for: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->mContext:Landroid/app/Activity;
    invoke-static {}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$400()Landroid/app/Activity;

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

    .line 143
    .end local v1    # "count":I
    :cond_4
    const-string v3, "onNewIntent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "update_list_updated"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 146
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->updateLayout()V
    invoke-static {v3}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$500(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;)V

    .line 148
    :cond_5
    iget-object v3, p0, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment$1;->this$0:Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->checkForDownloadCompleted(Landroid/content/Intent;)V
    invoke-static {v3, p2}, Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;->access$600(Lcom/mokee/helper/fragments/MoKeeUpdaterFragment;Landroid/content/Intent;)V

    goto :goto_0
.end method
