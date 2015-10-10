.class public Lcom/mokee/helper/service/DownLoadService;
.super Lcom/mokee/helper/service/NonStopIntentService;
.source "DownLoadService.java"


# static fields
.field private static downloaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mokee/helper/utils/DownLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static notificationID:I

.field private static notifications:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public handler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private manager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    .line 69
    const/16 v0, 0x400

    sput v0, Lcom/mokee/helper/service/DownLoadService;->notificationID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "DownLoadService"

    invoke-direct {p0, v0}, Lcom/mokee/helper/service/NonStopIntentService;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/mokee/helper/service/DownLoadService$1;

    invoke-direct {v1, p0}, Lcom/mokee/helper/service/DownLoadService$1;-><init>(Lcom/mokee/helper/service/DownLoadService;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mokee/helper/service/DownLoadService;->handler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mokee/helper/service/DownLoadService;IIJ)V
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/service/DownLoadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mokee/helper/service/DownLoadService;->updateNotification(IIJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/mokee/helper/service/DownLoadService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/mokee/helper/service/DownLoadService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addNotification(III)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "title"    # I
    .param p3, "flag"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 145
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0, p2}, Lcom/mokee/helper/service/DownLoadService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 147
    const v3, 0x7f0a0068

    invoke-virtual {p0, v3}, Lcom/mokee/helper/service/DownLoadService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 148
    invoke-virtual {p0}, Lcom/mokee/helper/service/DownLoadService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 149
    const v3, 0x1080081

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.mokee.mkupdater.action.NOTIFICATION_CLICKED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "nextIntent":Landroid/content/Intent;
    const-string v3, "download_flag"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const/high16 v3, 0x8000000

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 155
    .local v2, "pengdingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    const/16 v3, 0x64

    invoke-virtual {v0, v3, v5, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 157
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 158
    invoke-virtual {p0, p2}, Lcom/mokee/helper/service/DownLoadService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 159
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 160
    sget-object v3, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    iget-object v3, p0, Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 164
    return-void
.end method

.method private updateNotification(IIJ)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "time"    # J

    .prologue
    const/4 v4, 0x0

    .line 170
    sget-object v1, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v1, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 174
    .local v0, "notification":Landroid/support/v4/app/NotificationCompat$Builder;
    const v1, 0x7f0a0067

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/mokee/helper/service/DownLoadService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 176
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 177
    iget-object v1, p0, Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/mokee/helper/service/NonStopIntentService;->onCreate()V

    .line 76
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/mokee/helper/service/DownLoadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Lcom/mokee/helper/service/NonStopIntentService;->onDestroy()V

    .line 271
    iget-object v0, p0, Lcom/mokee/helper/service/DownLoadService;->manager:Landroid/app/NotificationManager;

    sget v1, Lcom/mokee/helper/service/DownLoadService;->notificationID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 272
    sget-object v0, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    sget v1, Lcom/mokee/helper/service/DownLoadService;->notificationID:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 273
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 20
    .param p1, "action"    # Landroid/content/Intent;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    const-string v5, "download"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 82
    const-string v5, "download_type"

    const/4 v6, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 83
    .local v19, "type":I
    const-string v5, "download_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "url":Ljava/lang/String;
    const-string v5, "download_filepath"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "filePath":Ljava/lang/String;
    const-string v5, "download_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 86
    .local v16, "download_id":J
    const-string v5, "download_flag"

    const/16 v6, 0x400

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 87
    .local v15, "flag":I
    const/4 v2, 0x0

    .line 88
    .local v2, "downloader":Lcom/mokee/helper/utils/DownLoader;
    packed-switch v19, :pswitch_data_0

    .line 139
    .end local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v15    # "flag":I
    .end local v16    # "download_id":J
    .end local v19    # "type":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 90
    .restart local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "filePath":Ljava/lang/String;
    .restart local v15    # "flag":I
    .restart local v16    # "download_id":J
    .restart local v19    # "type":I
    :pswitch_1
    sput v15, Lcom/mokee/helper/service/DownLoadService;->notificationID:I

    .line 91
    sget-object v5, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    check-cast v2, Lcom/mokee/helper/utils/DownLoader;

    .line 92
    .restart local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    if-nez v2, :cond_1

    .line 93
    new-instance v2, Lcom/mokee/helper/utils/DownLoader;

    .end local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mokee/helper/service/DownLoadService;->handler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/mokee/helper/utils/DownLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;JLandroid/content/Context;)V

    .line 95
    .restart local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    sget-object v5, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mokee/helper/db/DownLoadDao;->isHasInfos(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 98
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v5

    new-instance v6, Lcom/mokee/helper/misc/DownLoadInfo;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-object v7, v3

    move v8, v15

    move-object v10, v4

    invoke-direct/range {v6 .. v14}, Lcom/mokee/helper/misc/DownLoadInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v5, v6}, Lcom/mokee/helper/db/DownLoadDao;->saveInfo(Lcom/mokee/helper/misc/DownLoadInfo;)V

    .line 104
    :cond_1
    invoke-virtual {v2}, Lcom/mokee/helper/utils/DownLoader;->isDownLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    invoke-static {}, Lcom/mokee/helper/db/DownLoadDao;->getInstance()Lcom/mokee/helper/db/DownLoadDao;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v3, v6}, Lcom/mokee/helper/db/DownLoadDao;->updataState(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v2}, Lcom/mokee/helper/utils/DownLoader;->getDownLoadInfo()Lcom/mokee/helper/misc/DownLoadInfo;

    move-result-object v18

    .line 108
    .local v18, "loadInfo":Lcom/mokee/helper/misc/DownLoadInfo;
    if-eqz v18, :cond_0

    .line 110
    invoke-virtual {v2}, Lcom/mokee/helper/utils/DownLoader;->start()V

    .line 111
    sget-object v5, Lcom/mokee/helper/service/DownLoadService;->notifications:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/mokee/helper/utils/DownLoader;->getNotificationID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 112
    sget v6, Lcom/mokee/helper/service/DownLoadService;->notificationID:I

    const/16 v5, 0x400

    if-ne v15, v5, :cond_2

    const v5, 0x7f0a0008

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v15}, Lcom/mokee/helper/service/DownLoadService;->addNotification(III)V

    .line 114
    sget v5, Lcom/mokee/helper/service/DownLoadService;->notificationID:I

    invoke-virtual {v2, v5}, Lcom/mokee/helper/utils/DownLoader;->setNotificationID(I)V

    goto/16 :goto_0

    .line 112
    :cond_2
    const v5, 0x7f0a0009

    goto :goto_1

    .line 119
    .end local v18    # "loadInfo":Lcom/mokee/helper/misc/DownLoadInfo;
    :pswitch_2
    sget-object v5, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    check-cast v2, Lcom/mokee/helper/utils/DownLoader;

    .line 120
    .restart local v2    # "downloader":Lcom/mokee/helper/utils/DownLoader;
    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {v2}, Lcom/mokee/helper/utils/DownLoader;->pause()V

    .line 122
    sget-object v5, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v5, Lcom/mokee/helper/service/DownLoadService;->downloaders:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/mokee/helper/service/DownLoadService;->stopSelf()V

    .line 128
    :cond_3
    const-string v5, "downloader"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/mokee/helper/service/DownLoadService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/mokee/helper/service/DownLoadService;->mPrefs:Landroid/content/SharedPreferences;

    .line 129
    const/16 v5, 0x400

    if-ne v15, v5, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mokee/helper/service/DownLoadService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_id"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_md5"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_url"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 133
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mokee/helper/service/DownLoadService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_extras_id"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_extras_md5"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_extras_url"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
