.class public Lcom/mokee/helper/service/DownloadCompleteIntentService;
.super Landroid/app/IntentService;
.source "DownloadCompleteIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/mokee/helper/service/DownloadCompleteIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private displayErrorResult(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "updateIntent"    # Landroid/content/Intent;
    .param p2, "failureMessageResId"    # I

    .prologue
    .line 106
    invoke-static {p0, p1, p2}, Lcom/mokee/helper/receiver/DownloadNotifier;->notifyDownloadError(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 107
    return-void
.end method

.method private displaySuccessResult(Landroid/content/Intent;Ljava/io/File;I)V
    .locals 2
    .param p1, "updateIntent"    # Landroid/content/Intent;
    .param p2, "updateFile"    # Ljava/io/File;
    .param p3, "flag"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/mokee/helper/service/DownloadCompleteIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mokee/helper/MoKeeApplication;

    .line 111
    .local v0, "app":Lcom/mokee/helper/MoKeeApplication;
    invoke-virtual {v0}, Lcom/mokee/helper/MoKeeApplication;->isMainActivityActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Lcom/mokee/helper/service/DownloadCompleteIntentService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/mokee/helper/receiver/DownloadNotifier;->notifyDownloadComplete(Landroid/content/Context;Landroid/content/Intent;Ljava/io/File;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v12, -0x1

    .line 48
    const-string v11, "download_flag"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "download_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "download_md5"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 50
    const-string v11, "download_id"

    invoke-virtual {p1, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 51
    .local v4, "id":J
    const-string v11, "download_flag"

    const/16 v12, 0x400

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 52
    .local v3, "flag":I
    const-string v11, "download_md5"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "downloadedMD5":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfo(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v1

    .line 63
    .local v1, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    if-nez v1, :cond_2

    .line 103
    .end local v1    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v2    # "downloadedMD5":Ljava/lang/String;
    .end local v3    # "flag":I
    .end local v4    # "id":J
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    const-string v11, "download_flag"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "download_extras_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "download_extras_md5"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 55
    const-string v11, "download_extras_id"

    invoke-virtual {p1, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 56
    .restart local v4    # "id":J
    const-string v11, "download_flag"

    const/16 v12, 0x401

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 57
    .restart local v3    # "flag":I
    const-string v11, "download_extras_md5"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "downloadedMD5":Ljava/lang/String;
    goto :goto_0

    .line 66
    .restart local v1    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    :cond_2
    invoke-virtual {v1}, Lcom/mokee/helper/misc/DownLoadInfo;->getState()I

    move-result v8

    .line 67
    .local v8, "status":I
    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.mokee.mkupdater.action.NOTIFICATION_CLICKED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v10, "updateIntent":Landroid/content/Intent;
    const-string v11, "download_flag"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    const/4 v11, 0x6

    if-ne v8, v11, :cond_5

    .line 74
    invoke-virtual {v1}, Lcom/mokee/helper/misc/DownLoadInfo;->getLocalFile()Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, "partialFileFullPath":Ljava/lang/String;
    const-string v11, ".partial"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "completedFileFullPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, "partialFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v9, "updateFile":Ljava/io/File;
    invoke-virtual {v6, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 82
    invoke-static {v2, v9}, Lcom/mokee/helper/utils/MD5;->checkMD5(Ljava/lang/String;Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 84
    const-string v11, "download_id"

    invoke-virtual {v10, v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    const-string v11, "download_path"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-direct {p0, v10, v9, v3}, Lcom/mokee/helper/service/DownloadCompleteIntentService;->displaySuccessResult(Landroid/content/Intent;Ljava/io/File;I)V

    .line 96
    :goto_2
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v11

    invoke-virtual {v1}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mokee/helper/db/DownLoadDao;->delete(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/mokee/helper/db/ThreadDownLoadDao;->getInstance()Lcom/mokee/helper/db/ThreadDownLoadDao;

    move-result-object v11

    invoke-virtual {v1}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/mokee/helper/db/ThreadDownLoadDao;->delete(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 89
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 90
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 92
    :cond_4
    const v11, 0x7f0a0071

    invoke-direct {p0, v10, v11}, Lcom/mokee/helper/service/DownloadCompleteIntentService;->displayErrorResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 98
    .end local v0    # "completedFileFullPath":Ljava/lang/String;
    .end local v6    # "partialFile":Ljava/io/File;
    .end local v7    # "partialFileFullPath":Ljava/lang/String;
    .end local v9    # "updateFile":Ljava/io/File;
    :cond_5
    const/4 v11, 0x5

    if-eq v8, v11, :cond_6

    const/4 v11, 0x4

    if-ne v8, v11, :cond_0

    .line 100
    :cond_6
    const v11, 0x7f0a006b

    invoke-direct {p0, v10, v11}, Lcom/mokee/helper/service/DownloadCompleteIntentService;->displayErrorResult(Landroid/content/Intent;I)V

    .line 101
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v11

    invoke-virtual {v1}, Lcom/mokee/helper/misc/DownLoadInfo;->getUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
