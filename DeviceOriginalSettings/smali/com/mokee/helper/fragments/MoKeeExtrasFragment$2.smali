.class Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;
.super Ljava/lang/Object;
.source "MoKeeExtrasFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 176
    iput-object p1, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 178
    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloading:Z
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$700(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$800(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Lcom/mokee/helper/widget/ItemPreference;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$000(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$800(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Lcom/mokee/helper/widget/ItemPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mokee/helper/widget/ItemPreference;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v4

    .line 183
    .local v4, "progressBar":Landroid/widget/ProgressBar;
    if-eqz v4, :cond_0

    .line 186
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v8

    iget-object v9, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadId:J
    invoke-static {v9}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$000(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfo(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v0

    .line 189
    .local v0, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    if-nez v0, :cond_2

    .line 192
    const/4 v5, 0x1

    .line 196
    .local v5, "status":I
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 223
    :goto_2
    :pswitch_0
    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    .line 224
    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$200(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Landroid/os/Handler;

    move-result-object v8

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 194
    .end local v5    # "status":I
    :cond_2
    invoke-virtual {v0}, Lcom/mokee/helper/misc/DownLoadInfo;->getState()I

    move-result v5

    .restart local v5    # "status":I
    goto :goto_1

    .line 198
    :pswitch_1
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 201
    :pswitch_2
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getThreadInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 202
    .local v6, "threadList":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/helper/misc/ThreadDownLoadInfo;>;"
    const/4 v7, -0x1

    .line 203
    .local v7, "totalBytes":I
    const/4 v1, 0x0

    .line 204
    .local v1, "downloadedBytes":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mokee/helper/misc/ThreadDownLoadInfo;

    .line 205
    .local v3, "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    int-to-long v8, v1

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getDownSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v1, v8

    .line 206
    int-to-long v8, v7

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getEndPos()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/mokee/helper/misc/ThreadDownLoadInfo;->getStartPos()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v7, v8

    .line 207
    goto :goto_3

    .line 209
    .end local v3    # "info":Lcom/mokee/helper/misc/ThreadDownLoadInfo;
    :cond_3
    if-gez v7, :cond_4

    .line 210
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_2

    .line 212
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 213
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 214
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 219
    .end local v1    # "downloadedBytes":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "threadList":Ljava/util/List;, "Ljava/util/List<Lcom/mokee/helper/misc/ThreadDownLoadInfo;>;"
    .end local v7    # "totalBytes":I
    :pswitch_3
    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # getter for: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->mDownloadingPreference:Lcom/mokee/helper/widget/ItemPreference;
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$800(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)Lcom/mokee/helper/widget/ItemPreference;

    move-result-object v8

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/mokee/helper/widget/ItemPreference;->setStyle(I)V

    .line 220
    iget-object v8, p0, Lcom/mokee/helper/fragments/MoKeeExtrasFragment$2;->this$0:Lcom/mokee/helper/fragments/MoKeeExtrasFragment;

    # invokes: Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->resetDownloadState()V
    invoke-static {v8}, Lcom/mokee/helper/fragments/MoKeeExtrasFragment;->access$900(Lcom/mokee/helper/fragments/MoKeeExtrasFragment;)V

    goto :goto_2

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
