.class public Lcom/mokee/helper/receiver/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private applyTriggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "isUpdate"    # Z

    .prologue
    .line 104
    :try_start_0
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 105
    .local v1, "sb":Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 106
    invoke-static {p1}, Lcom/mokee/helper/utils/Utils;->cancelNotification(Landroid/content/Context;)V

    .line 107
    invoke-static {p1, p2, p3}, Lcom/mokee/helper/utils/Utils;->triggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v1    # "sb":Landroid/app/StatusBarManager;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "DownloadReceiver"

    const-string v3, "Unable to reboot into recovery mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    const v2, 0x7f0a008b

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleDownloadComplete(Landroid/content/Context;Landroid/content/SharedPreferences;JI)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "id"    # J
    .param p5, "flag"    # I

    .prologue
    .line 173
    const-wide/16 v4, 0x0

    .line 174
    .local v4, "enqueued":J
    packed-switch p5, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const-string v8, "download_id"

    const-wide/16 v10, -0x1

    invoke-interface {p2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 177
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-ltz v8, :cond_0

    cmp-long v8, p3, v4

    if-nez v8, :cond_0

    .line 180
    const-string v8, "download_md5"

    const-string v9, ""

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "downloadedMD5":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/mokee/helper/service/DownloadCompleteIntentService;

    invoke-direct {v7, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v7, "updateintent":Landroid/content/Intent;
    const-string v8, "download_id"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    const-string v8, "download_md5"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v8, "download_flag"

    move/from16 v0, p5

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 190
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "download_id"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "download_md5"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "download_url"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 195
    .end local v2    # "downloadedMD5":Ljava/lang/String;
    .end local v7    # "updateintent":Landroid/content/Intent;
    :pswitch_1
    const-string v8, "download_extras_id"

    const-wide/16 v10, -0x1

    invoke-interface {p2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 196
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v8, p3, v8

    if-ltz v8, :cond_0

    cmp-long v8, p3, v4

    if-nez v8, :cond_0

    .line 199
    const-string v8, "download_extras_md5"

    const-string v9, ""

    invoke-interface {p2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "extrasDownloadedMD5":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/mokee/helper/service/DownloadCompleteIntentService;

    invoke-direct {v6, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v6, "extrasintent":Landroid/content/Intent;
    const-string v8, "download_extras_id"

    move-wide/from16 v0, p3

    invoke-virtual {v6, v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    const-string v8, "download_extras_md5"

    invoke-virtual {v6, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v8, "download_flag"

    move/from16 v0, p5

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    invoke-virtual {p1, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "download_extras_id"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "download_extras_md5"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "download_extras_url"

    invoke-interface {v8, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleStartDownload(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/mokee/helper/misc/ItemInfo;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "ui"    # Lcom/mokee/helper/misc/ItemInfo;
    .param p4, "flag"    # I

    .prologue
    const/16 v10, 0x400

    .line 118
    if-ne p4, v10, :cond_2

    .line 119
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->makeUpdateFolder()Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, "directory":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 126
    const-string v7, "DownloadReceiver"

    const-string v8, "UpdateFolder created"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".partial"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "fullFilePath":Ljava/lang/String;
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v7

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mokee/helper/db/DownLoadDao;->getDownLoadInfoByUrl(Ljava/lang/String;)Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v1

    .line 137
    .local v1, "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    if-eqz v1, :cond_3

    .line 138
    invoke-virtual {v1}, Lcom/mokee/helper/misc/DownLoadInfo;->getDownID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 143
    .local v2, "downloadId":J
    :goto_1
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v7

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mokee/helper/db/DownLoadDao;->isHasInfos(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 144
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v7

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 146
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.mokee.mkupdater.action.DOWNLOAD_STARTED"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v5, "intentBroadcast":Landroid/content/Intent;
    const-string v7, "download_flag"

    invoke-virtual {v5, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v7, "download_id"

    invoke-virtual {v5, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 152
    if-ne p4, v10, :cond_4

    .line 153
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "download_id"

    invoke-interface {v7, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "download_md5"

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getMd5Sum()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "download_url"

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    :goto_2
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/mokee/helper/service/DownLoadService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v6, "intentService":Landroid/content/Intent;
    const-string v7, "download"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v7, "download_type"

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v7, "download_url"

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v7, "download_filepath"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v7, "download_flag"

    invoke-virtual {v6, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v7, "download_id"

    invoke-virtual {v6, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 168
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 169
    invoke-static {p1}, Lcom/mokee/helper/utils/Utils;->cancelNotification(Landroid/content/Context;)V

    .line 170
    return-void

    .line 121
    .end local v0    # "directory":Ljava/io/File;
    .end local v1    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .end local v2    # "downloadId":J
    .end local v4    # "fullFilePath":Ljava/lang/String;
    .end local v5    # "intentBroadcast":Landroid/content/Intent;
    .end local v6    # "intentService":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/mokee/helper/utils/Utils;->makeExtraFolder()Ljava/io/File;

    move-result-object v0

    .restart local v0    # "directory":Ljava/io/File;
    goto/16 :goto_0

    .line 140
    .restart local v1    # "dli":Lcom/mokee/helper/misc/DownLoadInfo;
    .restart local v4    # "fullFilePath":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .restart local v2    # "downloadId":J
    goto/16 :goto_1

    .line 157
    .restart local v5    # "intentBroadcast":Landroid/content/Intent;
    :cond_4
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "download_extras_id"

    invoke-interface {v7, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "download_extras_md5"

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getMd5Sum()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "download_extras_url"

    invoke-virtual {p3}, Lcom/mokee/helper/misc/ItemInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "action":Ljava/lang/String;
    const-string v3, "downloader"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 60
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "download_flag"

    const/16 v4, 0x400

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 61
    .local v8, "flag":I
    const-string v3, "com.mokee.mkupdater.action.DOWNLOAD_START"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    const-string v3, "update_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/mokee/helper/misc/ItemInfo;

    .line 63
    .local v13, "ui":Lcom/mokee/helper/misc/ItemInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v13, v8}, Lcom/mokee/helper/receiver/DownloadReceiver;->handleStartDownload(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/mokee/helper/misc/ItemInfo;I)V

    .line 100
    .end local v13    # "ui":Lcom/mokee/helper/misc/ItemInfo;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 65
    const-string v3, "download_url"

    const-string v4, ""

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, "downloadUrl":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v10, v4}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 69
    :cond_2
    const-string v3, "download_extras_url"

    const-string v4, ""

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "downloadExtrasUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 71
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v9, v4}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 73
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "download_id"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "download_md5"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "download_url"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "download_extras_id"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "download_extras_md5"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "download_extras_url"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 76
    .end local v9    # "downloadExtrasUrl":Ljava/lang/String;
    .end local v10    # "downloadUrl":Ljava/lang/String;
    :cond_4
    const-string v3, "com.mokee.mkupdater.action.DOWNLOAD_COMPLETED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    const-string v3, "download_id"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .local v6, "id":J
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 78
    invoke-direct/range {v3 .. v8}, Lcom/mokee/helper/receiver/DownloadReceiver;->handleDownloadComplete(Landroid/content/Context;Landroid/content/SharedPreferences;JI)V

    goto :goto_0

    .line 79
    .end local v6    # "id":J
    :cond_5
    const-string v3, "com.mokee.mkupdater.action.INSTALL_UPDATE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, "filename"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "fileName":Ljava/lang/String;
    const/16 v3, 0x400

    if-ne v8, v3, :cond_6

    .line 82
    const-string v3, ".zip"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v3}, Lcom/mokee/helper/receiver/DownloadReceiver;->applyTriggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 85
    :cond_6
    const/16 v3, 0x401

    if-ne v8, v3, :cond_0

    .line 86
    const-string v3, ".zip"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 87
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v3}, Lcom/mokee/helper/receiver/DownloadReceiver;->applyTriggerUpdate(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 88
    :cond_7
    const-string v3, ".apk"

    invoke-virtual {v11, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 89
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v12, "i":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mokee/helper/utils/Utils;->makeExtraFolder()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v3, 0x10000000

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/mokee/helper/utils/Utils;->cancelNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 96
    .end local v12    # "i":Landroid/content/Intent;
    :cond_8
    const v3, 0x7f0a008c

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
